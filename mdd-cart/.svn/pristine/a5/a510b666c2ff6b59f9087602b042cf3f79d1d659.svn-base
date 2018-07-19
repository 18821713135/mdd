package com.mdd.cart.service;

import java.util.List;

import com.mdd.common.utils.MddResult;
import com.mdd.pojo.TbItem;

public interface CartService {

	public MddResult addCart(long userId, long itemId, int num);

	public MddResult mergeCart(long userId, List<TbItem> itemList);

	public List<TbItem> getCartList(long userId);

	public MddResult updateCartNum(long userId, long itemId, int num);

	public MddResult deleteCartItem(long userId, long itemId);

	public MddResult clearCartItem(long userId);
}
