package com.mdd.sso.service;

import com.mdd.common.utils.MddResult;

public interface TokenService {

	public MddResult getUserInfoByToken(String token);

	public void deleteUserInfoByToken(String token);
}
