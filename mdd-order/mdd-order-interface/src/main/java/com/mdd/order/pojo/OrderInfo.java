package com.mdd.order.pojo;

import java.io.Serializable;
import java.util.List;

import com.mdd.pojo.TbOrder;
import com.mdd.pojo.TbOrderItem;
import com.mdd.pojo.TbOrderShipping;

/**
 * 订单信息
 * 
 * @author CH
 *
 */
public class OrderInfo extends TbOrder implements Serializable {
	// 订单细则列表
	private List<TbOrderItem> orderItems;
	// 订单物流
	private TbOrderShipping orderShipping;

	public List<TbOrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<TbOrderItem> orderItems) {
		this.orderItems = orderItems;
	}

	public TbOrderShipping getOrderShipping() {
		return orderShipping;
	}

	public void setOrderShipping(TbOrderShipping orderShipping) {
		this.orderShipping = orderShipping;
	}
}
