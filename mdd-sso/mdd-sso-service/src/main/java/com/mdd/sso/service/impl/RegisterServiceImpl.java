package com.mdd.sso.service.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import com.mdd.common.utils.MddResult;
import com.mdd.mapper.TbUserMapper;
import com.mdd.pojo.TbUser;
import com.mdd.pojo.TbUserExample;
import com.mdd.pojo.TbUserExample.Criteria;
import com.mdd.sso.service.RegisterService;

/**
 * 注册处理Service
 * 
 * @author CH
 *
 */
@Service
public class RegisterServiceImpl implements RegisterService {
    
	@Autowired
	private TbUserMapper userMapper;

	@Override
	public MddResult check(String param, int type) {
		TbUserExample example = new TbUserExample();
		Criteria criteria = example.createCriteria();
		// type=1:用户名，type=2:电话
		if (type == 1) {
			criteria.andUsernameEqualTo(param);
		} else if (type == 2) {
			criteria.andPhoneEqualTo(param);
		} else {
			return MddResult.build(400, "请求参数有误!");
		}
		List<TbUser> list = userMapper.selectByExample(example);
		if (list != null && list.size() > 0) {
			return new MddResult(false);
		}
		// 没有查到的话，说明可以注册，返回true
		return new MddResult(true);
	}

	@Override
	public MddResult register(TbUser user) {
		String username = user.getUsername();
		String password = user.getPassword();
		String phone = user.getPhone();
		if (StringUtils.isBlank(username) || StringUtils.isBlank(password) || StringUtils.isBlank(phone)) {
			return MddResult.build(400, "请求参数有误!");
		}
		
		MddResult result = check(username, 1);
		if(!(boolean)result.getData()) {
			return MddResult.build(400,	 "该用户名已经被注册！");
		}
		
		result = check(phone, 2);
		if(!(boolean)result.getData()) {
			return MddResult.build(400,	 "该手机号已经被注册！");
		}
		
		//md5加密
		password = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
		user.setPassword(password);
		user.setCreated(new Date());
		user.setUpdated(new Date());
       
		userMapper.insert(user);
		
		return MddResult.ok();
	}
}
