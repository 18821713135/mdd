<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="/css/bootstrap.min.css">
	<link rel="stylesheet" href="/css/buttons.css">
  <script src="/js/jquery-3.3.1.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
	<%-- <style media="screen">
		a:hover{
			color:#FF00FF;
		}
	</style> --%>
<!--shortcut start-->
<jsp:include page="shortcut.jsp" />
<!--shortcut end-->
<div id="header" style="margin-bottom: 0px;background-color:white;">
	<div class="header_inner">
		<div class="logo">
			<a name="sfbest_hp_hp_head_logo" href="http://localhost:8082"
				class="trackref logoleft" style="background:;"><img src="/images/html/logo_white.jpg" alt="" style="width:170px;height:65px;margin: 8px 0 0 20px;;"></a>
		</div>
		<div class="index_promo"></div>
		<div class="search">
			<form action="http://localhost:8085/search.html?keyword=" id="searchForm"
				name="query" method="GET">
				<input type="text" class="text keyword ac_input" name="keyword"
					id="keyword" value="" style="color: #333;"
					onkeydown="javascript:if(event.keyCode==13) search_keys('searchForm');"
					autocomplete="off"> <input type="button" value="搜&emsp;索" style="line-height:10px;border-radius: 0%;font-weight:600;font-size:18px;font-family: Microsoft Yahei;background-color:#dd00a7;padding: 0px;"
					class="submit button button-glow button-rounded button-caution" onclick="search_keys('searchForm')">
			</form>
			<div class="search_hot" style="">
				<a target="_blank" href="http://localhost:8085/search.html?keyword=秒杀" style="color: red;">秒杀专场</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=手机">手机</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=游戏本">游戏本</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=生活用品">生活用品</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=服饰">服饰</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=新鲜水果">新鲜水果</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=厨具">厨具</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=男装">男装</a>
				<a target="_blank" href="http://localhost:8085/search.html?keyword=女装">女装</a>
			</div>
		</div>
		<div class="shopingcar" id="topCart" style="border:2px solid #EEE9E9;text-align:center;">
			<%-- <s class="setCart"></s> --%>
			<a href="http://localhost:8090/cart/list.html" class="t" rel="nofollow" style="color:red;text-decoration: none;">
				<span class="glyphicon glyphicon-shopping-cart" style="margin-right: 20px; font-size:16px;"></span>
				我的购物车</a>

				<%-- <b id="cartNum">0</b>
				<span class="outline"></span>
				<span class="blank"></span> --%>

			<%-- <div id="cart_lists">
				<!--cartContent-->
				<div class="clear">

				</div> --%>
			</div>
		</div>
	</div>
</div>
