package com.mdd.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.mdd.common.utils.FastDFSClient;
import com.mdd.common.utils.JsonUtils;

/**
 * 图片上传Controller
 * 
 * @author CH
 *
 */
@Controller
public class ImageUploadController {

	@Value("${IMAGE_SERVER_URL}")
	private String IMAGE_SERVER_URL;

	/**
	 * KindEditor的图片上传插件，对浏览器兼容性不好。 使用@ResponseBody注解返回java对象，
	 * Content-Type:application/json;charset=UTF-8
	 * 
	 * 返回字符串时： Content-Type:text/plan;charset=UTF-8
	 * 
	 * @param uploadFile
	 * @return
	 */
	@RequestMapping(value = "/pic/upload", produces = MediaType.TEXT_PLAIN_VALUE + ";charset=utf-8")
	// 该注解的意思是直接响应浏览器，不走逻辑视图啦，如果返回值是对象的话，默认行为是转换为json再响应
	@ResponseBody
	public String imageUpload(MultipartFile uploadFile) {
		try {
			// 1、取文件的扩展名
			String originalFilename = uploadFile.getOriginalFilename();
			String extName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
			// 2、创建一个FastDFS的客户端
			FastDFSClient fastDFSClient = new FastDFSClient("classpath:conf/client.conf");
			// 3、执行上传处理
			String path = fastDFSClient.uploadFile(uploadFile.getBytes(), extName);
			// 4、拼接返回的url和ip地址，拼装成完整的url
			String url = IMAGE_SERVER_URL + path;
			// 5、返回map
			Map result = new HashMap<>();
			result.put("error", 0);
			result.put("url", url);
			// 转换为json字符串
			return JsonUtils.objectToJson(result);
		} catch (Exception e) {
			e.printStackTrace();
			// 5、返回map
			Map result = new HashMap<>();
			result.put("error", 1);
			result.put("message", "图片上传失败");
			return JsonUtils.objectToJson(result);
		}
	}
}
