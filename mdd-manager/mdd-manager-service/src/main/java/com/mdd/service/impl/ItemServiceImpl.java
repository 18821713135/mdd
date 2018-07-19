package com.mdd.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import javax.jms.TextMessage;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mdd.common.jedis.JedisClient;
import com.mdd.common.pojo.EasyUIDataGridResult;
import com.mdd.common.utils.MddResult;
import com.mdd.common.utils.IDUtils;
import com.mdd.common.utils.JsonUtils;
import com.mdd.mapper.TbItemDescMapper;
import com.mdd.mapper.TbItemMapper;
import com.mdd.pojo.TbItem;
import com.mdd.pojo.TbItemDesc;
import com.mdd.pojo.TbItemExample;
import com.mdd.pojo.TbItemExample.Criteria;
import com.mdd.service.ItemService;

/**
 * 商品管理Service
 * 
 * @author CH
 *
 */
@Service
public class ItemServiceImpl implements ItemService {

	@Autowired
	private TbItemMapper itemMapper;

	@Autowired
	private TbItemDescMapper itemDescMapper;

	@Autowired
	private JedisClient jedisClient;

	@Value("${ITEM_PREFIX}")
	private String ITEM_PREFIX;

	@Value("${ITEM_EXPIRE}")
	private int ITEM_EXPIRE;

	@Value("${SIM_ITEM_EXPIRE}")
	private String SIM_ITEM_EXPIRE;

	@Value("${WISHLIST_PREFIX}")
	private String WISHLIST_PREFIX;

	@Value("${WISHLIST_ITEMS_PREFIX}")
	private String WISHLIST_ITEMS_PREFIX;

	@Autowired
	private JmsTemplate jmsTemplate;

	@Autowired
	private Destination itemTopicDestination;

	/**
	 * 返回收藏商品列表
	 */
	public List<TbItem> getWishlistByUserId(Long userId) {
		String json = jedisClient.get(WISHLIST_PREFIX + ":" + userId);
		List<TbItem> list = new ArrayList<>();
		if (StringUtils.isNotBlank(json)) {
			// 收藏夹不为空
			List<Long> list2 = JsonUtils.jsonToList(json, Long.class);
			for (Long i : list2) {
				TbItem item = itemMapper.selectByPrimaryKey(i);
				list.add(item);
			}
			return list;
		}
		return list;
	}

	/**
	 * 检查商品是否已经收藏
	 */
	@Override
	public MddResult checkFav(Long itemId, Long userId) {
		String json = jedisClient.get(WISHLIST_PREFIX + ":" + userId);
		if (StringUtils.isNotBlank(json)) {
			// 收藏夹不为空
			List<Long> list = JsonUtils.jsonToList(json, Long.class);
			for (Long i : list) {
				// 已收藏
				if (i.longValue() == itemId) {
					return MddResult.build(200, "该商品已经收藏！");
				}
			}
			// 没有收藏
			return MddResult.build(201, "该商品没有收藏！");
		} else {
			return MddResult.build(201, "收藏夹为空！");
		}
	}

	/**
	 * 
	 * 收藏商品
	 */
	@Override
	public MddResult addToWishlist(Long itemId, Long userId) {
		List<Long> list = null;
		Boolean exists = jedisClient.exists(WISHLIST_PREFIX + ":" + userId);
		// 如果收藏夹存在
		if (exists) {
			String json = jedisClient.get(WISHLIST_PREFIX + ":" + userId);
			list = JsonUtils.jsonToList(json, Long.class);
			// 判断该商品是否已经在收藏夹中
			for (Long i : list) {
				if (i.longValue() == itemId) {
					// 如果商品已收藏，取消收藏
					list.remove(i);
					jedisClient.set(WISHLIST_PREFIX + ":" + userId, JsonUtils.objectToJson(list));
					return MddResult.build(201, "已取消收藏!");
				}
			}
			// 如果商品没有收藏，加入收藏夹
			list.add(itemId);
			jedisClient.set(WISHLIST_PREFIX + ":" + userId, JsonUtils.objectToJson(list));
			return MddResult.build(200, "商品收藏成功!");
		} else {
			// 收藏夹不存在,新建一个
			list = new ArrayList<>();
			list.add(itemId);
			jedisClient.set(WISHLIST_PREFIX + ":" + userId, JsonUtils.objectToJson(list));
			return MddResult.build(200, "商品收藏成功!");
		}
	}

