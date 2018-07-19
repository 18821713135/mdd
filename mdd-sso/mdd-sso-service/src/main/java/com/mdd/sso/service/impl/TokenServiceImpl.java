package com.mdd.sso.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mdd.common.jedis.JedisClient;
import com.mdd.common.utils.JsonUtils;
import com.mdd.common.utils.MddResult;
import com.mdd.pojo.TbUser;
import com.mdd.sso.service.TokenService;

/**
 * token处理Service
 * 
 * @author CH
 *
 */
@Service
public class TokenServiceImpl implements TokenService {

	@Autowired
	private JedisClient jedisClient;

	@Value("${SESSION_ID_PREFIX}")
	private String SESSION_ID_PREFIX;

	@Value("${SESSION_EXPIRE}")
	private int SESSION_EXPIRE;

	@Override
	public MddResult getUserInfoByToken(String token) {
		// 根据token到redis中取用户信息
		String json = jedisClient.get(SESSION_ID_PREFIX + ":" + token);
		// 取不到用户信息，登录已经过期，返回登录过期
		if (StringUtils.isBlank(json)) {
			return MddResult.build(201, "用户登录已经过期！");
		}
		// 取到用户信息更新token的过期时间
		jedisClient.expire(SESSION_ID_PREFIX + ":" + token, SESSION_EXPIRE);
		// 返回结果，MddResult其中包含TbUser对象
		TbUser user = JsonUtils.jsonToPojo(json, TbUser.class);
		return MddResult.ok(user);
	}

	/**
	 * 根据token删除登陆信息
	 */
	@Override
	public void deleteUserInfoByToken(String token) {
		String json = jedisClient.get(SESSION_ID_PREFIX + ":" + token);
		// 如果登录没有过期，在缓存中删除用户信息
		if (StringUtils.isNotBlank(json)) {
			jedisClient.del(SESSION_ID_PREFIX + ":" + token);
		}
	}
}
