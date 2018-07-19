package com.mdd.sso.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mdd.common.utils.CookieUtils;
import com.mdd.common.utils.ImageUtils;

/**
 * 图片验证码Controller
 * 
 * @author CH
 *
 */
@Controller
public class ImageController {

	@Value("${IMAGE_CODE}")
	private String IMAGE_CODE;

	@RequestMapping("/user/login/code")
	public void createImage(HttpServletRequest request, HttpServletResponse response) {
		try {
			Map<String, BufferedImage> map = ImageUtils.createImage();
			String code = map.keySet().iterator().next();
			CookieUtils.setCookie(request, response, IMAGE_CODE, code);
			// System.out.println(code);
			// session.setAttribute("code",code);
			// 调用工具类产生BufferedImage图片
			// 用ImageIO.write()将图片写出到网页中
			OutputStream os = response.getOutputStream();
			BufferedImage img = map.get(code);
			response.setContentType("image/jpeg");
			ImageIO.write(img, "jpeg", os);
			os.flush();
			os.close();// os.flush()强制清空输出流中的内容
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
