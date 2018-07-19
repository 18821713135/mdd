package com.mdd.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mdd.cart.service.CartService;
import com.mdd.common.utils.MddResult;
import com.mdd.order.pojo.Address;
import com.mdd.order.pojo.OrderInfo;
import com.mdd.order.service.AddressService;
import com.mdd.order.service.OrderService;
import com.mdd.pojo.TbItem;
import com.mdd.pojo.TbUser;

/**
 * 订单处理Controller
 * 
 * @author CH
 *
 */
@Controller
public class OrderController {

	@Autowired
	private CartService cartService;

	@Autowired
	private OrderService orderService;

	@Autowired
	private AddressService addressService;

	@Value("${USER}")
	private String USER;

	@RequestMapping("/page/order")
	public String showOrderCart(HttpServletRequest request) {
		TbUser user = (TbUser) request.getAttribute(USER);
		List<TbItem> cartList = cartService.getCartList(user.getId());
		request.setAttribute("cartList", cartList);
		List<Address> addressList = addressService.getAddressListByUserId(user.getId());
		request.setAttribute("addressList", addressList);
		return "order-cart";
	}

	@RequestMapping(value = "/order/create", method = RequestMethod.POST)
	public String createOrder(OrderInfo orderInfo, HttpServletRequest request) {
		// 取用户信息
		TbUser user = (TbUser) request.getAttribute(USER);
		// 把用户信息添加到orderInfo中。
		orderInfo.setUserId(user.getId());
		orderInfo.setBuyerNick(user.getUsername());
		// 调用服务生成订单
		MddResult result = orderService.createOrder(orderInfo);
		// 如果订单生成成功，需要删除购物车
		if (result.getStatus() == 200) {
			// 清空购物车
			cartService.clearCartItem(user.getId());
		}
		// 把订单号传递给页面
		request.setAttribute("orderId", result.getData());
		request.setAttribute("payment", orderInfo.getPayment());
		// 返回逻辑视图
		return "success";
	}
}
