package com.mdd.sso.controller;

import java.io.UnsupportedEncodingException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mdd.common.utils.CookieUtils;
import com.mdd.common.utils.MddResult;
import com.mdd.sso.service.LoginService;

/**
 * 登录处理Controller
 * 
 * @author CH
 *
 */
@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@Value("${TOKEN}")
	private String TOKEN;
	
	@Value("${ADMIN_TOKEN}")
	private String ADMIN_TOKEN;

	@Value("${IMAGE_CODE}")
	private String IMAGE_CODE;

	@RequestMapping("/page/admin/login")
	public String showAdminLoginPage() {
		return "adminLogin";
	}

	@RequestMapping("/user/admin/login")
	@ResponseBody
	public MddResult adminLogin(String username, String password, String code, HttpServletRequest request,
			HttpServletResponse response) {
		String value = CookieUtils.getCookieValue(request, IMAGE_CODE);
		if (StringUtils.isBlank(code) || !code.equals(value)) {
			return MddResult.build(201, "验证码错误!");
		}

		if ("admin".equals(username) && "admin".equals(password)) {
			String token = UUID.randomUUID().toString();
			CookieUtils.setCookie(request, response, ADMIN_TOKEN, token);
			return MddResult.ok();
		}

		return MddResult.build(201, "用户名或密码错误!");
	}

	@RequestMapping("/page/login")
	public String showLoginPage(String redirect, Model model) {
		try {
			if (StringUtils.isNoneBlank(redirect)) {
				model.addAttribute("redirect", new String(redirect.getBytes("iso-8859-1"), "utf-8"));
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "login";
	}

	@RequestMapping("/user/login")
	@ResponseBody
	public MddResult login(String username, String password, String code, HttpServletRequest request,
			HttpServletResponse response) {
		String value = CookieUtils.getCookieValue(request, IMAGE_CODE);
		if (StringUtils.isBlank(code) || !code.equals(value)) {
			return MddResult.build(201, "验证码错误!");
		}

		MddResult result = loginService.login(username, password);
		// 判断是否登录成功
		if (result.getStatus() == 200) {
			String token = result.getData().toString();
			// 如果登录成功需要把token写入cookie
			CookieUtils.setCookie(request, response, TOKEN, token);
		}
		return result;
	}
}