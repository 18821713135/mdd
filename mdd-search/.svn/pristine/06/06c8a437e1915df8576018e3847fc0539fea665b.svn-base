package com.mdd.search.listener;

import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.TextMessage;

import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;

import com.mdd.common.pojo.SearchItem;
import com.mdd.search.mapper.SearchItemMapper;

public class ItemMessageListener implements MessageListener {

	@Autowired
	private SearchItemMapper searchItemMapper;

	@Autowired
	private SolrServer solrServer;

	@Override
	public void onMessage(Message message) {
		try {
			TextMessage textMessage = (TextMessage) message;
			String[] text = textMessage.getText().split(":");
			String operation = text[0];
			Long itemId = new Long(text[1]);

			// 等待事务提交
			Thread.sleep(1000);
			// 添加、上架
			if ("addItem".equals(operation) || "reshelfItem".equals(operation)) {
				// 根据商品id查询商品信息
				SearchItem searchItem = searchItemMapper.getItemById(itemId);
				// 创建一个文档对象
				SolrInputDocument document = new SolrInputDocument();
				// 向文档对象中添加域
				document.addField("id", searchItem.getId());
				document.addField("item_title", searchItem.getTitle());
				document.addField("item_sell_point", searchItem.getSellPoint());
				document.addField("item_price", searchItem.getPrice());
				document.addField("item_image", searchItem.getImage());
				document.addField("item_category_name", searchItem.getCategoryName());
				// 把文档写入索引库
				solrServer.add(document);
				// 提交
				solrServer.commit();
			} else if ("updateItem".equals(operation)) {
				solrServer.deleteByQuery("id:" + itemId);
				solrServer.commit();

				// 根据商品id查询商品信息
				SearchItem searchItem = searchItemMapper.getItemById(itemId);
				// 创建一个文档对象
				SolrInputDocument document = new SolrInputDocument();
				// 向文档对象中添加域
				document.addField("id", searchItem.getId());
				document.addField("item_title", searchItem.getTitle());
				document.addField("item_sell_point", searchItem.getSellPoint());
				document.addField("item_price", searchItem.getPrice());
				document.addField("item_image", searchItem.getImage());
				document.addField("item_category_name", searchItem.getCategoryName());
				// 把文档写入索引库
				solrServer.add(document);
				// 提交
				solrServer.commit();
			} else if ("deleteItem".equals(operation) || "instockItem".equals(operation)) {
				// 删除、下架
				solrServer.deleteByQuery("id:" + itemId);
				solrServer.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}