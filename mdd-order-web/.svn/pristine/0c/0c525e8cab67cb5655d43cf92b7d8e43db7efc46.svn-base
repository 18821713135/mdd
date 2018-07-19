package com.mdd.order.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mdd.order.pojo.Address;
import com.mdd.order.service.AddressService;
import com.mdd.pojo.TbUser;

/**
 * 地址管理Controller
 * 
 * @author CH
 *
 */
@Controller
public class AddressController {

	@Autowired
	private AddressService addressService;

	@Value("${USER}")
	private String USER;

	@RequestMapping(value = "/order/address/save", method = RequestMethod.POST)
	public String saveAddress(Address address, HttpServletRequest request) {
		TbUser user = (TbUser) request.getAttribute(USER);
		addressService.saveAddress(address, user.getId());
		return "redirect:/page/order.html";
	}

	@RequestMapping("/order/address/delete")
	public String deleteAddressById(String id, HttpServletRequest request) {
		TbUser user = (TbUser) request.getAttribute(USER);
		addressService.deleteAddressById(id, user.getId());
		return "redirect:/page/order.html";
	}

	@RequestMapping("/order/address/default")
	public String setDefaultAddressById(String id, HttpServletRequest request) {
		TbUser user = (TbUser) request.getAttribute(USER);
		addressService.setDefault(id, user.getId());
		return "redirect:/page/order.html";
	}
}
