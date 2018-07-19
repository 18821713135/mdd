package com.mdd.item.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mdd.common.utils.CookieUtils;
import com.mdd.common.utils.MddResult;
import com.mdd.pojo.TbUser;
import com.mdd.service.ItemService;
import com.mdd.sso.service.TokenService;

/**
 * 商品收藏Controller
 * 
 * @author CH
 *
 */
@Controller
public class WishlistController {

	@Value("${TOKEN}")
	private String TOKEN;

	@Value("${SSO_URL}")
	private String SSO_URL;

	@Value("${ITEM_URL}")
	private String ITEM_URL;

	@Autowired
	private TokenService tokenService;

	@Autowired
	private ItemService itemService;

	@RequestMapping("/item/wishlist")
	@ResponseBody
	public MddResult addToWishlist(HttpServletRequest request, Long id) {
		String redirect = ITEM_URL + "/item/" + id + ".html";
		// 从cookie中取token
		String token = CookieUtils.getCookieValue(request, TOKEN);
		// 判断token是否存在
		if (StringUtils.isBlank(token)) {
			// 如果token不存在，未登录状态，跳转到sso系统的登录页面。用户登录成功后，跳转到当前请求的url
			return MddResult.build(202, "页面跳转", SSO_URL + "/page/login?redirect=" + redirect);
		}
		// 如果token存在，需要调用sso系统的服务，根据token取用户信息
		MddResult tokenResult = tokenService.getUserInfoByToken(token);
		// 如果取不到，用户登录已经过期，需要登录。
		if (tokenResult.getStatus() != 200) {
			return MddResult.build(202, "页面跳转", SSO_URL + "/page/login?redirect=" + redirect);
		}
		// 如果已登录，收藏商品
		TbUser user = (TbUser) tokenResult.getData();
		MddResult result = itemService.addToWishlist(id, user.getId());

		return result;
	}

	/**
	 * 检查商品是否已经收藏
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/item/checkFav")
	@ResponseBody
	public MddResult checkFav(HttpServletRequest request, Long id) {
		// 从cookie中取token
		String token = CookieUtils.getCookieValue(request, TOKEN);
		// 判断token是否存在
		if (StringUtils.isBlank(token)) {
			return MddResult.build(201, "未登录！");
		}
		// 如果token存在，需要调用sso系统的服务，根据token取用户信息
		MddResult tokenResult = tokenService.getUserInfoByToken(token);
		// 如果取不到，用户登录已经过期，需要登录。
		if (tokenResult.getStatus() != 200) {
			return MddResult.build(201, "登录过期！");
		}
		// 如果已登录，检查商品是否收藏
		TbUser user = (TbUser) tokenResult.getData();
		MddResult result = itemService.checkFav(id, user.getId());

		return result;
	}
}
