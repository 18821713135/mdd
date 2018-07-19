package com.mdd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mdd.common.pojo.EasyUITreeNode;
import com.mdd.service.ItemCategoryService;

/**
 * 商品分类Controller
 * 
 * @author CH
 *
 */
@Controller
public class ItemCategoryController {

	@Autowired
	private ItemCategoryService itemCategoryService;

	@RequestMapping("/item/cat/list")
	@ResponseBody
	public List<EasyUITreeNode> getItemCategoryList(@RequestParam(value = "id", defaultValue = "0") Long parentId) {
		List<EasyUITreeNode> itemCategoryList = itemCategoryService.getItemCategoryList(parentId);
		return itemCategoryList;
	}
}
