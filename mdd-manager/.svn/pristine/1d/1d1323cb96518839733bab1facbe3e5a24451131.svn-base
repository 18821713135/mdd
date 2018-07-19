package com.mdd.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mdd.common.jedis.JedisClient;
import com.mdd.common.pojo.EasyUITreeNode;
import com.mdd.common.utils.JsonUtils;
import com.mdd.mapper.TbItemCatMapper;
import com.mdd.pojo.TbItemCat;
import com.mdd.pojo.TbItemCatExample;
import com.mdd.pojo.TbItemCatExample.Criteria;
import com.mdd.service.ItemCategoryService;

/**
 * 商品分类Service
 * 
 * @author CH
 *
 */
@Service
public class ItemCategoryServiceImpl implements ItemCategoryService {

	@Autowired
	private TbItemCatMapper itemCatMapper;

	@Autowired
	private JedisClient jedisClient;

	@Value("${ITEM_CAT_PREFIX}")
	private String ITEM_CAT_PREFIX;

	@Value("${ITEM_EXPIRE}")
	private int ITEM_EXPIRE;

	@Override
	public List<EasyUITreeNode> getItemCategoryList(long parentId) {
		// 1、根据parentId查询节点列表
		TbItemCatExample example = new TbItemCatExample();
		// 设置查询条件
		Criteria criteria = example.createCriteria();
		criteria.andParentIdEqualTo(parentId);
		List<TbItemCat> list = itemCatMapper.selectByExample(example);
		// 2、转换成EasyUITreeNode列表。
		List<EasyUITreeNode> resultList = new ArrayList<EasyUITreeNode>();
		for (TbItemCat tbItemCat : list) {
			EasyUITreeNode treeNode = new EasyUITreeNode();
			treeNode.setId(tbItemCat.getId());
			treeNode.setText(tbItemCat.getName());
			treeNode.setState(tbItemCat.getIsParent() ? "closed" : "open");
			// 添加到列表
			resultList.add(treeNode);
		}
		// 3、返回。
		return resultList;
	}

	/**
	 * 根据id查询商品类目，该方法主要供前台调用，应该加上缓存
	 */
	@Override
	public TbItemCat getItemCategoryById(long id) {
		TbItemCat itemCat = null;
		// 先查缓存
		String json = jedisClient.get(ITEM_CAT_PREFIX + ":" + id);
		if (StringUtils.isNoneBlank(json)) {
			// 缓存中有
			itemCat = JsonUtils.jsonToPojo(json, TbItemCat.class);
			return itemCat;
		}
		// 缓存中没有，查询数据库
		itemCat = itemCatMapper.selectByPrimaryKey(id);
		// 将查询结果加入缓存
		if (itemCat != null) {
			json = JsonUtils.objectToJson(itemCat);
			jedisClient.set(ITEM_CAT_PREFIX + ":" + id, json);
			// 设置过期时间
			jedisClient.expire(ITEM_CAT_PREFIX + ":" + id, ITEM_EXPIRE);
		}

		return itemCat;
	}
}