	/**
	 * 通过类目id查数据 ,该方法主要被前台调用，应该加上缓存以减少数据库压力
	 */
	public List<TbItem> getItemListByCid(Long cid) {
		List<TbItem> list = null;
		String json = jedisClient.get(SIM_ITEM_EXPIRE + ":" + cid);
		if (StringUtils.isNotBlank(json)) {
			// 缓存中有
			list = JsonUtils.jsonToList(json, TbItem.class);
			return list;
		}
		// 缓存中没有，查询数据库
		TbItemExample example = new TbItemExample();
		Criteria criteria = example.createCriteria();
		criteria.andCidEqualTo(cid);
		list = itemMapper.selectByExample(example);
		if (list != null && list.size() > 10) {
			list = list.subList(0, 10);
		}
		// 加入缓存
		if (list != null && list.size() > 0) {
			json = JsonUtils.objectToJson(list);
			jedisClient.set(SIM_ITEM_EXPIRE + ":" + cid, json);
			// 设置过期时间
			jedisClient.expire(SIM_ITEM_EXPIRE + ":" + cid, ITEM_EXPIRE);
		}
		// 返回结果
		return list;
	}

	/**
	 * 该方法主要被前台调用，应该加上缓存以减少数据库压力
	 */
	public TbItem getItemById(Long id) {
		// 先在缓存中查询
		TbItem item = null;
		String json = jedisClient.get(ITEM_PREFIX + ":" + id + ":BASE");
		if (StringUtils.isNoneBlank(json)) {
			item = JsonUtils.jsonToPojo(json, TbItem.class);
			return item;
		}
		// 缓存中没有，再查数据库
		item = itemMapper.selectByPrimaryKey(id);
		// 将查到的数据加到缓存中
		if (item != null) {
			json = JsonUtils.objectToJson(item);
			jedisClient.set(ITEM_PREFIX + ":" + id + ":BASE", json);
			// 设置过期时间
			jedisClient.expire(ITEM_PREFIX + ":" + id + ":BASE", ITEM_EXPIRE);
		}

		return item;
	}

	/**
	 * 该方法主要被前台调用，应该加上缓存以减少数据库压力
	 */
	@Override
	public TbItemDesc getItemDescById(long id) {
		TbItemDesc itemDesc = null;
		String json = jedisClient.get(ITEM_PREFIX + ":" + id + ":DESC");
		if (StringUtils.isNoneBlank(json)) {
			itemDesc = JsonUtils.jsonToPojo(json, TbItemDesc.class);
			return itemDesc;
		}

		itemDesc = itemDescMapper.selectByPrimaryKey(id);

		if (itemDesc != null) {
			json = JsonUtils.objectToJson(itemDesc);
			jedisClient.set(ITEM_PREFIX + ":" + id + ":DESC", json);
			// 设置过期时间
			jedisClient.expire(ITEM_PREFIX + ":" + id + ":DESC", ITEM_EXPIRE);
		}

		return itemDesc;
	}

	@Override
	public EasyUIDataGridResult getItemList(int page, int rows) {
		// 设置分页信息
		PageHelper.startPage(page, rows);
		// 执行查询
		TbItemExample example = new TbItemExample();
		List<TbItem> list = itemMapper.selectByExample(example);
		// 取分页信息
		PageInfo<TbItem> pageInfo = new PageInfo<TbItem>(list);
		// 创建返回结果对象
		EasyUIDataGridResult result = new EasyUIDataGridResult();
		result.setTotal(pageInfo.getTotal());
		result.setRows(list);

		return result;
	}

