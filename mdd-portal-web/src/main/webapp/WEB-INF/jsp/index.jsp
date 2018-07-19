<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ page session="false"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Cache-Control" content="no-transform">
<meta http-equiv="Cache-Control" content="no-siteapp">

<script>
	const fourthOfJuly = new Date("July 4, 2028 12:00:00").getTime();
	// countdown
	let timer = setInterval(function() {
	  // get today's date
	  const today = new Date().getTime();
	  // get the difference
	  const diff = fourthOfJuly - today;
	  // math
	  let days = Math.floor(diff / (1000 * 60 * 60 * 24));
	  let hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	  let minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
	  let seconds = Math.floor((diff % (1000 * 60)) / 1000);

	  // display
	  document.getElementById("timer").innerHTML =
	    "<div class=\"hours\"> \
	  <div class=\"numbers\">" + hours + "</div>h</div> \
	<div class=\"minutes\"> \
	  <div class=\"numbers\">" + minutes + "</div>m</div> \
	<div class=\"seconds\"> \
	  <div class=\"numbers\">" + seconds + "</div>s</div> \
	</div>";

	}, 1000);

</script>

<title>买多多商城-买多多旗下全球优选网购商城</title>
<meta name="Keywords"
	content="进口食品,网上超市,网上购物,进口奶粉,买多多商城,sfbest,母婴用品,营养保健品,生鲜食品,粮油,酒水,休闲食品">
<meta name="Description"
	content="买多多商城买多多旗下全球美食优选网购商城，精选来自60多个国家和地区的进口食品，正品行货，支持货到付款。销售包括进口奶粉、母婴用品、营养保健品、生鲜食品、粮油、酒水、休闲食品等近万种商品。">
<link rel="dns-prefetch" href="//pic.e3mall.cn">
<meta property="wb:webmaster" content="3a008ad947166307">
<link rel="stylesheet" type="text/css"
	href="/css/base_w1200.css?v=2016071333">
<link rel="stylesheet" type="text/css"
	href="/css/index.css?v=2016071312">
<link rel="stylesheet" href="/css/indexSecond.css">
<link rel="stylesheet" href="/css/buttons.css">

<link href="images/small_logo.png" rel="shortcut icon" />
<script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/js/unslider.min.js"></script>
<script type="text/javascript" src="/js/global_index.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>

<style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
.en-markup-crop-options {
	top: 18px !important;
	left: 50% !important;
	margin-left: -100px !important;
	width: 200px !important;
	border: 2px rgba(255, 255, 255, .38) solid !important;
	border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
	margin-left: 0px !important;
}

