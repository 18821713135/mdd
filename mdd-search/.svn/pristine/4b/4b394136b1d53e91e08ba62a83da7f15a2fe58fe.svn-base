package com.mdd.search.service.impl;

import java.util.List;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.common.SolrInputDocument;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mdd.common.pojo.SearchItem;
import com.mdd.common.pojo.SearchResult;
import com.mdd.common.utils.MddResult;
import com.mdd.search.dao.SearchItemDao;
import com.mdd.search.mapper.SearchItemMapper;
import com.mdd.search.service.SearchService;

/**
 * 商品搜索服务
 * 
 * @author CH
 *
 */
@Service
public class SearchServiceImpl implements SearchService {

	@Autowired
	private SearchItemMapper searchItemMapper;

	@Autowired
	private SolrServer solrServer;

	@Autowired
	private SearchItemDao searchItemDao;

	@Override
	public MddResult importAllItems() {
		try {
			List<SearchItem> list = searchItemMapper.selectAllSearchItems();
			for (SearchItem item : list) {
				SolrInputDocument document = new SolrInputDocument();
				document.addField("id", item.getId());
				document.addField("item_title", item.getTitle());
				document.addField("item_sell_point", item.getSellPoint());
				document.addField("item_price", item.getPrice());
				document.addField("item_image", item.getImage());
				document.addField("item_category_name", item.getCategoryName());
				solrServer.add(document);
			}
			solrServer.commit();
			return MddResult.ok();
		} catch (Exception e) {
			e.printStackTrace();
			return MddResult.build(500, "数据导入索引库时发生异常!");
		}
	}

	@Override
	public SearchResult search(String keyword, int page, int rows) throws Exception {
		// 创建一个SolrQuery对象
		SolrQuery query = new SolrQuery();
		// 设置查询条件
		query.setQuery(keyword);
		// 设置分页条件
		if (page <= 0)
			page = 1;
		query.setStart((page - 1) * rows);
		query.setRows(rows);
		// 设置默认搜索域
		query.set("df", "item_title");
		// 开启高亮显示
		query.setHighlight(true);
		query.addHighlightField("item_title");
		query.setHighlightSimplePre("<em style=\"color:red\">");
		query.setHighlightSimplePost("</em>");
		// 调用dao执行查询
		SearchResult searchResult = searchItemDao.search(query);
		// 计算总页数
		long recordCount = searchResult.getRecordCount();
		int totalPage = (int) (recordCount / rows);
		if (recordCount % rows > 0)
			totalPage++;
		// 添加到返回结果
		searchResult.setTotalPages(totalPage);
		// 返回结果
		return searchResult;
	}
}
