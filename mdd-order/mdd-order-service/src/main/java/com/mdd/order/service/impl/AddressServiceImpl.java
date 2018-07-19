package com.mdd.order.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mdd.common.jedis.JedisClient;
import com.mdd.common.utils.JsonUtils;
import com.mdd.common.utils.MddResult;
import com.mdd.order.pojo.Address;
import com.mdd.order.service.AddressService;

/**
 * 地址管理服务
 * 
 * @author CH
 *
 */
@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private JedisClient jedisClient;

	@Value("${REDIS_ADDRESS_PREFIX}")
	private String REDIS_ADDRESS_PREFIX;

	@Value("${REDIS_ADDRESS_ID_PREFIX}")
	private String REDIS_ADDRESS_ID_PREFIX;

	@Override
	public MddResult saveAddress(Address address, Long userId) {
		// 新增地址
		if (StringUtils.isBlank(address.getOrderId())) {
			String id = jedisClient.incr(REDIS_ADDRESS_ID_PREFIX + ":" + userId).toString();
			// 使用订单id当地址id
			address.setOrderId(id);
			// true：是默认地址，false：不是默认地址
			address.setIsDefault(false);
			// 将地址信息加入缓存
			List<String> list = jedisClient.hvals(REDIS_ADDRESS_PREFIX + ":" + userId);
			if (list == null || list.size() < 1) {
				// 地址为空,将改地址设为默认地址
				address.setIsDefault(true);
			}
			jedisClient.hset(REDIS_ADDRESS_PREFIX + ":" + userId, id, JsonUtils.objectToJson(address));
		} else {
			// 更新地址
			jedisClient.hset(REDIS_ADDRESS_PREFIX + ":" + userId, address.getOrderId(),
					JsonUtils.objectToJson(address));
		}
		return MddResult.ok();
	}

	@Override
	public MddResult deleteAddressById(String id, Long userId) {
		jedisClient.hdel(REDIS_ADDRESS_PREFIX + ":" + userId, id);
		return MddResult.ok();
	}

	@Override
	public MddResult setDefault(String id, Long userId) {
		// 取消原来默认地址
		List<String> hvals = jedisClient.hvals(REDIS_ADDRESS_PREFIX + ":" + userId);
		for (String json : hvals) {
			Address address = JsonUtils.jsonToPojo(json, Address.class);
			if (address.getIsDefault()) {
				address.setIsDefault(false);
				jedisClient.hset(REDIS_ADDRESS_PREFIX + ":" + userId, address.getOrderId(),
						JsonUtils.objectToJson(address));
				break;
			}
		}
		// 设置新的默认地址
		String json = jedisClient.hget(REDIS_ADDRESS_PREFIX + ":" + userId, id);
		Address address = JsonUtils.jsonToPojo(json, Address.class);
		address.setIsDefault(true);
		jedisClient.hset(REDIS_ADDRESS_PREFIX + ":" + userId, id, JsonUtils.objectToJson(address));
		return MddResult.ok();
	}

	@Override
	public List<Address> getAddressListByUserId(Long userId) {
		List<String> hvals = jedisClient.hvals(REDIS_ADDRESS_PREFIX + ":" + userId);
		List<Address> list = new ArrayList<>();
		for (String json : hvals) {
			list.add(JsonUtils.jsonToPojo(json, Address.class));
		}
		return list;
	}
}
