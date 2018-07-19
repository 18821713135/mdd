<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="cache-control" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta name="format-detection" content="telephone=no" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta name="format-detection" content="telephone=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>我的订单-买多多商城</title>
	<!--结算页面样式-->
	<link rel="stylesheet" type="text/css" href="/css/jquery.alerts.css?v=20160713" />
	<link rel="stylesheet" type="text/css" href="/css/head.css?v=20160713" />
	<link rel="stylesheet" type="text/css" href="/css/order.css?v=20160713">
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link href="/css/city-picker.css" rel="stylesheet" type="text/css" />
	<link href="/images/small_logo.png" rel="shortcut icon" />
	<script type="text/javascript" src="/js/jquery-1.4.2.min.js?v=20160713"></script>
	<script type="text/javascript" src="/js/jquery.alerts.js?v=20160713"></script>
	<script type="text/javascript" src="/js/cart.js?v=20160713"></script>
	<script type="text/javascript" src="/js/cookie.js?v=20160416222"></script>
	<script type="text/javascript" src="/js/shadow.js?v=20160416"></script>
	<script src="/js/common.js?v=20160713" type="text/javascript"></script>
	<script src="/js/jquery.region.js?v=20160713" type="text/javascript"></script>
	<script src="/js/order.js?v=20160713" type="text/javascript"></script>
	<script src="/js/bootstrap.min.js"></script>

	<style>
		.black_overlay{
			display: none;
			position: absolute;
			top: 0%;
			left: 0%;
			width: 100%;
			height: 121%;
			background-color: white;
			z-index:1001;
			-moz-opacity: 0.8;
			opacity:.80;
			filter: alpha(opacity=88);
		}
		.white_content {
			display: none;
			position: absolute;
			top: 25%;
			left: 25%;
			width: 55%;
			height: 60%;
			padding: 20px;
			/* border: 1px solid #999; */
			background-color: white;
			z-index:1002;
			overflow: auto;
			box-shadow:0px 0px  10px 5px #aaa;
		}
		.white_content tr{height:75px; margin:0px;padding:10px 0px;}
		.white_content td{width:100px;padding-right: 10px;}
		.white_content input{border:1px solid #ddd;height:30px;}
		.xingxing {color:#e3101e;margin-right: 10px;font-weight:bold;text-align: center;}
		.orderCurr ul{float:left;width:1100px;}
		.orderCurr li{float:left;margin-left: 20px;max-width: 150px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;}
		.orderCurr a:hover{text-decoration: none;}
	</style>
</head>
<body id="mainframe">
	<jsp:include page="commons/header.jsp" />
	<div class="orderMain">
		<form id="orderForm" class="hide" action="/order/create.html" method="post">
			<input type="hidden" name="paymentType" value="2"/>
			<input type="hidden" name="postFee" value="10"/>
			<c:forEach items="${cartList }" var="cart" varStatus="status">
			<c:set var="totalPrice"  value="${ totalPrice + (cart.price * cart.num)}"/>
			<input type="hidden" name="orderItems[${status.index}].itemId" value="${cart.id}"/>
			<input type="hidden" name="orderItems[${status.index}].num" value="${cart.num }"/>
			<input type="hidden" name="orderItems[${status.index}].price" value="${cart.price}"/>
			<input type="hidden" name="orderItems[${status.index}].totalFee" value="${cart.price * cart.num}"/>
			<input type="hidden" name="orderItems[${status.index}].title" value="${cart.title}"/>
			<input type="hidden" name="orderItems[${status.index}].picPath" value="${cart.image}"/>
		</c:forEach>
		<input type="hidden" name="payment" value="<fmt:formatNumber groupingUsed="false" maxFractionDigits="2" minFractionDigits="2" value="${totalPrice/100 }"/>"/>
		<input type="hidden" name="orderShipping.receiverName" value="入云龙"/>
		<input type="hidden" name="orderShipping.receiverMobile" value="15800888888"/>
		<input type="hidden" name="orderShipping.receiverState" value="北京"/>
		<input type="hidden" name="orderShipping.receiverCity" value="北京"/>
		<input type="hidden" name="orderShipping.receiverDistrict" value="昌平区"/>
		<input type="hidden" name="orderShipping.receiverAddress" value="北京市昌平区北七家镇 修正大厦"/>
	</form>
	<h3 class="orderHd">填写并核对订单信息</h3>
	<div id="userAddrId" class="orderTbody ">
		<h3 class="orderTitle">收货人信息：<span class="addrAlter" style="display:inline;">
			<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">[&nbsp;新增&nbsp;]</a>
		</span></h3>

		<div id="light" class="white_content">
			<a style="float:right" href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
				<span class="glyphicon glyphicon-remove"></span></a>
				<form action="/order/address/save.html" method="post">
					<table style="margin:20px 30px;width:760px;">
						<tbody>
							<tr>
								<td align="right"><i class="xingxing">*</i>收货人：</td>
								<td colspan="4">
									<input type="hidden" name="orderId" value="">
									<input type="hidden" name="isDefault" value="false">
									<input type="text" name="receiverName" value="" required>
								</td>
							</tr>
							<tr>
								<td align="right"><i class="xingxing">*</i>所在地：</td>
								<td colspan="4" style="">
									<div class="docs-methods" style="width:500px;">
										<!-- <form class="form-inline"> -->
										<div id="distpicker">
											<div class="form-group" style="float:left;margin:0px;">
												<div style="position: relative; font-size:13px;float:left;width:240px;">
													<input style="font-size:15px;" id="city-picker3" class="form-control" readonly type="text" value="北京市/北京市/朝阳区" data-toggle="city-picker" name="receiverCity">
												</div>
											</div>
											<div class="form-group" style="float:left;margin:0px;">
												<button class="btn" id="reset" type="button" style="height:27px;line-height:15px;font-size:12px;margin-left:20px;">重置</button>
												<button class="btn btn-danger" id="destroy" type="button" style="height:26px;line-height:15px;font-size:12px;margin-left:10px;">确定</button>
											</div>
										</div>
										<!-- </form> -->
									</div>
								</td>
							</tr>
							<tr>
								<td align="right"><i class="xingxing">*</i>详细地址：</td>
								<td colspan="4">
									<input type="text" name="receiverAddress" value="" required>
								</td>
							</tr>
							<tr>
								<td align="right"><i class="xingxing">*</i>手机号码：</td>
								<td>
									<input type="text" name="receiverMobile" value="" required>
								</td>
								<td align="right">固定电话：</td>
								<td>
									<input type="text" name="receiverPhone" value="">
								</td>
							</tr>
							<tr>
								<td align="right"><i class="xingxing">*</i>邮政编码：</td>
								<td colspan="4">
									<input type="text" name="receiverZip" value="" style="float:left;" required>
									<p style="color:#999;float:left;margin:6px 20px;">方便您实时接收订单状态提醒</p>
								</td>
							</tr>
						</tbody>
					</table>
					<input class="sub" type="submit" value="保存收货地址信息" style="margin:0px 300px;width:190px;height:50px;font:bold 22px Microsoft YaHei;background:#e3101e;color:white;">
				</form>

			</div>
			<div id="fade" class="black_overlay"></div>
			<div class="orderItem">
				<div class="orderCurr" id="userAddress" >
					<!-- <ul>
						<li>入云龙</li>
						<li>北京市/昌平区/北七家镇15800888888</li>
						<li>详细地址昌平区修正大厦修正大厦</li>
						<li>155515514234</li>
						<li>22888</li>
						<li>770022</li>
						<li style="margin-left:10px;float:right;width:40px;"><a href="">[删除]</a></li>
						<li style="margin-left:10px;float:right;width:40px;">
							<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">[编辑]</a></li>
							<li style="float:right;width:140px;margin-left:10px;"><a href="">[设置为默认收货地址]</a></li>
						</ul> -->
						<c:forEach items="${addressList }" var="address" varStatus="status">
						<ul>
							<li>${address.receiverName}</li>
							<li>${address.receiverCity}</li>
							<li>${address.receiverAddress}</li>
							<li>${address.receiverMobile}</li>
							<li>${address.receiverPhone}</li>
							<li>${address.receiverZip}</li>
							<li style="margin-left:10px;float:right;width:40px;"><a href="/order/address/delete.html?id=${address.orderId}">[删除]</a></li>
							<li style="margin-left:10px;float:right;width:40px;">
								<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">[编辑]</a></li>
								<c:if test="${address.isDefault == true}">
								<li style="float:right;width:140px;margin-left:10px;"><a style="color:#e3101e;"href="">[默认收货地址]</a></li>
							</c:if>
							<c:if test="${address.isDefault == false}">
							<li style="float:right;width:140px;margin-left:10px;"><a href="/order/address/default.html?id=${address.orderId}">[设置为默认收货地址]</a></li>
						</c:if>
					</ul>
				</c:forEach>

						<!-- <ul>
							<li>入云龙</li>
							<li>北京市/昌平区/北七家镇15800888888</li>
							<li>详细地址昌平区修正大厦修正大厦</li>
							<li>155515514234</li>
							<li>2287</li>
							<li>770022</li>
							<li style="margin-left:10px;float:right;width:40px;"><a href="">[删除]</a></li>
							<li style="margin-left:10px;float:right;width:40px;">
								<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">[编辑]</a></li>
								<li style="float:right;width:140px;margin-left:10px;"><a href="">[设置为默认收货地址]</a></li>
							</ul> -->
						</div>
					</div>
				</div>
				<div id="payDataId" class="orderTbody">
					<h3 class="orderTitle">支付及配送方式：</h3>
					<div class="orderItem ">
						<div class="orderCurr" style="display: block;">
							<div class="payment" id="payshow">
								<a href="#" style="width:80px;height:30px;float:left;margin:5px;text-align:center;border:2px solid #e3101e;">在线支付</a>
								<a href="#" style="width:80px;height:30px;float:left;margin:5px;text-align:center;">货到付款</a>
							</div>
						</div>
					</div>
				</div>

				<div id="userInvoiceId" class="orderTbody" style="height:82px;">
					<a name="userInvoice"></a>
					<div class="orderTitle" style="margin:0;height:35px;">
						<div style="float:left;">发票信息：
							<span class="addrAlter" id="invoice_edit" onclick="invoice_edit()">[修改]</span>
						</div>
						<span></span><p style="width:1000px;float:left;font:normal 13px Microsoft YaHei;color:#999;margin:3.5px 10px;padding:0;">开企业抬头发票须填写纳税人识别号，以免影响报销</p>
					</div>
					<div class="orderItem" style="float:left;">
						<div class="orderCurr invMsg">
							<div id="p_inv_type" style="">暂不需要发票</div>
							<div id="p_inv_title"></div>
							<div id="p_inv_content"></div>      </div>
						</div>
					</div>
					<div class="orderTbody" style="width:1200px;border-bottom:0 none;">
						<div class="backToCart"><a style=" text-decoration:none;" target="" href="http://localhost:8090/cart/list.html">返回修改购物车</a></div>
						<h3 class="orderTitle">商品信息：</h3>
						<span class="clear"></span>
						<div class="orderPItem">
							<div id="producthtml">

								<div id="chaidanorder2" class="">
									<div class="orderItem">
										<div class="dateShow">
											<strong>商品下单后尽快为您发货</strong>
										</div>
										<div class="orderTbl">
											<div class="orderThead" style="text-align:center;">
												<div class="tCol">商品图片</div>
												<div class="tCol pGoods">商品名称</div>
												<div class="tCol pPrice">单价</div>
												<div class="tCol pInventory">库存状态</div>
												<div class="tCol pQuantity">数量</div>
												<div class="tCol pSubtotal">小计</div>
											</div>
											<c:forEach items="${cartList }" var="cart" varStatus="status">
											<div class="orderPInfo">
												<div class="pItem">
													<a href="http://localhost:8086/item/${cart.id}.html" target="_blank">
														<img src="${cart.image }" style="width: 60px;height: 60px;"/>
													</a>
												</div>
												<div class="pItem pGoods">
													<a href="http://localhost:8086/item/${cart.id}.html" target="_blank">${cart.title }</a>
												</div>
												<div class="pItem pPrice" style="width:140px;position: relative; z-index: 99">
													¥<fmt:formatNumber
													groupingUsed="false" maxFractionDigits="2"
													minFractionDigits="2" value="${cart.price / 100 }" />
												</div>
												<div class="pItem pInventory" pid="57111">现货</div>
												<div class="pItem pQuantity">${cart.num}</div>
												<div class="pItem pSubtotal" style="width:150px;">¥${cart.price / 100 * cart.num}</div>
												<span class="clear"></span>
											</div>
										</c:forEach>
										<div class="orderPInfo order_xj">
											<span class="sp1">运费小计：</span> <span class="sp2">¥10</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="orderItem" style="position:relative;padding-top:10px;">

						<div id="ordercoupon1" class="ordercoupon"><span id="ordercoupon"></span></div>
						<div class="order-info" style="z-index: -1;">
							<div class="orderWeight fl">商品总重量：0.72kg（含包装）</div>
							<div id="priceitems" class="priceitem">
								<dl class="fl">
									<dd>
										<div>1 件商品，总商品金额：</div><span class="priceArea">¥<span id="yingProce">
										<fmt:formatNumber value="${totalPrice / 100 }" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
									</span></span>
								</dd>
								<dd>
									<div>运费金额：</div><span class="priceArea">¥<span id="shopping_price">10</span></span>
								</dd>
								<dd>
									<div>应付总额：</div><span class="priceArea">¥<span id="allPrice">
									<fmt:formatNumber value="${totalPrice / 100 + 10}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
								</span></span>
							</dd>
						</dl>
					</div>
				</div>
			</div>
		</div>
		<div class="orderTFoot">
			<div id="orderSaveTip" class="ct"></div>
			<div class="submitOrder">
				<div class="orderSubmit">
					<input id="save" name="save" onclick="$('#orderForm').submit()" class="submitBtn" value="提交订单 " type="button"/>
				</div>
				<div class="orderAccount">
					<span class="t">应付总额：</span>
					<span class="p">¥</span>
					<span id="countPrice" class="p"><fmt:formatNumber value="${totalPrice / 100 + 10}" maxFractionDigits="2" minFractionDigits="2" groupingUsed="true"/>
					</span>
				</div>
				<span class="clear"></span>
			</div>
		</div>
	</div>
	<!-- /main -->
	<script src="/js/city-picker.data.js"></script>
	<script src="/js/city-picker.js"></script>
	<script src="/js/main.js"></script>
	<jsp:include page="commons/footer.jsp" />
</body>
</html>
