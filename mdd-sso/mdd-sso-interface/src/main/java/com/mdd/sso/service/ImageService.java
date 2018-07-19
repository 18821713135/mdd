package com.mdd.sso.service;

import com.mdd.common.utils.MddResult;

public interface ImageService {

	public void saveImageCode(Long userId, String code);

	public MddResult getImageCodeByUserId(Long userId);
}
