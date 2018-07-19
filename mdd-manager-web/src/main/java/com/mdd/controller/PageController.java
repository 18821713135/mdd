package com.mdd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 页面跳转Controller
 * 
 * @author CH
 *
 */
@Controller
public class PageController {

	@RequestMapping("/")
	public String showIndex() {
		return "index";
	}

	/**
	 * <li data-options="attributes:{'url':'item-list'}">查询商品</li>
	 * 响应哪个界面就返回哪个页面，因为jsp文件名和url名称一样
	 * 
	 * @param page
	 * @return
	 */
	@RequestMapping("/{page}")
	public String showPage(@PathVariable String page) {
		return page;
	}
}
