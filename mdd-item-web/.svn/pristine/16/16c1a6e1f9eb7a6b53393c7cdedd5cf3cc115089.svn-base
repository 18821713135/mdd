<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>${item.title }-买多多商城</title>
 <script src="/js/jquery-3.3.1.min.js" type="text/javascript"></script>
  <script src="/js/layer.js" type="text/javascript"></script>
 <script src="/js/city-picker.data.js"></script>
 <script src="/js/city-picker.js"></script>
 <script src="/js/main.js"></script>

 <script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
 <!-- <script src="/js/jquery-1.5.1.min.js" type="text/javascript"></script> -->
 <!-- <script src="/js/jquery-3.3.1.min.js" type="text/javascript"></script> -->

 <script src="/js/cart.js?v=20160713" type="text/javascript"></script>
 <script src="/js/cloud-zoom.1.0.2.min.js?v=20160713"
 type="text/javascript"></script>
 <!-- 	<script src="/js/jquery.thickbox.js?v=20160713" type="text/javascript"></script> -->
 <script src="/js/goods.js?v=20160713" type="text/javascript"></script>
 <script src="/js/NewVersion.js?v=20160713" type="text/javascript"></script>
 <script src="/js/png.js?v=20160713" type="text/javascript"></script>
 <script src="/js/qiangGouPro.js?v=20160713" type="text/javascript"></script>
 <!-- <script src="/js/jquery.cookie.js?v=20160713" type="text/javascript"></script> -->
 <script src='/js/jquery.lazyload.js?v=20160713' type='text/javascript'></script>
 <script type="text/javascript" src="/js/jquery.qrcode.js?v=20160713"></script>

 
 <script type="text/javascript" src="/js/jquery.cookie.js"></script> 
 <script type="text/javascript" src="/js/e3mall.js"></script>

 <script type="text/javascript" src="/js/qrcode.js?v=20160713"></script>
 <script type="text/javascript" src="/js/cookie.js?v=20160416222"></script>
 <script type="text/javascript" src="/js/shadow.js?v=20160416"></script>

 <link href="/images/small_logo.png" rel="shortcut icon" />

 <link rel="stylesheet" type="text/css" href="/css/layer.css">

 <link rel="stylesheet" type="text/css"
 href="/css/base_w1200.css?v=20160713">
 <link rel="stylesheet" type="text/css"
 href="/css/product.css?v=20160713">
 <link rel="stylesheet" type="text/css"
 href="/css/jquery.alerts.css?v=20160713" />
 <link rel="stylesheet" type="text/css"
 href="/css/common.css?v=20160713" />
 <link rel="stylesheet" href="/css/bootstrap.min.css">
 <script type="text/javascript" src="/js/bootstrap.min.js"></script>
 <style media="screen">
  .breadcrumb a {
   color: #666;
 }

 .breadcrumb a:hover {
   color: #e3101e;
   text-decoration: none;
 }

 .pic-items li:hover {
   border: 1px solid red;
 }
</style>
</head>
<body style="background-color: white;">
	<!-- header start -->
	<jsp:include page="commons/header.jsp" />
	<!-- header end -->
	<jsp:include page="commons/mainmenu.jsp" />
	<div class="linknav">
		<div class="breadcrumb"
		style="padding: 0px; margin-bottom: 10px; width: 1200px; height: 30px; margin: 5px auto; background-color: #F6f6f6">
		<strong><a
			href="http://localhost:8085/search.html?keyword=${category }"
			style="font-size: 13px;">${category }&nbsp;</a></strong> <span
			style="font-weight: bold;">&gt;</span> <span
			style="font-size: 12px;"><a
			href="http://localhost:8086/item/${item.id }.html">&nbsp;${item.title }</a>
		</span> <span
		style="float: right; color: #666; font-size: 12px; line-height: 20px; margin: 5px 0px 5px 3px;; width: 85px; height: 20px;">
		<a href="https://www.jd.com/" target="_blank">
			<div class="glyphicon glyphicon-earphone"
			style="float: left; width: 18px; height: 20px; margin: 0px; font-size: 13px; color: blue; line-height: 18px;"></div>
			联系供应商
		</a>
	</span> <span
	style="float: right; color: #666; font-size: 12px; width: 130px; height: 20px; line-height: 20px; margin: 5px;">买多多官方自营旗舰店</span>
	<div class="flag"
	style="background-color: #e4393c; width: 57px; height: 18px; float: right; margin: 6px; text-align: center;">
	<p
	style="color: white; font-size: 12px; height: 18px; width: 57px; margin: 0px; padding: 0px; line-height: 20px;">MDD自营</p>
