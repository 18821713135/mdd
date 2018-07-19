<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Cache-Control" content="max-age=300" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>${query}-商品搜索-买多多商城</title>
	<link rel="stylesheet" type="text/css" href="/css/productList.css" />
	<link rel="stylesheet" type="text/css" href="/css/base_w1200.css" />
	<link rel="stylesheet" type="text/css" href="/css/common.css" />
	<link rel="stylesheet" type="text/css" href="/css/jquery.alerts.css" />
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link href="/images/small_logo.png" rel="shortcut icon" />
	<script type="text/javascript" src="/js/jquery-1.5.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header start -->
	<jsp:include page="commons/header.jsp" />
	<jsp:include page="commons/mainmenu.jsp" />
	<style media="screen">
		.schArticle a {
			text-decoration: none;
			color: #666;
		}

		.schArticle a:hover {
			color: #dd00a7;
		}
	</style>
	<div class="linknav">
		<div class="schArticle">
			<a href="" target="_blank">找到和“<span>${query}</span>”相关的文章<span
				id="articlenum">${totalPages }</span>篇&gt;&gt;
			</a>
		</div>
		<div class="breadcrumb"
		style="background-color: white; line-height: 0px; padding: 0px; margin-top: 0px; height: 30px;">
		<span style="margin-left: 10px; line-height: 30px;">全部结果&nbsp;&gt;&nbsp;${query}</span>
	</div>
</div>
<div class="content_list">
	<div class="main-box">

		<a id="prolist-id"></a>
		<div class="r-filter">
			<div class="f-sort">
				<div class="pagin">
					<span class="txt">
						<span class="n span-page">${page }</span>
						/
						<span class="span-totalPages">${totalPages }</span>
					</span>
					<a href="http://localhost:8085/search.html?keyword=${query}&totalPages=${totalPages}&page=${page-1}">
						<span class="prev" style="text-align: center; line-height: 15px;"><</span>
					</a>
					<a href="http://localhost:8085/search.html?keyword=${query}&totalPages=${totalPages}&page=${page+1}"> 
						<span class="next" style="text-align: center; line-height: 15px;">></span>
					</a>
				</div>
				<div class="total">
					共&nbsp;&nbsp;<span>${recourdCount }</span>&nbsp;&nbsp;个&nbsp;商&nbsp;品
				</div>
			</div>
		</div>

		<a name="prolist" id="prolist"></a>
		<div class="p-list">
			<ul class="list-all">
				<c:forEach items="${itemList }" var="item">
				<li>
					<div class="l-wrap">
						<div class="pic">
							<a class="trackref"
							href="http://localhost:8086/item/${item.id}.html"
							title='${item.sellPoint}' target="_blank"> <img
							src="${item.images[0]}" style="display: inline" />
						</a>
					</div>
					<div class="price">
						<span><span class="p-now">￥<strong><fmt:formatNumber
							groupingUsed="false" maxFractionDigits="2"
							minFractionDigits="2" value="${item.price / 100}" /></strong></span><span
							class="p-nor"></span><span class="active" style="">直降</span></span>
						</div>
						<div class="title-a">
							<a class="trackref presaleSign_225865"
							href="http://localhost:8086/item/${item.id}.html"
							target="_blank" title="">${item.title }</a>
						</div>
						<div class="title-b" style="">
							<a class="trackref"
							href="http://localhost:8086/item/${item.id}.html"
							target="_blank" title='${item.sellPoint}'>${item.sellPoint }</a>
						</div>
						<div class="comment">
							<div class="owner_shop_list">自营</div>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
		<span class="clear"></span>
	</div>

	<div class="pages"></div>
</div>
<style media="screen">
	.second_main {
		width: 174px;
		height: 240px;
		float: left;
		border: 1px solid #E3E3E3;
		margin-top: 10px;
	}

	.second_main img {
		width: 150px;
		height: 150px;
		margin-left: 12px;
		transition: all 0.5s;
		margin-top: 5px;
	}

	.second_main img:hover {
		transform: scale(1.05);
	}

	.second_main a {
		text-decoration: none;
	}

	.second_main_title {
		width: 140px;
		height: 40px;
		margin: 5px 15px 5px 15px;
		overflow: hidden;
		font: 12px/18px "Microsoft Yahei", "Hiragino Sans GB";
		line-height: 20px;
		color: #333;
		overflow: hidden;
	}

	.second_main_title:hover {
		color: #F40;
	}

	.second_main_price {
		color: #F40;
		margin: 10px 0px 10px 10px;
		font: bold 16px/18px "Microsoft Yahei", tahoma, arial,
		"Hiragino Sans GB";
		float: left;
	}
</style>

<div class="left-box">
	<span
	style="width: 120px; height: 30px; margin: 10px; line-height: 30px; font: bold 15px/25px Microsoft YaHei; color: #666;">商品精选</span>
	<c:forEach begin="0" end="4" var="i">
	<c:if test="${!empty itemList[10+i]}">
	<div class="second_main" style="margin-top: 20px;">
		<a href="http://localhost:8086/item/${itemList[10+i].id}.html"
		title='${itemList[2].sellPoint}'> <img
		src="${itemList[10+i+step].images[0]}" alt=""
		class="img-responsive">
		<p class="second_main_price">
			<i>￥</i>${itemList[10+i].price / 100}</p>
			<p class="second_main_title">${itemList[10+i].title}</p></a>
		</div>
	</c:if>
</c:forEach>
</div>

<jsp:include page="commons/footer.jsp" />

<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/e3mall.js">

<script type="text/javascript" src="/js/common.js?v=20160713" ></script>
<script type="text/javascript" src="/js/cart.js?v=20160713"></script>
<script type="text/javascript" src="/js/jquery.alerts.js"></script>
<script type="text/javascript" src="/js/NewVersion.js?v=20160713"></script>
<script type="text/javascript" src="/js/cookie.js?v=20160416222"></script>
<script type="text/javascript" src="/js/shadow.js?v=20160416"></script>
</div>
</html>
