package com.mdd.order.service;

import java.util.List;

import com.mdd.common.utils.MddResult;
import com.mdd.order.pojo.Address;

public interface AddressService {

	public MddResult saveAddress(Address address, Long userId);

	public MddResult deleteAddressById(String id, Long userId);

	public MddResult setDefault(String id, Long userId);

	public List<Address> getAddressListByUserId(Long userId);
}