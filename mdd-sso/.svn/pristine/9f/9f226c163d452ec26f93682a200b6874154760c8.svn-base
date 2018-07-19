package com.mdd.sso.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mdd.common.jedis.JedisClient;
import com.mdd.common.utils.MddResult;
import com.mdd.sso.service.ImageService;

/**
 * 图片验证码Service，没有什么用！！！
 * 
 * @author CH
 *
 */
@Service
public class ImageServiceImpl implements ImageService {

	@Autowired
	private JedisClient jedisClient;

	@Value("${IMAGE_CODE_PREFIX}")
	private String IMAGE_CODE_PREFIX;

	@Value("${IMAGE_CODE_EXPIRE}")
	private int IMAGE_CODE_EXPIRE;

	@Override
	public void saveImageCode(Long userId, String code) {
		// TODO Auto-generated method stub
		jedisClient.set(IMAGE_CODE_PREFIX + ":" + userId, code);
		jedisClient.expire(IMAGE_CODE_PREFIX + ":" + userId, IMAGE_CODE_EXPIRE);
	}

	@Override
	public MddResult getImageCodeByUserId(Long userId) {
		String code = jedisClient.get(IMAGE_CODE_PREFIX + ":" + userId);
		if (code != null) {
			return MddResult.ok(code);
		}
		return MddResult.build(201, "验证码错误！");
	}
}
