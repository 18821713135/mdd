package com.mdd.service;

import java.util.List;

import com.mdd.common.pojo.EasyUIDataGridResult;
import com.mdd.common.utils.MddResult;
import com.mdd.pojo.TbItem;
import com.mdd.pojo.TbItemDesc;

public interface ItemService {
	
	public List<TbItem> getWishlistByUserId(Long userId);
	
	public MddResult checkFav(Long itemId, Long userId);
	
	public MddResult addToWishlist(Long itemId, Long userId);
	
	public List<TbItem> getItemListByCid(Long cid);

	public TbItem getItemById(Long id);

	public EasyUIDataGridResult getItemList(int page, int rows);

	public MddResult addItem(TbItem item, String desc);
	
	public MddResult updateItem(TbItem item, String desc);
	
	public MddResult getItemDesc(long id);
	
	public TbItemDesc getItemDescById(long id);
	
	public MddResult instockItems(long[] ids);
	
	public MddResult reshelfItems(long[] ids);
	
	public MddResult deleteItems(long[] ids);
}