</style>
<style media="screen">
.button {
	padding:0px;
	line-height: 25px;
}
.LR a:visited{color:#666}
.LR a:hover{color:#dd00a7}
.carousel-inner a:visited{color:#666}
.carousel-inner a:hover {color:#dd00a7}
.nine a:visited{color:#CDAF95;}
.nine a:hover {color:#f5004b}
</style>

</head>
<body style="background-color: #F0F0F0;">
	<!-- header start -->
	<jsp:include page="commons/header.jsp" />
	<jsp:include page="commons/mainmenu.jsp" />
	<!-- header end -->
	<!----row1------->
	<div class="slide_show" id="slide_show">
		<div class="indexW">
			<div id="index_slide" class="slide_wrap" >
				<div class="" style="width:750px;height:480px;position:absolute;">

					<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
						<!-- 轮播（Carousel）指标 -->
						<ol class="carousel-indicators" style="position:absolute;margin:0px;z-index:15;width:50%;left:25%;">
							<!-- carousel-indicators -->
							<li data-target="#carousel-example-generic" data-slide-to="0" style="width: 15px;height:15px;margin:8px;"class="active">
							</li>
							<li data-target="#carousel-example-generic" data-slide-to="1" style="width: 15px;height:15px;margin:8px;"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2" style="width: 15px;height:15px;margin:8px;"></li>
							<li data-target="#carousel-example-generic" data-slide-to="3" style="width: 15px;height:15px;margin:8px;"></li>
						</ol>

				<!-- 轮播（Carousel）项目内容 -->
				<div class="carousel-inner" role="listbox" >
					<!-- 默认显示图片 -->
					<div class="item active">
						<a href="#">
							<img src="images/carousel/c01.jpg" alt="" style="width:750px;height:480px;">
						</a>
					</div>
					<div class="item">
						<a href="#">
						<img src="images/carousel/c02.jpg" alt="" style="width:750px;height:480px;">
						</a>
					</div>
					 <div class="item">
						<a href="#">
							<img src="images/carousel/c03.jpg" alt="" style="width:750px;height:480px;">
						</a>
					</div>
					 <div class="item">
						<a href="#">
							<img src="images/carousel/c04.jpg" alt="" style="width:750px;height:480px;">
						</a>
						</div>
				</div>
				</div>
				 <!-- 轮播（Carousel）导航(控制左右移动) -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="" style="height:480px;width:242px;background-color: #FFF;position:absolute;float:right;z-index:998;margin-left:958px;">

				<a href="http://localhost:8085/search.html?keyword=头像">
					<img src="images/logo_right.jpg" alt="" style="width:60px;margin-top:-7px;border-radius:50%;box-shadow:6px 4px #c3c3c3;border:1px solid #979797">
				</a>

				<h5 id="welcome-h5" style="color:#979797;">Hi~欢迎来到买多多！</h5>
				<div class="LR">
				<a id="login-a-1" href="http://localhost:8088/page/login.html" style="margin-right:10px;">登录</a>
				<a href="http://localhost:8088/page/register.html">注册</a><br>
				</div>
				<div class="" style="width: 240px;height:60px; margin-left:1px;margin-right:1px;box-shadow: 0px 1px 3px rgba(34, 25, 25, 0.2);">
						<a href="http://localhost:8085/search.html?keyword=注册"
							class="button button-glow button-border button-rounded button-primary" style="width: 80px;height:30px;margin:15px 20px 20px 0px;font-size:12.5px;">新人有礼</a>
						<a href="http://localhost:8085/page/kill.html"
							class="button button-glow button-rounded button-caution" style="width: 80px;height:30px;padding:0px 0px 20px 0px;line-height: 30px;font-size:12.5px;">秒杀专场</a>
				</div>

				<div class="" style="width:232px;height:110px;margin:5px 5px 10px 5px;padding:7px;box-shadow: 0px 1px 3px rgba(34, 25, 25, 0.2);">
						<div id="car-ex-first" class="carousel slide" data-ride="carousel">
							<!-- 轮播（Carousel）指标 -->
							<ol class="" style="text-align: left;">
								<!-- carousel-indicators -->
								<li data-target="#car-ex-first" data-slide-to="0" class="active">
								</li>
								<li data-target="#car-ex-first" data-slide-to="1" ></li>
								<li data-target="#car-ex-first" data-slide-to="2" ></li>
								<li data-target="#car-ex-first" data-slide-to="3" ></li>
							</ol>

						<!-- 轮播（Carousel）项目内容 -->
							<div class="carousel-inner" role="listbox" style="font-size:10px;">
								<div class="item active">
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
									<span>[资讯]&nbsp;</span>神舟放肆购 i7游戏本3499元</a>
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
									<span>[资讯]&nbsp;</span>OPPO正式进军日本市场</a>
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;">
									<span>[资讯]&nbsp;</span>因异常天气配送延误公告</a>
								</div>
								<div class="item">
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
									<span>[资讯]&nbsp;</span>买手机 最高减450元</a>
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
								 <span>[资讯]&nbsp;</span>手机小白须知</a>
								 <a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;">
								 <span>[资讯]&nbsp;</span>双网通/全网通的区别</a>
								</div>
								 <div class="item">
									 <a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
									<span>[资讯]&nbsp;</span>空调年中盛典 立减500</a>
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
									<span>[资讯]&nbsp;</span>
									关于召回普利(天津)轮胎</a>
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;">
									<span>[资讯]&nbsp;</span>遇见惠普A3系列复合机</a>
								</div>
								<div class="item">
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
									<span>[资讯]&nbsp;</span>家居家装 满1000减150</a>
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;margin-bottom:10px;">
									<span>[资讯]&nbsp;</span>数码好物0元试用</a>
									<a class="car-a" href="#" style="float:left;margin-left:10px;text-align:left;">
									<span>[资讯]&nbsp;</span>小狗吸尘器 满500减50</a>
							</div>
						</div>
				</div>
			</div>
			<div class="nine" style="width:240px;height:178px;box-shadow: 0px 1px 3px rgba(34, 25, 25, 0.2);margin:0px 1px 0px 1px;">
				<ul style="width:240px;">
					<li style="width:33%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-phone" style="font-size:20px;margin:7px 0 5px 0;"></span><br>话费</a></li>
					<li style="width:33%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-cutlery" style="font-size:20px;margin:7px 0 5px 0;"></span><br>订餐</a></li>
					<li style="width:34%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-plane" style="font-size:20px;margin:7px 0 5px 0;"></span><br>飞机票</a></li>
					<li style="width:33%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-film" style="font-size:20px;margin:7px 0 5px 0;"></span><br>电影票</a></li>
					<li style="width:33%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-tint" style="font-size:20px;margin:7px 0 5px 0;"></span><br>加油卡</a></li>
					<li style="width:34%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-credit-card" style="font-size:20px;margin:7px 0 5px 0;"></span><br>会员卡</a></li>
					<li style="width:33%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-home" style="font-size:20px;margin:7px 0 5px 0;"></span><br>酒店</a></li>
					<li style="width:33%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-piggy-bank" style="font-size:20px;margin:7px 0 5px 0;"></span><br>理财</a></li>
					<li style="width:34%;height:33%;float:left;"><a href="#">
						<span class="glyphicon glyphicon-headphones" style="font-size:20px;margin:7px 0 5px 0;"></span><br>客服</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
	<!----row1 end------->
	<!-- 口碑甄选 start -->
	<div class="indexW mt1">
			<div class="seckill" style="height:300px;float: left;width:1200px;float:left;">
				<a href="http://localhost:8085/page/kill.html">
				<div class="jum" style="height: 300px;width: 200px; border-radius: 0%;line-height:2;float:left;">
							<h1 style="line-height:1.5;font-size:35px;">限时秒杀</h1>
							<h1 style="line-height:1;">FLASH DEALS</h2>
							<span class="glyphicon glyphicon-flash" style=" margin: 15px 15px;font-size: 40px;"></span>
							<h4 style="font-family: SimHei;">本场距离结束还剩</h2>
							<div id="timer" style="margin: 15px 5px;"></div>
				 </div>
				 </a>
				 <div class="sk_center">
								<a href="http://localhost:8085/page/kill.html"
									title="百草味 肉干肉脯 休闲零食 靖江精制猪肉脯200g/袋"
									class="sk_center_li">
									<img class="sk_img" src="/images/html/sk01.jpg" alt="">
									<h5 class="sk_img_h5">百草味 肉干肉脯 休闲零食 靖江精制猪肉脯200g/袋</h5>
								<div class="sk_price">
									<span class="sk_price_left">
											<i>￥</i>
											<span>79.00</span>
									</span>
									<span class="sk_price_right">
											<i>￥</i>
											<s>109.00</s>
									</span>
								</div>
								</a>
								<a href="http://localhost:8085/page/kill.html"
									title="华为(HUAWEI)M3 青春版 8.0英寸平板电脑（哈曼卡顿音效 3G内存/32G存储 WiFi）皎月白"
									class="sk_center_li">
									<img class="sk_img" src="/images/html/sk02.jpg" alt="">
									<h5 class="sk_img_h5">华为(HUAWEI)M3 青春版 8.0英寸平板电脑（哈曼卡顿音效 3G内存/32G存储 WiFi）皎月白</h5>
								<div class="sk_price">
									<span class="sk_price_left">
											<i>￥</i>
											<span>1298.00</span>
									</span>
									<span class="sk_price_right">
											<i>￥</i>
											<s>1399.00</s>
									</span>
								</div>
								</a>
								<a href="http://localhost:8085/page/kill.html"
									title="心相印抽纸 面巾纸 茶语系列 软抽3层130抽*24包（小规格）精选（两款包装随机发货）"
									class="sk_center_li">
									<img class="sk_img" src="/images/html/sk03.jpg" alt="">
									<h5 class="sk_img_h5">心相印抽纸 面巾纸 茶语系列 软抽3层130抽*24包（小规格）精选（两款包装随机发货）</h5>
								<div class="sk_price">
									<span class="sk_price_left">
											<i>￥</i>
											<span>29.00</span>
									</span>
									<span class="sk_price_right">
											<i>￥</i>
											<s>39.00</s>
									</span>
								</div>
								</a>
								<a href="http://localhost:8085/page/kill.html"
									title="vivo X21i 全面屏 双摄美颜拍照手机 6GB+64GB 极夜黑 移动联通电信全网通4G手机 双卡双待"
									class="sk_center_li">
									<img class="sk_img" src="/images/html/sk04.jpg" alt="">
									<h5 class="sk_img_h5">vivo X21i 全面屏 双摄美颜拍照手机 6GB+64GB 极夜黑 移动联通电信全网通4G手机 双卡双待</h5>
								<div class="sk_price">
									<span class="sk_price_left">
											<i>￥</i>
											<span>2298.00</span>
									</span>
									<span class="sk_price_right">
											<i>￥</i>
											<s>2399.00</s>
									</span>
								</div>
								</a>
								<a href="http://localhost:8085/page/kill.html"
									title="vivo X21i 全面屏 双摄美颜拍照手机 6GB+64GB 极夜黑 移动联通电信全网通4G手机 双卡双待"
									class="sk_center_li">
									<img class="sk_img" src="/images/html/sk05.jpg" alt="">
									<h5 class="sk_img_h5">vivo X21i 全面屏 双摄美颜拍照手机 6GB+64GB 极夜黑 移动联通电信全网通4G手机 双卡双待</h5>
								<div class="sk_price">
									<span class="sk_price_left">
											<i>￥</i>
											<span>2298.00</span>
									</span>
									<span class="sk_price_right">
											<i>￥</i>
											<s>2399.00</s>
									</span>
								</div>
								</a>
				 </div>
			</div>

		<%-- <div class="bestbuy">
			<div class="b_left">
				<h2>
					优选必买
				</h2>
				<ul class="bbig" id="bigPerfect">
					<li class="price_list0" goods="215383" eid="b_215383_0"
						id="cx_b_215383_0"><a href="http://localhost:8085/search.html?keyword=" title=""
						target="_blank"><img class="lazy"
							src="/images/html/95256f5b2857ec28914f631532508d76.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn" style="top: 260px;">
							<a pid="215383"
								data_url="http://p02.e3mall.cn/2016/1800215383/middle_1800215383_1_1/160x160.jpg"
								href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_215383_0">
							<span><sup>￥</sup></span>19.9
						</div></li>
					<li class="price_list0" goods="57111" eid="b_57111_0"
						id="cx_b_57111_0"><a href="http://localhost:8085/search.html?keyword=" title="湾仔码头 玉米蔬菜猪肉手工水饺 720g"
						target="_blank"><img class="lazy"
							src="/images/html/49111b8189bf71370cdb145f8fdb1195.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn" style="top: 260px;">
							<a pid="57111" href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_57111_0">
							<span><sup>￥</sup></span>29.7
						</div></li>
					<li class="price_list0" goods="5536" eid="b_5536_0"
						id="cx_b_5536_0"><a href="http://localhost:8085/search.html?keyword=" title="汾酒 53°20年青花瓷  500ml"
						target="_blank"><img class="lazy" alt="汾酒 53°20年青花瓷  500ml"
							src="/images/html/cf33d7d36f1128577782ded21fe812a9.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn">
							<a pid="5536" href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_5536_0">
							<span><sup>￥</sup></span>318
						</div></li>
					<li class="price_list0" goods="12045" eid="b_12045_0"
						id="cx_b_12045_0"><a
						href="http://localhost:8085/search.html?keyword="
						title="佳沛  新西兰阳光金果奇异果6粒" target="_blank"><img class="lazy"
							alt="佳沛  新西兰阳光金果奇异果6粒"
							src="/images/html/2a3ba6ffb33d8fca0dc848f94e3d99d8.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn">
							<a pid="12045" href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_12045_0">
							<span><sup>￥</sup></span>39.8
						</div></li>
				</ul>
				<ul class="bsmall" id="smallPerfect">
					<li class="price_list0" goods="37194" eid="b_37194_1"
						id="cx_b_37194_1"><a
						href="http://localhost:8085/search.html?keyword="
						title="精气神 山黑猪猪蹄 320g" target="_blank"><img class="lazy"
							src="/images/html/c3449a684bebe21f5b6c6c79e46791ff.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn" style="top: 210px;">
							<a pid="37194"
								data_url="http://p02.e3mall.cn/2014/1800037194/middle_1800037194_3_10/160x160.jpg"
								href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_37194_1">
							<span><sup>￥</sup></span>27.8
						</div></li>
					<li class="price_list0" goods="219085" eid="b_219085_1"
						id="cx_b_219085_1"><a
						href="http://localhost:8085/search.html?keyword="
						title="八马茶业 福鼎白茶(白牡丹）62.5g*2" target="_blank"><img
							class="lazy"
							src="/images/html/042cc65a4fb9899878f2f37235ca1793.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn" style="top: 210px;">
							<a pid="219085"
								data_url="http://p02.e3mall.cn/2016/1500219085/middle_1500219085_1_1/160x160.jpg"
								href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_219085_1">
							<span><sup>￥</sup></span>75
						</div></li>
					<li class="price_list0" goods="55213" eid="b_55213_1"
						id="cx_b_55213_1"><a
						href="http://localhost:8085/search.html?keyword="
						title="爱之湾 桃红莫斯卡托甜起泡酒 750ml" target="_blank"><img class="lazy"
							data="/images/goods/c11e0d59289782b09ea1cbcb98070017.jpg"
							alt="爱之湾 桃红莫斯卡托甜起泡酒 750ml"
							src="/images/goods/c11e0d59289782b09ea1cbcb98070017.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn">
							<a pid="55213"
								data_url="http://p02.e3mall.cn/2014/1400055213/middle_1400055213_1_1/160x160.jpg"
								href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_55213_1">
							<span><sup>￥</sup></span>38.5
						</div></li>
					<li class="price_list0" goods="167461" eid="b_167461_1"
						id="cx_b_167461_1"><a
						href="http://localhost:8085/search.html?keyword="
						title="北纯  有机绿豆 1kg" target="_blank"><img class="lazy"
							data="/images/goods/7cc96c14e10f6ed8db28b4b1efdfdb07.jpg"
							alt="北纯  有机绿豆 1kg"
							src="/images/goods/7cc96c14e10f6ed8db28b4b1efdfdb07.jpg"
							style="display: inline;"></a>
						<div class="gBtn p-btn bbtn">
							<a pid="167461"
								data_url="http://p02.e3mall.cn/2015/1300167461/middle_1300167461_1_1/160x160.jpg"
								href="javascript:void(0)" indexflag="1">加入购物车</a>
						</div>
						<div class="bprice" id="priceK_b_167461_1">
							<span><sup>￥</sup></span>22.2
						</div></li>
				</ul>
			</div>
			<!-- 口碑甄选 end -->
			<div class="rSide1">

				<div class="rImg2">
					<a name="sfbest_hp_hp_news_right-ad" class="trackref"
						href="http://localhost:8085/search.html?keyword=" target="_blank"><img
						salt="9.2-9.5"
						src="/images/goods/751d2091c008c2a49c1934545730f041.jpg"></a>
				</div>

				<div class="sfNews">
					<div class="rTitle">
						<h2>最新动态</h2>
						<a href="http://localhost:8085/search.html?keyword=" target="_blank" class="more">更多&gt;</a>
					</div>
					<ul>
						<li><a name="sfbest_hp_hp_news_1" href="http://localhost:8085/search.html?keyword="
							target="_blank" class=" red trackref" title="受杭州G20峰会影响的配送问题公告">受杭州G20峰会影响的配送问题公告</a></li>
						<li><a name="sfbest_hp_hp_news_2" href="http://localhost:8085/search.html?keyword="
							target="_blank" class=" trackref" title="购买燕麦片满49元抽奖活动中奖公告">购买燕麦片满49元抽奖活动中奖公告</a></li>
						<li><a name="sfbest_hp_hp_news_3" href="http://localhost:8085/search.html?keyword="
							target="_blank" class=" trackref" title="满299抽iPhone6s活动中奖公告">满299抽iPhone6s活动中奖公告</a></li>
						<li><a name="sfbest_hp_hp_news_4" href="http://localhost:8085/search.html?keyword="
							target="_blank" class=" trackref" title="《珍膳米，带你冲上云霄》活动中奖名单公布">《珍膳米，带你冲上云霄》活动中奖名单公布</a></li>
					</ul>
				</div>
			</div>
		</div> --%>
		<%-- <div class="clr"></div> --%>
	</div>
	<!--楼层 start-->
	<%-- <div class="indexW mt2 full_ad"
		style="width: 1190px; padding-left: 10px;">
		<a name="sfbest_hp_hp_banner_1" class="trackref"
			href="http://localhost:8082" target="_blank"><img
			alt="8.30-9.5" class="lazy"
			src="/images/goods/8f42d6d2deead3da7d50c8a702a3c939.jpg"
			style="display: inline;"></a>
	</div> --%>

	<%-- <div class="indexW mt2 ie6 fresh">
		<div class="category">
			<ul class="mTitle">
				<li>
					<div class="cir"></div>
					<h2>
						<em></em> <a name="sfbest_hp_hp_floor1_floor-category1"
							class="trackref" href="http://localhost:8085/search.html?keyword=水果"
							target="_blank">水果</a>&nbsp;&nbsp;<a
							name="sfbest_hp_hp_floor1_floor-category2" class="trackref"
							href="http://localhost:8085/search.html?keyword=蔬菜" target="_blank">蔬菜</a>
					</h2>
				</li>
			</ul>
			<div class="lCont">
				<a name="sfbest_hp_hp_floor1_left-ad" class="trackref"
					href="http://localhost:8082" target="_blank"> <img
					alt="8.30-9.5" class="lazy"
					src="/images/goods/26336113289bf7273823080488a9d200.jpg"
					style="display: inline;"></a>
			</div>
		</div>
		<div class="sfRight">
			<div class="subCont">
				<ul class="pList" id="floor-gap-1">
					<li class="price_list1" eid="l_218031_7_297" goods="218031"
						id="cx_l_218031_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="泰国金柚700-1200g"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="泰国金柚700-1200g"
								src="/images/goods/160x160-1.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218031" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="泰国金柚700g-1200g">泰国金柚700g-1200g</a>
						</div>
						<div class="price" id="priceL_l_218031_7_297">
							<b>￥19.9</b>
						</div></li>
					<li class="price_list1" eid="l_218155_7_297" goods="218155"
						id="cx_l_218155_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="天山一号火焰山哈密瓜1.4kg-2kg【下单后3-5天发货】"><img
								class="lazy" data="/images/goods/160x160.jpg"
								alt="天山一号火焰山哈密瓜1.4kg-2kg【下单后3-5天发货】"
								src="/images/goods/160x160-2.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218155" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="天山一号火焰山哈密瓜">天山一号火焰山哈密瓜</a>
						</div>
						<div class="price" id="priceL_l_218155_7_297">
							<b>￥22.8</b>
						</div></li>
					<li class="price_list1" eid="l_236853_7_297" goods="236853"
						id="cx_l_236853_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="一点红冬枣1000g"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="一点红冬枣1000g"
								src="/images/goods/160x160-3.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236853" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="一点红冬枣1kg">一点红冬枣1kg</a>
						</div>
						<div class="price" id="priceL_l_236853_7_297">
							<b>￥69.9</b>
						</div></li>
					<li class="price_list1" eid="l_218955_7_297" goods="218955"
						id="cx_l_218955_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="墨西哥牛油果420g（3个装）"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="墨西哥牛油果420g（3个装）"
								src="/images/goods/160x160-4.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218955" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="墨西哥牛油果3粒420g">墨西哥牛油果3粒420g</a>
						</div>
						<div class="price" id="priceL_l_218955_7_297">
							<b>￥29.9</b>
						</div></li>
					<li class="price_list1" eid="l_236863_7_297" goods="236863"
						id="cx_l_236863_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="佳沛zespri 佳沛新西兰金奇异果12个（36号）"><img
								class="lazy" data="/images/goods/160x160.jpg"
								alt="佳沛zespri 佳沛新西兰金奇异果12个（36号）"
								src="/images/goods/160x160-5.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236863" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="佳沛 新西兰金奇异果12个">佳沛 新西兰金奇异果12个</a>
						</div>
						<div class="price" id="priceL_l_236863_7_297">
							<b>￥76</b>
						</div></li>
					<li class="price_list1" eid="l_236871_7_297" goods="236871"
						id="cx_l_236871_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="国产西梅1000g"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="国产西梅1000g"
								src="/images/goods/160x160-6.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="236871" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="国产西梅1kg">国产西梅1kg</a>
						</div>
						<div class="price" id="priceL_l_236871_7_297">
							<b>￥19.9</b>
						</div></li>
					<li class="price_list1" eid="l_218073_7_297" goods="218073"
						id="cx_l_218073_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="新西兰红玫瑰苹果720g(4个装)"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="新西兰红玫瑰苹果720g(4个装)"
								src="/images/goods/160x160-7.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="218073" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="新西兰红玫瑰苹果4粒720g">新西兰红玫瑰苹果4粒720g</a>
						</div>
						<div class="price" id="priceL_l_218073_7_297">
							<b>￥35.8</b>
						</div></li>
					<li class="price_list1" eid="l_215405_7_297" goods="215405"
						id="cx_l_215405_7_297"><div class="pImg">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="皇冠蜜梨1000g（4个装）"><img class="lazy"
								data="/images/goods/160x160.jpg" alt="皇冠蜜梨1000g（4个装）"
								src="/images/goods/160x160-8.jpg" style="display: block;"></a>
							<div class="gBtn p-btn">
								<a pid="215405" data_url="/images/goods/160x160.jpg"
									href="javascript:void(0)" indexflag="1">加入购物车</a>
							</div>
						</div>
						<div class="title-a">
							<a
								href="http://localhost:8085/search.html?keyword="
								target="_blank" title="皇冠蜜梨4粒1kg">皇冠蜜梨4粒1kg</a>
						</div>
						<div class="price" id="priceL_l_215405_7_297">
							<b>￥15.9</b>
						</div></li>
				</ul>
			</div>
			<div class="redge">
				<ul class="rHot">
					<li><a name="sfbest_hp_hp_floor1_Keywords1" class="trackref"
						href="http://localhost:8085/search.html?keyword="
						target="_blank">蓝莓</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords2" class="trackref"
						href="http://localhost:8085/search.html?keyword="
						target="_blank">椰青</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords3" class="trackref"
						href="http://localhost:8085/search.html?keyword="
						target="_blank">火龙果</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords4" class="trackref"
						href="http://localhost:8085/search.html?keyword="
						target="_blank">水蜜桃</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords5" class="trackref"
						href="http://localhost:8085/search.html?keyword="
						target="_blank">牛油果</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords6" class="trackref"
						href="http://localhost:8085/search.html?keyword="
						target="_blank">佳沛</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords7" class="trackref"
						href="http://localhost:8085/search.html?keyword="
						target="_blank">新奇士</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords8" class="trackref"
						href="http://localhost:8085/search.html?keyword=" target="_blank">加工蔬菜</a></li>
					<li><a name="sfbest_hp_hp_floor1_Keywords9" class="trackref"
						href="http://localhost:8085/search.html?keyword=" target="_blank">加利利</a></li>
				</ul>
				<div class="clr"></div>
				<div class="rimg">

					<a name="sfbest_hp_hp_floor1_right-ad" class="ht1 trackref"
						href="http://localhost:8082" target="_blank"><img
						alt="8.30-9.5" class="lazy"
						data="http://001.sfimg.cn/web/1dd1130a/1dd1130a9c0103f6ec8a13fa13f27641.jpg"
						src="http://001.sfimg.cn/web/1dd1130a/1dd1130a9c0103f6ec8a13fa13f27641.jpg"
						style="display: inline;"></a>
					<div class="rbutton">
						<a href="http://localhost:8082" target="_blank"></a>
					</div>
				</div>
			</div>
		</div>
		<!----天天生鲜 -->
		<span class="clr"></span>
	</div> --%>
	<!--楼层 end -->
	<div class="container" style="width:1200px;height:520px;padding:0;margin-top:25px;">
		<ul class="con_ul">
			<li class="con_li" style="margin-right:14px;">
				<div class="con_li_first" style="background-color: #c43d7e;">
					<h2>运动专场</h2>
					<p><a href="#">更多好货 ></a></p>
				</div>
				<div class="con_li_second">
					<ul>
						<li><a href="#"><img src="/images/list/motion01.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/motion02.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/motion03.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/motion04.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/motion05.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/motion06.jpg" alt="" class="img-responsive"></a></li>
					</ul>
				</div>
			</li>
			<li class="con_li" style="margin-right:14px;">
				<div class="con_li_first" style="background-color: #6d55bd;">
					<h2>魅力装扮</h2>
					<p><a href="#">更多好货 ></a></p>
				</div>
				<div class="con_li_second">
					<ul>
						<li><a href="#"><img src="/images/list/cosmetics01.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/cosmetics02.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/cosmetics03.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/cosmetics04.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/cosmetics05.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/cosmetics06.jpg" alt="" class="img-responsive"></a></li>
					</ul>
				</div>
			</li>
			<li class="con_li">
				<div class="con_li_first" style="background-color: #325bb5;">
					<h2>我型我塑</h2>
					<p><a href="#">更多好货 ></a></p>
				</div>
				<div class="con_li_second">
					<ul>
						<li><a href="#"><img src="/images/list/close01.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/close02.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/close03.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/close04.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/close05.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/close06.jpg" alt="" class="img-responsive"></a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>

	<div class="container" style="width:1200px;height:600px;padding:0;margin-top:25px;">
		<ul class="con_ul">
			<li class="con_li" style="margin-right:14px;">
				<div class="con_li_first" style="background-color: #e66a07;">
					<h2>手机频道</h2>
					<p><a href="#">更多好货 ></a></p>
				</div>
				<div class="con_li_second_again">
					<ul>
						<li><a href="#"><img src="/images/list/phone01.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/phone02.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/phone03.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/phone04.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/phone05.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/phone06.jpg" alt="" class="img-responsive"></a></li>
					</ul>
				</div>
			</li>
			<li class="con_li" style="margin-right:14px;">
				<div class="con_li_first"  style="background-color: #b62323;">
					<h2>生活超市</h2>
					<p><a href="#">更多好货 ></a></p>
				</div>
				<div class="con_li_second_again">
					<ul>
						<li><a href="#"><img src="/images/list/supermarket01.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/supermarket02.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/supermarket03.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/supermarket04.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/supermarket05.jpg" alt="" class="img-responsive"></a></li>
						<li><a href="#"><img src="/images/list/supermarket06.jpg" alt="" class="img-responsive"></a></li>
					</ul>
				</div>
			</li>
			<li class="con_li">
				<div class="con_li_first" style="background-color: #3b8c94;">
					<h2>专题入口</h2>
					<p><a href="#">精品风向标 ></a></p>
				</div>
				<div class="con_li_second">
					<ul>
						<li style="width:390px;height:160px;float:left;margin-bottom: 2px;">
							<a href="#"><img src="/images/list/special01.jpg" alt="" class="img-responsive" style="width:390px;height:160px;"></a></li>
						<li style="width:390px;height:160px;float:left;margin-bottom: 2px;">
							<a href="#"><img src="/images/list/special02.jpg" alt="" class="img-responsive" style="width:390px;height:160px;"></a></li>
						<li style="width:390px;height:160px;float:left;margin-bottom: 2px;">
							<a href="#"><img src="/images/list/special03.jpg" alt="" class="img-responsive" style="width:390px;height:160px;"></a></li>
					</ul>
				</div>
			</li>
		</ul>
	</div>
	<div class="container" style="width:1200px;height:3750px;padding:0;margin-top:0px;">
		<div class="con_second_header">
				<h2>—— ——&nbsp;&nbsp;&nbsp;还没逛够&nbsp;&nbsp;&nbsp;—— ——</h2>
		</div>
		<style media="screen">
			.con_second_main a:hover {color:#F40;}
		</style>
		<div class="con_second_main">
			<ul>
				<li>
					<a href="#"><img src="/images/goods/g01.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【京东出品】碧东混搭营养坚果包 每日坚果 休闲零食 混合坚果 礼盒 25g*30包</p>
						<p class="con_second_main_price"><i>￥</i>118.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g02.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】三只松鼠 坚果炒货   休闲零食 开心果225g/袋</p>
						<p class="con_second_main_price"><i>￥</i>29.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g04.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】港荣蒸蛋糕 饼干蛋糕 早餐零食 奶香鸡蛋糕 软面包礼盒 整箱1kg</p>
						<p class="con_second_main_price"><i>￥</i>35.20</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g03.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】好想你 干果零食 新疆特产 阿克苏灰枣 免洗红枣子 玛瑙红500g/袋</p>
						<p class="con_second_main_price"><i>￥</i>22.90</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g05.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】旺旺 旺仔牛奶125mlX16包+旺旺乳酸菌125mlX4包（礼盒装）</p>
						<p class="con_second_main_price"><i>￥</i>43.20</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g06.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】乐事（Lay’s）无限薯片 休闲零食 104g*3组合装（原味+烤肉+番茄）新老包装，随机发货</p>
						<p class="con_second_main_price"><i>￥</i>25.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g07.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】三只松鼠  蜜饯果干 休闲零食 芒果干116g/袋/p>
						<p class="con_second_main_price"><i>￥</i>9.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g08.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】良品铺子靖江猪肉脯200g 原味 特产零食小吃猪肉干肉脯休闲食品</p>
						<p class="con_second_main_price"><i>￥</i>18.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g09.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">德国进口 Wurenbacher瓦伦丁小麦啤酒 500ml*24 听</p>
						<p class="con_second_main_price"><i>￥</i>129.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g10.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】蒙牛 纯牛奶 PURE MILK 250ml*16盒</p>
						<p class="con_second_main_price"><i>￥</i>36.90</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g11.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】雅培(Abbott) 营养健康 益力佳SR营养配方粉 400克 （西班牙进口）</p>
						<p class="con_second_main_price"><i>￥</i>188.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g12.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">德国进口（Eichbaum） 爱士堡小麦啤酒 500ml*24 听</p>
						<p class="con_second_main_price"><i>￥</i>129.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g13.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">法国进口红酒 拉菲（LAFITE）传奇波尔多干红葡萄酒 整箱装 750ml*6瓶（ASC）</p>
						<p class="con_second_main_price"><i>￥</i>498.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g14.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】士力架花生夹心巧克力（全家桶）糖果巧克力休闲零食460g</p>
						<p class="con_second_main_price"><i>￥</i>29.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g15.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">Zespri佳沛 新西兰阳光金奇异果 特大22-25个 原箱装 单果重约134-175g </p>
						<p class="con_second_main_price"><i>￥</i>179.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>

				<li>
					<a href="#"><img src="/images/goods/g16.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【领券后99元5只免运费】温氏 供港老母鸡 黄油鸡 1000克/彩袋装 整只装 谷饲散养 土鸡 </p>
						<p class="con_second_main_price"><i>￥</i>32.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g17.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【前2小时3件减20】}恒都 澳洲牛腱子 1kg/袋 草饲牛肉 </p>
						<p class="con_second_main_price"><i>￥</i>64.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g18.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】【24盒装】蒙牛 纯甄 常温酸牛奶 200g*24 家庭装</p>
						<p class="con_second_main_price"><i>￥</i>89.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g19.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">南渡北归系列（全新经典版，套装全3册）</p>
						<p class="con_second_main_price"><i>￥</i>140.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g20.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】洁柔（C&S）抽纸120抽抽取式纸面巾三层24包装(整箱销售)（200*123mm）</p>
						<p class="con_second_main_price"><i>￥</i>49.90</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g21.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】澳大利亚 进口奶粉 德运 （Devondale）调制乳粉（全脂）成人奶粉 1kg 袋装</p>
						<p class="con_second_main_price"><i>￥</i>64.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g22.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】七度空间（SPACE7）少女系列 纯棉表层 卫生巾特惠装11包 (日60片 夜用30片 超长夜用16片)</p>
						<p class="con_second_main_price"><i>￥</i>84.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g23.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】清风（APP）抽纸 柔韧2层200抽软抽*20包纸巾（新老包装交替发货）（整箱售卖）</p>
						<p class="con_second_main_price"><i>￥</i>39.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g24.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】宜洁 棉签耳鼻清洁化妆筒装塑棒400头200支Y-9898（新老包装随机发货）</p>
						<p class="con_second_main_price"><i>￥</i>7.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g25.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】珍视明 通用型 护眼贴（15袋装）</p>
						<p class="con_second_main_price"><i>￥</i>49.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g26.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】苏泊尔不粘炒锅32CM 燃气煤气电磁炉通用NC32F4</p>
						<p class="con_second_main_price"><i>￥</i>56.70</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g27.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】金龙鱼 东北大米 蟹稻共生 盘锦大米5KG(包装更新，新老包装随机发放）</p>
						<p class="con_second_main_price"><i>￥</i>29.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g28.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】海飞丝 H&S 洗护套装清爽去油洗发水500ml*2 400ml 80ml*2（新老包装随机发货)</p>
						<p class="con_second_main_price"><i>￥</i>99.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g29.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">美的（Midea）电水壶WH517E2b 304不锈钢电热水壶 1.7L容量 无缝一体内胆 双层防烫烧水壶（白玉）</p>
						<p class="con_second_main_price"><i>￥</i>125.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g30.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】水之密语 （AQUAIR） 净澄水活 洗发露 （倍润型） 600ml (资生堂洗发水)</p>
						<p class="con_second_main_price"><i>￥</i>68.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g31.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】燕之屋 正品孕妇即食冰糖燕窝 滋补品即食燕窝礼盒 70g*3瓶</p>
						<p class="con_second_main_price"><i>￥</i>199.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>

				<li>
					<a href="#"><img src="/images/goods/g32.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">杰士邦润滑液两支</p>
						<p class="con_second_main_price"><i>￥</i>55.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g33.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】乐扣乐扣(lock&lock)米桶 12升装（可容纳10kg大米）带滑轮赠送米勺 HPL510</p>
						<p class="con_second_main_price"><i>￥</i>125.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g34.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】拓朴大卫四驱动旋转拖把桶 拖布好神拖 拓扑地拖墩布 小净士S7(新老包装随机发货)</p>
						<p class="con_second_main_price"><i>￥</i>125.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g35.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】苏泊尔supor 火红点2代不粘无油烟炒锅32cm明火专用可立盖PC32R7</p>
						<p class="con_second_main_price"><i>￥</i>77.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g36.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】汰渍全效洁雅百合香型洗衣液(3kg*2+500g*6)/箱装 柔顺 护色 去渍 含净漂因子</p>
						<p class="con_second_main_price"><i>￥</i>85.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g37.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】新西兰原装进口牛奶 安佳Anchor全脂牛奶UHT纯牛奶250ml*24 整箱装</p>
						<p class="con_second_main_price"><i>￥</i>55.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g38.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】清风（APP）抽纸 原木纯品金装系列 3层120抽软抽*24包纸巾（整箱销售）</p>
						<p class="con_second_main_price"><i>￥</i>25.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g39.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】海飞丝去屑护肤洗发水丝质柔滑型750ml（男女通用 洗发露 新老包装随机发放）</p>
						<p class="con_second_main_price"><i>￥</i>25.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g40.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">美的（Midea）电烤箱家用大容量 广域控温 MG38CB-AA 38L黑色</p>
						<p class="con_second_main_price"><i>￥</i>25.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g41.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">飞科(FLYCO)FS375智能电动剃须刀 全身水洗刮胡刀</p>
						<p class="con_second_main_price"><i>￥</i>55.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g42.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">I wonder why 20本套装 英文原版</p>
						<p class="con_second_main_price"><i>￥</i>336.60</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g43.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">完美芦荟胶40g 3支装</p>
						<p class="con_second_main_price"><i>￥</i>33.60</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g44.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】蓝月亮套装10.32斤：2kg亮白洗衣液薰衣草*2 500g翻盖*2 80g旅行装*2</p>
						<p class="con_second_main_price"><i>￥</i>29.90</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g45.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">展卉 百香果西番莲 12个装 单果50-80g 新鲜水果</p>
						<p class="con_second_main_price"><i>￥</i>25.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g46.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">长城（GreatWall）红酒 特酿3年解百纳干红葡萄酒 整箱装 750ml*6瓶</p>
						<p class="con_second_main_price"><i>￥</i>144.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g47.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">水井坊 臻酿八號 52度500ml单瓶装</p>
						<p class="con_second_main_price"><i>￥</i>359.00</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>

				<li>
					<a href="#"><img src="/images/goods/g48.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">芙丽芳丝净润洗面霜</p>
						<p class="con_second_main_price"><i>￥</i>125.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g49.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】德国 进口牛奶 欧德堡（Oldenburger）超高温处理全脂纯牛奶200ml*24盒</p>
						<p class="con_second_main_price"><i>￥</i>85.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g50.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">飞利浦6511</p>
						<p class="con_second_main_price"><i>￥</i>66.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g51.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】李锦记 锦珍生抽 非转基因酿造酱油 调味调料 1.65L</p>
						<p class="con_second_main_price"><i>￥</i>85.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g52.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】滴露Dettol 消毒液 1.5L*2 家居衣物除菌液 与洗衣液、柔顺剂配合使用</p>
						<p class="con_second_main_price"><i>￥</i>88.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g53.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">美迪惠尔美白保湿黑炭面膜10片</p>
						<p class="con_second_main_price"><i>￥</i>75.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g54.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】奥妙 除菌除螨 洗衣粉 2.8KG 源自天然酵素</p>
						<p class="con_second_main_price"><i>￥</i>99.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g55.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】金龙鱼 食用油 葵花籽食用调和油5L</p>
						<p class="con_second_main_price"><i>￥</i>78.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g56.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】舒肤佳香皂混合三块促销装（纯白清香型X1 柠檬清新型X1 芦荟呵护型X1）（新老包装随机发货）</p>
						<p class="con_second_main_price"><i>￥</i>23.50</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g57.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】高露洁（Colgate） 适齿炭 牙刷×3 （买二送一装） （软毛）（新老包装随机发放）</p>
						<p class="con_second_main_price"><i>￥</i>15.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g58.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">小熊（Bear）养生壶全自动玻璃电水壶烧水花茶壶煮茶壶多功能 YSH-A15W6 1.5L</p>
						<p class="con_second_main_price"><i>￥</i>55.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g59.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】滴露Dettol 滋润倍护抑菌洗手液套装（500g送300g）*3套</p>
						<p class="con_second_main_price"><i>￥</i>25.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
				<li>
					<a href="#"><img src="/images/goods/g60.jpg" alt="" class="img-responsive">
						<p class="con_second_main_title">【买多多超市】维达(Vinda) 卷纸 蓝色经典3层200g卫生纸*27卷(整箱销售)</p>
						<p class="con_second_main_price"><i>￥</i>79.80</p></a>
					<a href="#" class="con_second_main_turn">找相似</a>
				</li>
			</ul>
		</div>

	</div>
	<!-- footer start -->
	<jsp:include page="commons/footer.jsp" />
	<!-- footer end -->
</body>
</html>
