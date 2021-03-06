<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta name="format-detection" content="telephone=no">
	<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<link href="/images/small_logo.png" rel="shortcut icon" />
	
	<link rel="stylesheet" type="text/css"
	href="/css/jquery.alerts.css?v=20160713" />
	<link rel="stylesheet" type="text/css"
	href="/css/head.css?v=20160713" />
	<link rel="stylesheet" type="text/css"
	href="/css/cart.css?v=20160630">
	<link rel="stylesheet" type="text/css"
	href="/css/common.css?v=201321222" />
	<script type="text/javascript"
	src="/js/jquery-1.4.2.min.js?v=20160713"></script>
	<script type="text/javascript"
	src="/js/jquery.price_format.2.0.min.js"></script>
	<script type="text/javascript"
	src="/js/jquery.alerts.js?v=20160713"></script>
	<script type="text/javascript" src="/js/cart.js?v=20160713"></script>
	<script type="text/javascript" src="/js/cookie.js?v=20160416222"></script>
	<script type="text/javascript" src="/js/shadow.js?v=20160416"></script>
	<script type="text/javascript" src="/js/common.js"></script>
	
	  <script type="text/javascript" src="/js/jquery.cookie.js"></script>
  <script type="text/javascript" src="/js/e3mall.js"></script>
	
	<style media="screen">
		.cart_pname a{color:#333;}
		.cart_pname a:hover{color:#e3101e;text-decoration: none;}
	</style>

	<title>我的购物车 - 买多多商城</title>
	<body>
		<jsp:include page="commons/header.jsp" />
		<div class="cartMain">
			<div class="cartHead">
				<h3 class="cartMy">我的购物车</h3>
				<div class="clear"></div>
			</div>
			<div class="cartMain">
				<div class="cartThead">
					<div class="tCol tCheckbox">
						<input checked="true" name="acart_list_check" id="Zall" onclick="allSelect()" type="checkbox"
						style="margin:0px 5px 1px 0px;"> 全选
					</div>
					<div class="tCol tGoods">商品</div>
					<div class="tCol tPrice">单价</div>
					<div class="tCol tQuantity">数量</div>
					<div class="tCol tSubtotal">小计</div>
					<div class="tCol tInventory">库存状态</div>
					<div class="tCol tOperator">操作</div>
				</div>
				<div class="cartTbody">

					<div class="cartList youxuan" id="all_putong">
						<div id="danjian">
							<div class="cartItem">
								<c:set var = "i" value="0" />
								<c:forEach items="${cartList}" var="cart">
								<c:set var="totalPrice"
								value="${ totalPrice + (cart.price * cart.num)}" />
								<div class="cartPInfo" id="danjian-0-229363">
									<div class="clearit">
										<div class="pItem pCheckbox">
											<input checked="true" name="cart_list" class="putong"
											onclick="selectThis(this)"
											value="danjian-0-229363" type="checkbox" />
										</div>
										<div class="pItem pGoods">
											<div class="cart_pimg">
												<a target="_blank" title="${cart.title }" href="http://localhost:8086/item/${cart.id }.html">
													<img src="${cart.image }" style="width: 60px; height: 60px;" />
												</a>
											</div>
											<div class="cart_pname">
												<div style="margin:0 0 0 75px;width:350;height:36px;overflow:hidden;">
													<a target="_blank" style="width:350;height:36px;overflow:hidden;"
													href="http://localhost:8086/item/${cart.id }.html">${cart.title }</a>
												</div>
											</div>
										</div>
										<div class="pItem pPrice" style="margin-top:10px;">
											<div style="position: relative;">
												<strong>¥
													<fmt:formatNumber
													groupingUsed="false" value="${cart.price / 100}"
													maxFractionDigits="2" minFractionDigits="2" />
												</strong>
											</div>
										</div>

										<div class="pItem pQuantity" style="margin-top:12px;">
											<div class="cartAmount">
												<a href="javascript:void(0);" class="cartCountBtn decrement">-</a>
												<input type="text" value="${cart.num }" class="amount itemnum" itemPrice="${cart.price}"
												itemId="${cart.id}" id="amountdanjian-0-229363" name="amount">
												<a href="javascript:void(0);" class="cartCountBtn increment">+</a>
											</div>
										</div>

										<div class="pItem pSubtotal" style="margin-top:10px;">
											<span class="totalprice" id="tp${i}">￥
												<fmt:formatNumber
												groupingUsed="true"
												value="${cart.price / 100 * cart.num}"
												maxFractionDigits="2" minFractionDigits="2" /></span>
											</div>


											<div class="pItem pInventory" style="margin-top:10px;">现货</div>
											<div class="pItem pOperator" style="margin-top:10px;">
												<a id="cartDel" href="/cart/delete/${cart.id}.html">删除</a>
											</div>
										</div>
									</div>
									<c:set var="i" value="${i+1}" />
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
				<div class="cartOrderCount" id="orderCount">
					<div class="cartButtons">
						<input type="button" value="删除选中的商品" style="width:130px;"
						onclick="javascript:cartDelMore();" class="cartclear">
						<input type="button" value="清空购物车"
						onclick="javascript:delAll('273fe391cb449af4');"
						class="cartclear">
					</div>
					<div class="cartTotalItem">
						<span id="all_shopePrice">（不含运费）</span>&nbsp;&nbsp;&nbsp;&nbsp;商品总计：
						<span class="cartPrice" id="allMoney2">￥
							<fmt:formatNumber
							value="${totalPrice / 100}" maxFractionDigits="2"
							minFractionDigits="2" groupingUsed="true" />
						</span>
					</div>
				</div>
				<div class="cartJsuan">
					<input
					onclick="javascript:document.location.href='http://localhost:8082'"
					class="goshop" value="继续购物" type="button"> <input
					onclick="javascript:document.location.href='http://localhost:8092/page/order.html'"
					class="jiesuan youxuan" value="去结算" type="button">
				</div>
			</div>
		</div>
		<!-- footer start -->
		<jsp:include page="commons/footer.jsp" />
		<!-- footer end -->
		</html>