</div>
</div>
</div>
<div class="pWrap">
	<div class="productIntro">
		<div class="pItems">
			<div class="pItemsMain">
				<div class="pItemsName">
					<div class="cm">
						<h1 id="base_name-sf"
						style="margin: 0px 0px 7px 0px; font-size: 18px; line-height: 26px; color: #5e5e5e; font-weight: 600; overflow: hidden; word-wrap: break-word; width: 500px;">
						${item.title }</h1>
						<span id="adword-sf" title="" class=""
						style="font: 13px simsun; overflow: hidden; color: #e3101e; word-break: break-all; max-height: 35px; font-weight: lighter; line-height: 20px;">${item.sellPoint }</span>
					</div>
				</div>
					<%-- <div class="pItemsPrice" id="price-sf">
                  <div class="priceBox">
                    <span class="dt">优选价：</span><span class="rmb">￥</span>
                    <strong class="price"><fmt:formatNumber groupingUsed="false" maxFractionDigits="2" minFractionDigits="2" value="${item.price / 100 }"/></strong>
                  </div>
                  <div class="boxWb"></div><div id="productStamp" class="productStamp_1"></div>
                </div> --%>
                <div class="price_first"
                style="width: 550; height: 30px; margin: 10px;">
                <span
                style="font: 13px simsun; color: #999; padding-left: 5px; font-weight: 100;">买多多价</span>
                <strong
                style="font: 25px Microsoft YaHei; color: #e4393c; margin-left: 5px;"><span
                style="font-size: 20px;">￥</span>${item.price/100}</strong>
              </div>
              <div class="promotion_first"
              style="width: 550; height: 60px; margin: 20px 10px 10px 10px;">
              <span
              style="font: 13px simsun; color: #999; padding-left: 5px; float: left; font-weight: lighter; line-height: 25px;">促&emsp;&emsp;销</span>
              <div class="promotion_first_content"
              style="float: left; line-height: 25px; margin-left: 15px;">
              <div class="content_top" style="margin-bottom: 8px;">
               <em
               style="font: 12px Microsoft YaHei; color: #df3033; padding: 0px 3px; border: 1px solid #df3033;">满送</em>
               <em
               style="font: 13px Microsoft YaHei; color: #666; margin-left: 5px;">满190元即赠热销商品，赠完即止</em>
             </div>
             <div class="content_bottom">
               <em
               style="font: 12px Microsoft YaHei; color: #df3033; padding: 0px 3px; border: 1px solid #df3033;">优惠</em>
               <em
               style="font: 13px Microsoft YaHei; color: #666; margin-left: 5px;">立刻买，即送9.8折！</em>
             </div>
           </div>
         </div>

         <link href="/css/city-picker.css" rel="stylesheet" type="text/css" />
         <div class="promotion_first_content"
         style="width: 550; height: 60px; margin: 10px;">
         <span
         style="font: 13px simsun; color: #999; padding-left: 5px; font-weight: 100; float: left; margin-top: 8px;">送&emsp;&emsp;至</span>
         <div class="address"
         style="margin: 0px 0px 0px 15px;; float: left;">
         <div class="docs-methods" style="height: 30px;">
           <form class="form-inline">
            <div id="distpicker">
             <div class="form-group">
              <div style="position: relative; font-size: 13px;">
               <input style="font-size: 15px;" id="city-picker3"
               class="form-control" readonly type="text"
               value="北京市/北京市/朝阳区" data-toggle="city-picker">
             </div>
           </div>
           <div class="form-group">
            <button class="btn" id="reset" type="button"
            style="height: 27px; line-height: 15px; font-size: 12px;">重置</button>
            <button class="btn btn-danger" id="destroy" type="button"
            style="height: 26px; line-height: 15px; font-size: 12px;">确定</button>
          </div>
        </div>
      </form>
    </div>
    <div class="address_bottom_left"
    style="float: left; margin: 8px 20px 0px 0px; color: #999">
    <strong>有货</strong>
  </div>
  <div class="address_bottom_right"
  style="float: left; margin: 8px 5px 0px 0px; color: #666">
  支持</div>
