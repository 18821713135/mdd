<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="Cache-Control" content="no-transform">
	<meta http-equiv="Cache-Control" content="no-siteapp">
	<link rel="stylesheet" type="text/css" href="/css/base_w1200.css?v=20160713">
	<link rel="stylesheet" href="/css/bootstrap.min.css"/>
	<link href="/images/small_logo.png" rel="shortcut icon" />
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/jquery.cookie.js"></script> 
	<script type="text/javascript" src="/js/e3mall.js"></script>
	<style media="screen">
		.hovereffect {
			width: 160px;
			height: 160px;
			float: left;
			overflow: hidden;
			position: relative;
			text-align: center;
			cursor: default;
			margin:20px 40px;
		}
		.hovereffect .overlay {
			width: 120px;
			position: absolute;
			overflow: hidden;
			left: 0;
			top: auto;
			bottom: 0;
			padding: 1em;
			height: 60px;
			background: #ddd;
			color: #3c4a50;
			-webkit-transition: -webkit-transform 0.35s;
			transition: transform 0.35s;
			-webkit-transform: translate3d(0,100%,0);
			transform: translate3d(0,100%,0);
			visibility: hidden;
		}

		.hovereffect img {
			display: block;
			position: relative;
			-webkit-transition: -webkit-transform 0.35s;
			transition: transform 0.35s;
		}

		.hovereffect:hover img {
			-webkit-transform: translate3d(0,-10%,0);
			transform: translate3d(0,-10%,0);
		}

		.hovereffect  a {
			text-transform: uppercase;
			color: #fff;
			text-align: center;
			position: relative;
			font-size: 17px;
			padding: 10px;
			background: rgba(0, 0, 0, 0.6);
			float: left;
			margin: 0px;
			display: inline-block;
		}

		.hovereffect a.info {
			display: inline-block;
			text-decoration: none;
			padding: 7px 14px;
			text-transform: uppercase;
			color: #fff;
			border: 1px solid #fff;
			margin: 50px 0 0 0;
			background-color: transparent;
		}
		.hovereffect a.info:hover {
			box-shadow: 0 0 5px #fff;
		}


		.hovereffect p.icon-links a {
			float: right;
			color: #3c4a50;
			font-size: 1.4em;
		}

		.hovereffect:hover p.icon-links a:hover,
		.hovereffect:hover p.icon-links a:focus {
			color: #252d31;
		}

		.hovereffect  a,
		.hovereffect p.icon-links a {
			-webkit-transition: -webkit-transform 0.35s;
			transition: transform 0.35s;
			-webkit-transform: translate3d(0,200%,0);
			transform: translate3d(0,200%,0);
			visibility: visible;
		}

		.hovereffect p.icon-links a span:before {
			display: inline-block;
			padding: 8px 10px;
			speak: none;
			-webkit-font-smoothing: antialiased;
			-moz-osx-font-smoothing: grayscale;
		}


		.hovereffect:hover .overlay,
		.hovereffect:hover a,
		.hovereffect:hover p.icon-links a {
			-webkit-transform: translate3d(0,0,0);
			transform: translate3d(0,0,0);
		}

		.hovereffect:hover a {
			-webkit-transition-delay: 0.05s;
			transition-delay: 0.05s;
			text-decoration: none;
		}

		.hovereffect:hover p.icon-links a:nth-child(3) {
			-webkit-transition-delay: 0.1s;
			transition-delay: 0.1s;
		}

		.hovereffect:hover p.icon-links a:nth-child(2) {
			-webkit-transition-delay: 0.15s;
			transition-delay: 0.15s;
		}

		.hovereffect:hover p.icon-links a:first-child {
			-webkit-transition-delay: 0.2s;
			transition-delay: 0.2s;
		}
	</style>
	<style media="screen">
		.container {border-top: 1px solid #ccc;}
		.sub {width:100px;float:left;font-size:12px;font-family: Microsoft Yahei}
		.sub dt{margin: 15px 0 4px 0;}
		.sub dd{line-height:24px;}
		.sub dd a {color:#777;text-decoration: none;}
		.sub dd a:hover{color:#e3101e;}
		.conten {float:left;}
		.content_top {width:1040px;float:left;}
		.content_top_left {font-weight:bold;margin:20px;float:left;font-size:16px;color:#e3101e;line-height:20px;height:25px;border-bottom:3px solid #e3101e;}
		.content_top_right {margin:20px;float:right;}
		.content_top_right a{color:#666;float:right;text-align:center;border:1px solid #ccc;font-size:12px;padding:2px 10px;margin-left: 10px;border-radius: 2px;background: #f7f7f7}
		.content_top_right a:hover{color:#666;text-decoration: none;}
		.content_top_right input{float:right;width:100px;color:#666;border: 1px solid #bbb;}
		.content_center_top ul{float:left;height:30px;font-size: 12px;color:#666;}
		#li_first {width:63px;height:25px;text-align: center;color:#fff;background-color: #e3101e;padding:5px 0px;float:left;margin: 0px 20px;}
		.content_center_top ul li{float:left;width:60px;height:30px;margin-right:10px;padding-top:5px;}

		.content_center_main ul{float:left;width:1040px;padding:3px;}
		.content_center_main ul li{float:left;width:240px;height:320px;margin: 0 18px 20px 0;border:1px solid #eee;}
		.overlay a{font-size: 13px;margin:5px 10px ;padding:3px;}
		.overlay a:hover{color:#fff;}
		.content_title {float:left;margin:0px 10px;height:20px;overflow: hidden;text-overflow: ellipsis;}
		.content_title a{font:normal 12px Microsoft YaHei;text-decoration: none;color:#999;line-height:20px;}
		.content_title a:hover{color:#e3101e;}
		.content_price {float:left;margin:5px 0px;width:240px;text-align: center;font-weight:bold;font-size:17px;}
		.content_like{float:left;width:200px;height:30px;text-align: left;margin:0px 20px;font-size:13px;}
		.content_like a{color:#ab25dd;text-decoration: none;}
		.content_like a:hover{color:#ab25dd;text-decoration: none;}
		#circle {border-radius: 50%;background-color: #ab25dd;color:#fff;padding:5px 6px;}
		.content_bottom {float:left;width:238px;height:34px;background-color: #eee;border-bottom:1px solid #ddd;}
		.content_bottom a{color:#999;text-decoration: none;}
		.content_bottom a:hover{color:#E3101e;text-decoration: none;}
		.cart p{padding:0px;margin-bottom:0px;line-height:18px;float:left}
		.cart{float:left;width:119px;padding:8px 10px 4px 10px;border-right: 1px solid #ddd;}
		.price_down p{padding:0px;margin-bottom:0px;line-height:18px;float:left}
		.price_down{float:left;width:119px;padding:8px 10px 4px 10px;}
		.cart .glyphicon{float:left;margin-left:5px;line-height:15px;}
		.price_down .glyphicon{float:left;margin-left:5px;line-height:17px;}
	</style>
	<title>我的收藏-买多多商城</title>
</head>
<body style="background-color: white;">
	<jsp:include page="commons/header.jsp"/>
	<div class="container">
		<div class="sub">
			<div class="menu">
				<dt>订单中心</dt>
				<dd><a href="#">我的订单</a></dd>
				<dd><a href="#">我的活动</a></dd>
				<dd><a href="#">评价晒单</a></dd>
				<dd><a href="#">我的常购商品</a></dd>
				<dd><a href="#">购物助手</a></dd>
				<dt>收藏中心</dt>
				<dd><a href="#">收藏的商品</a></dd>
				<dd><a href="#">收藏的店铺</a></dd>
				<dd><a href="#">收藏的专辑</a></dd>
				<dd><a href="#">关注的活动</a></dd>
				<dt>客户服务</dt>
				<dd><a href="#">返修退换货</a></dd>
				<dd><a href="#">价格保护</a></dd>
				<dd><a href="#">意见建议</a></dd>
				<dd><a href="#">我的问答</a></dd>
				<dd><a href="#">购买咨询</a></dd>
				<dd><a href="#">交易纠纷</a></dd>
				<dd><a href="#">上门维修</a></dd>
				<dd><a href="#">我的发票</a></dd>
				<dd><a href="#">举报中心</a></dd>
				<dt>设置</dt>
				<dd><a href="#">个人信息</a></dd>
				<dd><a href="#">收货地址</a></dd>
			</div>
		</div>

		<div class="content">
			<div class="content_top">
				<div class="content_top_left">收藏的商品</div>
				<div class="content_top_right">
					<a href="#">搜索</a>
					<input type="text" name="search" value="">
				</div>
			</div>
			<div class="content_center">
				<div class="content_center_top">
					<ul>
						<li id="li_first">全部商品</li>
						<li>降价（0）</li>
						<li>满减（0）</li>
						<li>赠品（0）</li>
						<li style="width:90px;">优惠卷（0）</li>
					</ul>
				</div>
				<div class="content_center_main">
					<ul>
						<c:forEach items="${wishlist}" var="item">
						<li>
							<div class="hovereffect">
								<img class="img-responsive" src="${item.images[0] }" alt="">
								<div class="overlay">
									<a href="#">取消关注</a>
								</div>
							</div>
							<div class="content_title" title="${item.sellPoint}">
								<a href="#">${item.title }</a>
							</div>
							<div class="content_price">
								<i>￥</i><span>${item.price / 100}</span>
							</div>
							<div class="content_like">
								<a href="#"><span id="circle">聚</span>&nbsp;去看看相似内容</a>
							</div>
							<div class="content_bottom">
								<div class="cart"><a href="http://localhost:8090/cart/add/${item.id}.html?num=1"><span class="glyphicon glyphicon-shopping-cart"></span><p>&ensp;加入购物车</p></a></div>
								<div class="price_down"><a href="#"><span class="glyphicon glyphicon-arrow-down"></span><p>&ensp;降价通知</p></a></div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>

<jsp:include page="commons/footer.jsp" />
</body>
</html>
