<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta name="format-detection" content="telephone=no">

<link href="/images/small_logo.png" rel="shortcut icon" />

<link rel="stylesheet" type="text/css" href="/css/head.css?v=20160713"/>
<link rel="stylesheet" type="text/css" href="/css/cart.css?v=20160630">
<link rel="stylesheet" type="text/css" href="/css/common.css?v=201321222" />

<script src="/js/jquery-1.4.2.min.js?v=20160713" type="text/javascript"></script>
 <script type="text/javascript" src="/js/cookie.js"></script>
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script type="text/javascript" src="/js/bootstrap.min.js"></script>

	  <script type="text/javascript" src="/js/jquery.cookie.js"></script>
  <script type="text/javascript" src="/js/e3mall.js"></script>

<title>商品已成功加入购物车</title>
<style media="screen">
	.cartItemContent a{color:#333;text-decoration: none;font-size: 13px;}
	.cartItemContent a:hover{color: #e6060e;text-decoration: none;}
</style>
</head>
<body style="background-color:#fafafa">
    <jsp:include page="commons/header1.jsp" />
    <jsp:include page="commons/mainmenu.jsp" />
	<!--main start-->
	<div class="cartMain">
		<div class="cartThead" style="padding: 10px 0px 10px 20px;height:150px ;width:1200px;">
			<span class="glyphicon glyphicon-ok" style="float:left;font-size:19px;color:#68b64c;margin:11.5px 10px 0 0;font-weight:100;"></span>
			<h3 class="cartMy" style="margin-top:10px;color:#68b64c;font-size:17px;height:35px;line-height:30px;">
				商品已经成功加入购物车！</h3>
				<div class="cartJsuan" style="width:350px;margin:85px 20px 0 0;float:right;">
					<input type="button" class="goshop" onclick="window.history.back();return false;" value="查看商品详情"/>
					<input type="button" class="jiesuan youxuan" onclick="location.href='http://localhost:8090/cart/list.html'" value="去购物车结算&ensp;>"/>
				</div>
				<div class="cartItem" style="width:700px;height:100px;margin:50px 0 0 0;padding:16px 10px 10px 10px;">
					<div class="cartItemImg" style="width:60px;height:60px;float:left;text-align:left;margin:0;">
						<a href="" onclick="window.history.back();return false;" title="${item.sellPoint}">
							<img src="${item.image}" alt="" style="width:60px;height:60px;" >
						</a>
					</div>
					<div class="cartItemContent" style="width:600px;height:56px;float:left;margin: 2px 5px 2px 10px;">
						<div style="overflow:hidden;height:23px;width:550px;line-height:20px;">
							<a href="" onclick="window.history.back();return false;">${item.title}</a>
						</div><br>
						<div style="overflow:hidden;height:23px;width:550px;color:#888;font-size:13px;margin-top:-15px;">数量：${item.num}</div>
					</div>
				</div>
            </div>

	</div>
	<jsp:include page="commons/footer.jsp" />
</body>
</html>