</div>
</div>

<div class="pItemsChoose">
	<div class="chooseBtns" id="buy-btn-sf">
		<div class="pAmount" style="margin-left: 0px;">
			<span>
				<input type="text" id="number_${item.id}"
				class="text text1" value="1" style="height: 42px;">
			</span> 
			<span>
				<a href="javascript:;" id="add-sell-num" class="p-add"
				style="font: bold 40px; color: #666;">+</a> 
				<a
				href="javascript:;" id="reduce-sell-num"
				class="p-reduce disable" style="font: bold 40px; color: #999;">-</a>
			</span>
		</div>
		<div class="pBtn" id="cart-add-btn-sf"
		style="height: 42px; margin: 0px 10px;">
		<a style="height: 42px; color: white;"
		onclick="cartAdd(${item.id}, 0, 1, 0, 1, this);"><b></b>加入购物车</a>
	</div>
	<%-- <div class="yj_time" id="sendTime">预计发货时间：<br>2014-02-28 08:59</div> --%>
</div>
</div>
<div class="pItem_bottom"
style="color: #999; margin: 30px 0px 0px 20px; font-size: 12px;">
<span style=""><em>温馨提示&emsp;&emsp;</em>正品保障&emsp;此商品不可使用优惠券</span>
</div>
</div>