	@Override
	public MddResult addItem(TbItem item, String desc) {
		// 1、生成商品id
		final long itemId = IDUtils.genItemId();
		item.setId(itemId);
		// 商品状态，1-正常，2-下架，3-删除
		item.setStatus((byte) 1);
		Date date = new Date();
		item.setCreated(date);
		item.setUpdated(date);
		itemMapper.insert(item);

		TbItemDesc itemDesc = new TbItemDesc();
		itemDesc.setItemId(itemId);
		itemDesc.setItemDesc(desc);
		itemDesc.setCreated(date);
		itemDesc.setUpdated(date);
		itemDescMapper.insert(itemDesc);

		// 发送商品添加消息
		jmsTemplate.send(itemTopicDestination, new MessageCreator() {

			@Override
			public Message createMessage(Session session) throws JMSException {
				TextMessage textMessage = session.createTextMessage("addItem:" + itemId);
				return textMessage;
			}
		});

		return MddResult.ok();
	}

	@Override
	public MddResult updateItem(TbItem item, String desc) {
		final Long itemId = item.getId();
		// 更新商品修改时间
		item.setUpdated(new Date());
		// 更新商品表
		itemMapper.updateByPrimaryKeySelective(item);

		TbItemDesc itemDesc = itemDescMapper.selectByPrimaryKey(item.getId());
		itemDesc.setItemDesc(desc);
		itemDesc.setUpdated(new Date());
		// 更新商品描述表
		itemDescMapper.updateByPrimaryKeySelective(itemDesc);

		// 发送商品修改消息
		jmsTemplate.send(itemTopicDestination, new MessageCreator() {

			@Override
			public Message createMessage(Session session) throws JMSException {
				TextMessage textMessage = session.createTextMessage("updateItem:" + itemId);
				return textMessage;
			}
		});

		return MddResult.ok();
	}

	@Override
	public MddResult getItemDesc(long id) {
		TbItemDesc itemDesc = itemDescMapper.selectByPrimaryKey(id);
		return MddResult.ok(itemDesc);
	}

	/**
	 * 商品下架
	 */
	@Override
	public MddResult instockItems(long[] ids) {
		// 商品状态，1-正常，2-下架，3-删除
		for (long id : ids) {
			TbItem item = itemMapper.selectByPrimaryKey(id);
			if (item.getStatus() != 2) {
				item.setStatus((byte) 2);
				item.setUpdated(new Date());
				itemMapper.updateByPrimaryKeySelective(item);

				final Long itemId = id;
				// 发送商品下架消息
				jmsTemplate.send(itemTopicDestination, new MessageCreator() {

					@Override
					public Message createMessage(Session session) throws JMSException {
						TextMessage textMessage = session.createTextMessage("instockItem:" + itemId);
						return textMessage;
					}
				});
			}
		}

		return MddResult.ok();
	}

	/**
	 * 商品上架
	 */
	@Override
	public MddResult reshelfItems(long[] ids) {
		// 商品状态，1-正常，2-下架，3-删除
		for (long id : ids) {
			TbItem item = itemMapper.selectByPrimaryKey(id);
			if (item.getStatus() != 1) {
				item.setStatus((byte) 1);
				item.setUpdated(new Date());
				itemMapper.updateByPrimaryKeySelective(item);

				final Long itemId = id;
				// 发送商品上架消息
				jmsTemplate.send(itemTopicDestination, new MessageCreator() {

					@Override
					public Message createMessage(Session session) throws JMSException {
						TextMessage textMessage = session.createTextMessage("reshelfItem:" + itemId);
						return textMessage;
					}
				});
			}
		}

		return MddResult.ok();
	}

	@Override
	public MddResult deleteItems(long[] ids) {
		for (long id : ids) {
			itemMapper.deleteByPrimaryKey(id);
			itemDescMapper.deleteByPrimaryKey(id);

			final Long itemId = id;
			// 发送删除商品消息
			jmsTemplate.send(itemTopicDestination, new MessageCreator() {

				@Override
				public Message createMessage(Session session) throws JMSException {
					TextMessage textMessage = session.createTextMessage("deleteItem:" + itemId);
					return textMessage;
				}
			});
		}
		return MddResult.ok();
	}
}
