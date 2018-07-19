package com.mdd.item.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mdd.common.utils.CookieUtils;
import com.mdd.common.utils.MddResult;
import com.mdd.item.pojo.Item;
import com.mdd.pojo.TbItem;
import com.mdd.pojo.TbUser;
import com.mdd.service.ItemService;
import com.mdd.sso.service.TokenService;

/**
 * 收藏页面展示Controller
 * 
 * @author CH ·
 */
@Controller
public class PageController {

	@Autowired
	private ItemService itemService;

	@Autowired
	private TokenService tokenService;

	@Value("${TOKEN}")
	private String TOKEN;

	@Value("${SSO_URL}")
	private String SSO_URL;

	@Value("${ITEM_URL}")
	private String ITEM_URL;

	@RequestMapping("/page/collection")
	public String showCollectionPage(HttpServletRequest request, HttpServletResponse response, Model model) {
		String redirect = ITEM_URL + "/page/collection.html";
		// 从cookie中取token
		String token = CookieUtils.getCookieValue(request, TOKEN);
		// 判断token是否存在
		if (StringUtils.isBlank(token)) {
			// 如果token不存在，未登录状态，跳转到sso系统的登录页面。用户登录成功后，跳转到当前请求的url
			try {
				response.sendRedirect(SSO_URL + "/page/login?redirect=" + redirect);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// 如果token存在，需要调用sso系统的服务，根据token取用户信息
		MddResult tokenResult = tokenService.getUserInfoByToken(token);
		// 如果取不到，用户登录已经过期，需要登录。
		if (tokenResult.getStatus() != 200) {
			try {
				response.sendRedirect(SSO_URL + "/page/login?redirect=" + redirect);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// 如果已登录，返回收藏商品列表
		TbUser user = (TbUser) tokenResult.getData();
		List<TbItem> wishlist = itemService.getWishlistByUserId(user.getId());
		System.out.println("wishlist    " + wishlist.size());
		List<Item> wishlist2 = new ArrayList<>();
		for (TbItem item : wishlist) {
			wishlist2.add(new Item(item));
		}
		model.addAttribute("wishlist", wishlist2);
		return "collection";
	}
}