<div class="pView">
	<div id="pView">
		<div id="zoom-jpg" class="jqzoom">
			<div id="smallBox" class="small">
				<img id="pic" style="" alt="" width="330" height="330"
				src="${item.images[0]}" />
				<div id="mask" class="mask"></div>
			</div>
			<div id="bigBox" class="big">
				<img src="${item.images[0]}" alt="" id="pic_small">
			</div>
		</div>

		<div id="pic-list"
		style="height: 270px; width: 50px; margin: 0px; padding: 0px; left: 0px; top: 25px;">
							<%-- <a href="javascript:void(0);" class="btn-control disabled" id="btn-forward"><b></b></a>
							<a href="javascript:void(0);" class="btn-control disabled" id="btn-backward"><b></b></a> --%>

							<div class="pic-items"
							style="position: relative; width: 50px; height: 270px; overflow: hidden; top: 0px;">
							<ul class="small-img"
							style="position: relative; left: 0px; top: 0px; height: 262px; margin: 4px 1px; width: 48px;">
							<c:set var="index" value="0" />
							<c:forEach items="${item.images }" var="image">
							<li
							style="float: left; margin: 2px 2px 2px 2px; width: 42px; height: 48px;"
							id='${index}'><img title="${item.title } "
							alt="${item.title }" src="${image}"
							style="width: 40px; height: 45px;"></li>
							<c:set var="index" value="${index+1}" />
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>

		<script type="text/javascript">
			// $(function(){

			// 	$('.p-add').click(function(){
			// 		var num = parseInt($('.text1').val());
			// 		num = num + 1;
			// 		$('.text1').val(num);
			// 	});

			// 	$('.p-reduce').click(function(){
			// 		var num = parseInt($('.text1').val());
			// 		if(num > 1){
			// 			num = num - 1;
			// 			$('.text1').val(num);
			// 		}
			// 	});
			// });

			var smallBox = document.getElementById('smallBox');
			var mask = document.getElementById('mask');
			var bigBox = document.getElementById('bigBox');
			var box = document.getElementById('zoom-jpg')
			var pic_small = document.getElementById('pic_small')
            //鼠标经过小盒子，显示大盒子
            smallBox.onmouseover = function() {
            	bigBox.style.display = "block";
            	mask.style.display = "block";

            }

            smallBox.onmouseout = function() {
            	bigBox.style.display = "none";
            	mask.style.display = "none";
            }
            smallBox.onmousemove = function(event) {
            //遮罩跟随鼠标
            var event = event || widow.event;
            var pageX = event.pageX || event.clientX + document.documentElement.scrollLeft;
            var pageY = event.pageY || event.clientY + document.documentElement.scrollTop;

            //计算mask的位置
            // var boxX = ;
            // var boxY =  ;
            // var targetX = pageX - box.offsetLeft - mask.offsetWidth * 2.3;
            // var targetY = pageY - box.offsetTop - mask.offsetHeight * 1.8;
            var targetX = pageX - box.offsetLeft - mask.offsetWidth * 2.3;
            var targetY = pageY - box.offsetTop - mask.offsetHeight * 1.8;
            //限制mask移动范围
            if (targetX < 0) {
            	targetX = 0;
            }
            if(targetX > 330){
            	targetX = 330;
            }
            if (targetY < 0) {
            	targetY = 0;
            }
            if(targetY > 330){
            	targetY = 330;
            }

            if (targetX > smallBox.offsetWidth - mask.offsetWidth) {
            	targetX = smallBox.offsetWidth - mask.offsetWidth;
            }

            if (targetY > smallBox.offsetHeight - mask.offsetHeight) {
            	targetY = smallBox.offsetHeight - mask.offsetHeight;
            }
            //console.log(smallBox.offsetWidth-mask.offsetWidth);
            // console.log(mask.offsetWidth);
            //console.log(targetX);
            mask.style.left = targetX + "px";
            mask.style.top = targetY + "px";
            //按照比例移动大图
            var bigToMove = pic_small.offsetWidth - bigBox.offsetWidth;
            var maskToMove = smallBox.offsetWidth - mask.offsetWidth;
            var rate = bigToMove / maskToMove;
            pic_small.style.left = -rate * targetX +"px";
            pic_small.style.top = -rate * targetY  + "px";
          }


          function show(canshu1,canshu2){
                var li01 = document.getElementById(canshu1)  //参数1为小图片的id,参数2为大图片的src
                var pic = document.getElementById('pic')    // pic为大图片div的id
                var pic_small = document.getElementById('pic_small')
                li01.onmouseover = function(){
                pic.src = canshu2;                     // 把参数2设为新的src(路径)
                pic_small.src = canshu2;
              }
            }

            <c:set var="index" value="0" />
            <c:forEach items="${item.images }" var="image">
            show('${index}',"${item.images[index] }")    //调用show()，用所有大小图片参数
            <c:set var="index" value="${index+1}" />
          </c:forEach>

        </script>
        <div class="pShare" style="margin-top: 10px;">
         <div class="bdShare">
          <!-- Baidu Button BEGIN -->
          <div id="bdshare" class="bdshare_t bds_tools get-codes-bdshare">
           <span class="bds_more" style="float: left; color: #666">分享到&emsp;</span>
           <ul style="float: left;">
            <li style="float: left;"><a href="#"><img
             src="/images/weixin.png" style="width: 20px; height: 20px;"></img></a>&emsp;</li>
             <li style="float: left;"><a href="#"><img
              src="/images/qq.jpg" style="width: 15px; height: 20px;"></img></a>&emsp;</li>
              <li style="float: left;"><a href="#"><img
               src="/images/weibo.jpg"
               style="width: 23px; height: 23px; line-height: 10px;"></img></a>&emsp;</li>
             </ul>
             <!--a class="bds_t163"></a-->
             <!--a class="shareCount"></a-->
           </div>
         </div>
         <!-- Baidu Button END -->
         <div class="pCollect" style="margin-top: 5px; padding: 0px;">
           <span class="glyphicon glyphicon-star"
           style="margin: 2px 5px;; float: left; font-weight: bold;"></span>
           <a style="text-decoration: none; float: right;"
           href="javascript:void(0);" id="goodsAddFav">收藏</a>
         </div>
         <span class="clear"></span>
       </div>
     </div>
   </div>
   <div class="pItemsSide">
    <div class="sideWrap">
     <div class="points">
      <ul id="points-sf">
       <li><img src="/images/productattr4.png"></li>
       <li class="has_poptip attr3"><img
        src="/images/productattr3.png"></li>
        <li><img src="/images/productattr2.png"></li>
      </ul>
    </div>
  </div>
  <style media="screen">
    .pdetail a {
     color: #999;
     text-decoration: none;
   }

   .pdetail a:hover {
     color: rgb(223, 48, 51);
   }
 </style>
 <div class="pdetail">
  <ul style="color: #999;">
   <li>品牌：<span><a href="#" title="买多多旗下优质品牌"
    target="_blank">买多多旗下优质品牌</a></span></li>
    <li>产地：<span><a title="中国" target="_blank">中国</a></span>
    </li>
    <li>服务：服务到家</li>
    <li>商品编号：<span id="itemId">${item.id }</span></li>
    <li class="card-pay"><span class="card-pay-left">优选卡</span> <span
     class="card-pay-right" style="color: #999">支持优选卡支付</span></li>
   </ul>
   <div class="pDeclare">
     <div class="nosupport">
      <b></b>本品不支持无理由退换货
    </div>
  </div>
