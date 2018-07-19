package com.mdd.item.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mdd.item.pojo.Item;
import com.mdd.pojo.TbItem;
import com.mdd.pojo.TbItemCat;
import com.mdd.pojo.TbItemDesc;
import com.mdd.service.ItemCategoryService;
import com.mdd.service.ItemService;

/**
 * 商品详情Controller
 * 
 * @author CH
 *
 */
@Controller
public class ItemDetailController {

	@Autowired
	private ItemService itemService;

	@Autowired
	private ItemCategoryService itemCategoryService;

	@RequestMapping("item/{id}")
	public String getItemDetailById(@PathVariable long id, Model model) {
		TbItem item = itemService.getItemById(id);
		Item item2 = new Item(item);
		TbItemDesc itemDesc = itemService.getItemDescById(id);
		model.addAttribute("item", item2);
		model.addAttribute("itemDesc", itemDesc);
		// 查询相似商品
		List<TbItem> itemList = itemService.getItemListByCid(item.getCid());
		List<Item> itemList2 = new ArrayList<>();
		for (TbItem item3 : itemList) {
			itemList2.add(new Item(item3));
		}
		// 将结果传到页面
		model.addAttribute("itemList", itemList2);
		// 查询类目
		TbItemCat itemCat = itemCategoryService.getItemCategoryById(item.getCid());
		model.addAttribute("category", itemCat.getName());
		return "item";
	}
}
