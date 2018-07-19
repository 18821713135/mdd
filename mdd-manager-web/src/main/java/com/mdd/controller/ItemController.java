package com.mdd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mdd.common.pojo.EasyUIDataGridResult;
import com.mdd.common.utils.MddResult;
import com.mdd.pojo.TbItem;
import com.mdd.search.service.SearchService;
import com.mdd.service.ItemService;

/**
 * 商品管理Controller
 * 
 * @author CH
 *
 */
@Controller
public class ItemController {

	@Autowired
	private ItemService itemService;
	
	@Autowired
	private SearchService searchService;

	@RequestMapping("/item/{itemId}")
	@ResponseBody
	public TbItem getItemById(@PathVariable("itemId") Long id) {
		TbItem item = itemService.getItemById(id);
		return item;
	}

	@RequestMapping("/item/list")
	@ResponseBody
	public EasyUIDataGridResult getItemList(Integer page, Integer rows) {
		EasyUIDataGridResult itemList = itemService.getItemList(page, rows);
		return itemList;
	}

	@RequestMapping("/item/save")
	@ResponseBody
	public MddResult addItem(TbItem item, String desc) {
		MddResult result = itemService.addItem(item, desc);
		return result;
	}

	@RequestMapping("/item/update")
	@ResponseBody
	public MddResult updateItem(TbItem item, String desc) {
		MddResult result = itemService.updateItem(item, desc);
		return result;
	}

	@RequestMapping("/item/desc/{id}")
	@ResponseBody
	public MddResult getItemDesc(@PathVariable("id") long itemId) {
		MddResult result = itemService.getItemDesc(itemId);
		return result;
	}

	/**
	 * 商品下架
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping("/item/instock")
	@ResponseBody
	public MddResult instockItems(long[] ids) {
		MddResult result = itemService.instockItems(ids);
		return result;
	}

	/**
	 * 商品上架
	 * 
	 * @param ids
	 * @return
	 */
	@RequestMapping("/item/reshelf")
	@ResponseBody
	public MddResult reshelfItems(long[] ids) {
		MddResult result = itemService.reshelfItems(ids);
		return result;
	}

	@RequestMapping("/item/delete")
	@ResponseBody
	public MddResult deleteItems(long[] ids) {
		MddResult result = itemService.deleteItems(ids);
		return result;
	}
	
	/**
	 * 一键导入索引库
	 * @return
	 */
	@RequestMapping("/item/import")
	@ResponseBody
	public MddResult importAllItems() {
		MddResult result = searchService.importAllItems();
		return result;
	}
}