</div>
<div class="pcommdetail">
  <dl class="prate">
   <dt>好评度：</dt>
   <dd>
    <div class="dd">
     <span id="positive-sf" style="width: 88%"></span>
   </div>
   <strong><span id="positive-num-sf">88</span><span>%</span></strong>
   <div style="display: none" id="score"></div>
 </dd>
</dl>
<dl class="pcomment" id="bestComment-sf">
 <dd>
  <b></b>
  <div>
   <span>
    <p>还没人评论哦！</p>
    <p>
     <a href="javascript:Goods.gotoPl()" class="green">马上评价</a>
   </p>
 </span>
</div>
</dd>
</dl>
</div>
</div>
<span class="clear"></span>
</div>
</div>
<div class="pWrap">
 <div class="main-box">
  <div id="package"></div>
  <div class="pDetail">
   <ul class="pTab">
    <li class="curr" pcont-target="div-detail"><a title="商品详情"
     href="javascript:void(0);">商品介绍</a></li>
     <li pcont-target="div-comment"><a title="用户评价"
      href="javascript:void(0);">评价<b>(<font
      class="comment-total-sf">0</font>)
    </b></a></li>
  </ul>
</div>
<div class="clear" id="flow-layer-sf"></div>
<div class="pCont cpjs_box" id="div-detail" style="color: #999">
  <ul class="cpjs_list" style="color: #999">
   <li><strong>服&emsp;&emsp;务：</strong>服务到家</li>
   <li><strong>配送：</strong>买多多包邮</li>
   <li><strong>销售单位：</strong>买多多集团</li>
   <%-- <li ><strong>产地：</strong>中国陕西</li> --%>
 </ul>
 <div
 style="background-color: white; padding: 4px 20px 4px 0; line-height: 20px; overflow: hidden; zoom: 1;">
 <span
 style="float: left; width: 100px; text-align: right; padding-right: 6px; margin-right: 6px; color: #6b6b6b;">温馨提示：</span>
 <span
 style="display: block; overflow: hidden; zoom: 1; color: #999;">
 买多多商城所售商品均经过严格的供应商资质审查、商品审查、入库全检、出货全检流程。
 由于部分商品存在厂家更换包装、不同批次、不同生产日期、不同生产工厂等情况，
 导致商品实物与图片存在微小差异，因此请您以收到的商品实物为准， 同时我们会尽量做到及时更新，由此给您带来不便敬请谅解，谢谢！ </span>
</div>
<div class="pJiucuo">
  如果您发现商品信息存在问题，<a target="_blank"
  href="http://www.e3mall.cn/ProductCorrection/ProductCorrection/pId/${item.id}"
  rel="nofollow">欢迎纠错</a>
</div>
<div class="product_info" style="text-align: center;">${itemDesc.itemDesc }</div>
</div>
<div class="pCont" id="div-comment">
 <div class="commentList" id="commandp">
  <div class="pt">
   <h3 class="pTop">&emsp;用户评价</h3>
   <div class="commDetail">
    <div class="pScore">
     好评度<strong><font id="user-comment-sf">100</font><span>%</span></strong>
   </div>
   <div class="pPercent" id="sorce-star-sf">
     <dl>
      <dt>好评</dt>
      <dd class="pBar">
       <div style="width: 100px;"></div>
     </dd>
     <dd>100%</dd>
   </dl>
   <dl>
    <dt>中评</dt>
    <dd class="pBar">
     <div style="width: 0px;"></div>
   </dd>
   <dd>0%</dd>
 </dl>
 <dl>
  <dt>差评</dt>
  <dd class="pBar">
   <div style="width: 0px;"></div>
 </dd>
 <dd>0%</dd>
