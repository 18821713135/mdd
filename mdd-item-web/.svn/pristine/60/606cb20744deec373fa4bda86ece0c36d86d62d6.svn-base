package com.mdd.item.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.mdd.common.utils.CookieUtils;
import com.mdd.common.utils.MddResult;
import com.mdd.sso.service.TokenService;

/**
 * 用户登录拦截器，跨域问题没有解决，mdzz
 * 
 * @author CH
 *
 */
public class LoginInterceptor implements HandlerInterceptor {

	@Value("${TOKEN}")
	private String TOKEN;

	@Value("${SSO_URL}")
	private String SSO_URL;

	@Value("${ITEM_URL}")
	private String ITEM_URL;

	@Autowired
	private TokenService tokenService;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Long itemId = new Long(request.getParameter("id"));
		String redirect = ITEM_URL + "/item/" + itemId + ".html";

		// 解决跨域问题
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "*");
		response.setHeader("Access-Control-Max-Age", "3600");
		response.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");

		// 从cookie中取token
		String token = CookieUtils.getCookieValue(request, TOKEN);
		// 判断token是否存在
		if (StringUtils.isBlank(token)) {
			// 如果token不存在，未登录状态，跳转到sso系统的登录页面。用户登录成功后，跳转到当前请求的url
			response.sendRedirect(SSO_URL + "/page/login?redirect=" + redirect);
			// 拦截
			return false;
		}
		// 如果token存在，需要调用sso系统的服务，根据token取用户信息
		MddResult MddResult = tokenService.getUserInfoByToken(token);
		// 如果取不到，用户登录已经过期，需要登录。
		if (MddResult.getStatus() != 200) {
			// 如果token不存在，未登录状态，跳转到sso系统的登录页面。用户登录成功后，跳转到当前请求的url
			response.sendRedirect(SSO_URL + "/page/login?redirect=" + redirect);
			// 拦截
			return false;
		}

		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// handler执行之后，返回ModeAndView之前
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// 完成处理，返回ModelAndView之后。
		// 可以再此处理异常
	}
}
