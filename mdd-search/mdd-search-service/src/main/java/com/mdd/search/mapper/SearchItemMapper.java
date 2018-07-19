package com.mdd.search.mapper;

import java.util.List;

import com.mdd.common.pojo.SearchItem;

/**
 * 查询搜索结果的mapper
 * 
 * @author CH
 *
 */
public interface SearchItemMapper {
	
	public List<SearchItem> selectAllSearchItems();

	public SearchItem getItemById(Long itemId);
}