</dl>
</div>
<div class="pBtns">
 <div>购买过商品，参与评价晒单，可获得积分哦~~</div>
 <div>
  <a class="pbtn2" href="javascript:Goods.gotoPl()"
  rel="nofollow">马上评价</a><span class="showMore"><a
  target="_blank"
  href="http://www.e3mall.cn/html/article/140/133.html"
  rel="nofollow">[如何获取积分]</a></span>
</div>
</div>
</div>
</div>
<div class="commentAll" id="comment-filter-sf">
 <h3 class="curr">
  <a href="javascript:;" data-type="0">全部评价<font>(0)</font></a>
</h3>
<h3>
  <a href="javascript:;" data-type="1">好评<font>(0)</font></a>
</h3>
<h3>
  <a href="javascript:;" data-type="2">中评<font>(0)</font></a>
</h3>
<h3>
  <a href="javascript:;" data-type="3">差评<font>(0)</font></a>
</h3>
<h3>
  <a href="javascript:;" data-type="4">有晒单<font>(0)</font></a>
</h3>
</div>
<div id="have-none-comments" style="padding-left: 20px;">还木有评价额，快来抢沙发吧！</div>
<ul class="pComment" id="comment-lists-sf"></ul>
<div class="plpage">
 <div class="showAll" style="display: none;">
  <a target="_blank" href="/reviewlist/0/${item.id}">[查看全部评价]</a>
</div>
<div class="pages" id="comment-ajax-page-sf">
  <span class="prev disabled"><b class="prevarr"></b>上一页</span><span
  class="current">1</span><span class="next disabled">下一页<b
  class="nextarr"></b></span>
</div>
</div>
</div>
<div class="clear2"></div>
</div>
<div class="clear2"></div>
<div class="l-recommend proRomm" id="recommend-by-view-sf"
style="display: none"></div>
</div>
<div class="left-box">
			<!-- <div id="brandCon" class="catlist" style="">
        <h2 class="t"><strong>相关品牌</strong></h2>
        <ul class="pClass">
          <li style="width:76px;height:22px;float:left;">
            <a target="_blank" href="http://localhost:8085/search.html?keyword=华为手机" title="">华为手机</a>
          </li>
          <li style="width:76px;height:22px;float:left;">
            <a target="_blank" href="http://localhost:8085/search.html?keyword=小米手机" title="">小米手机</a>
          </li>
          <li style="width:76px;height:22px;float:left;">
            <a target="_blank" href="http://localhost:8085/search.html?keyword=华为手机" title="">华为手机</a>
          </li>
          <li style="width:76px;height:22px;float:left;">
            <a target="_blank" href="http://localhost:8085/search.html?keyword=华为手机" title="">华为手机</a>
          </li>
          <li style="width:76px;height:22px;float:left;">
            <a target="_blank" href="http://localhost:8085/search.html?keyword=华为手机" title="">华为手机</a>
          </li>
        </ul>
      </div> -->
      <div class="l-recommend" id="saletop-sf" style="display: none"></div>
      <div class="l-recommend" id="viewBuyDiv" style="display: none;">
       <div class="ct">
        <h2>浏览此商品的顾客还买了</h2>
      </div>
      <div class="cm">
        <ul class="l-buy" id="viewbuy-sf"></ul>
      </div>
    </div>
    <div class="l-recommend">
    	<div class="ct">
    		<h2>
    			<strong>达人选购</strong>
    		</h2>
    	</div>
    	<div class="cm">
    		<ul class="l-buy" id="buyrebuy-sf">
    			<c:forEach items="${itemList}" var="item">						 
    			<li>
    				<div class="p-img">
    					<a target="_blank" href="http://localhost:8086/item/${item.id }.html" title="${item.sellPoint}"><img
    						src="${item.images[0] }"></a>
    					</div>
    					<div class="title-a">
    						<a target="_blank"
    						href="http://localhost:8086/item/${item.id }.html" title="${item.sellPoint}">${item.title }</a>
    					</div>
    					<div class="title-b" title="${item.sellPoint}">${item.sellPoint}</div>
    					<div class="p-price">￥${item.price / 100}</div>
    				</li>
    			</c:forEach>

    		</ul>
    	</div>
    </div>
  </div>
  <div class="clear"></div>
</div>
<div class="clear1"></div>
<jsp:include page="commons/footer.jsp" />
</body>
</html>
