package com.mdd.order.pojo;

import java.io.Serializable;

import com.mdd.pojo.TbOrderShipping;

/**
 * 收获地址信息
 * 
 * @author CH
 *
 */
public class Address extends TbOrderShipping implements Serializable {
	/**
	 * true:是默认地址 ;false：不是默认地址
	 */
	private boolean isDefault;

	public boolean getIsDefault() {
		return isDefault;
	}

	public void setIsDefault(boolean isDefault) {
		this.isDefault = isDefault;
	}
}