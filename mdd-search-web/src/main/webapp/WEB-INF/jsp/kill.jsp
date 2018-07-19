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
<title>买多多秒杀专场</title>
<link rel="stylesheet" href="/css/base_w1200.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/css/miaosha.css">
<link href="/images/small_logo.png" rel="shortcut icon" />
<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>

</head>
<body>
  <jsp:include page="commons/header.jsp"/>

    <div class="top">
      <ul>
        <li id="top_miaosha_first"><a href="#">买多多秒杀</a></li>
        <li class="top_miaosha"><a href="#">品牌秒杀</a></li>
        <li class="top_miaosha"><a href="#">品类秒杀</a></li>
        <li><a href="#">电脑办公</a></li>
        <li><a href="#">生活电器</a></li>
        <li><a href="#">手机通讯</a></li>
        <li><a href="#">大家电</a></li>
        <li><a href="#">饮料酒水</a></li>
        <li><a href="#">家居家装</a></li>
        <li><a href="#">母婴童装</a></li>
        <li><a href="#">食品生鲜</a></li>
      </ul>
    </div>
    <div class="title_miaosha">
      <img src="/images/title_miaosha.jpg" alt="" class="img-rounded center-block">
    </div>

  <div class="main_list">
    <div class="timer_miaosha">
      <ul>
        <li id="active">
          <span class="timer_h">16:00</span><p>正在秒杀<br/>距结束<span class="timer_hms">01:21:34</span></p>
        </li>
        <li class="ready_active">
          <span class="timer_ready_h">17:00</span>
          <span class="timer_ready_but">即将开始</span>
        </li>
        <li class="ready_active">
          <span class="timer_ready_h">18:00</span>
          <span class="timer_ready_but">即将开始</span>
        </li class="ready_active">
        <li class="ready_active">
          <span class="timer_ready_h">19:00</span>
          <span class="timer_ready_but">即将开始</span>
        </li>
        <li class="ready_active">
          <span class="timer_ready_h">20:00</span>
          <span class="timer_ready_but">即将开始</span>
        </li>
      </ul>
    </div>
    <div class="goods_list">
      <ul>
        <li>
          <a href="#" title="越南进口红心火龙果 4个装 单果约350~420g 新鲜水果">
          <img src="/images/goods/miaosha01.jpg" alt="">
          <p>越南进口红心火龙果 4个装 单果约350~420g 新鲜水果</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
        <li>
          <a href="#" title="惠普（HP） 打印机 281fdw/fdn/180n/181fw 彩色激光多功能一体机 m180n 打印复印扫描 代替176n">
          <img src="/images/goods/miaosha02.jpg" alt="">
          <p>惠普（HP） 打印机 281fdw/fdn/180n/181fw 彩色激光多功能一体机 m180n 打印复印扫描 代替176n</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
                <li>
          <a href="#" title="玖嘉久 酷睿i5/I7/六核1050TI独显家用商务办公吃鸡大型游戏台式机电脑主机整机 电脑主机+24英寸曲面显示器(整套全套) 套餐三（酷睿i5+4G独显+固态+500G双硬盘）">
          <img src="/images/goods/miaosha03.jpg" alt="">
          <p>玖嘉久 酷睿i5/I7/六核1050TI独显家用商务办公吃鸡大型游戏台式机电脑主机整机 电脑主机+24英寸曲面显示器(整套全套) 套餐三（酷睿i5+4G独显+固态+500G双硬盘）</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
                <li>
          <a href="#" title="越南进口红心火龙果 4个装 单果约350~420g 新鲜水果">
          <img src="/images/goods/miaosha04.jpg" alt="">
          <p>越南进口红心火龙果 4个装 单果约350~420g 新鲜水果</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
                <li>
          <a href="#" title="越南进口红心火龙果 4个装 单果约350~420g 新鲜水果">
          <img src="/images/goods/miaosha05.jpg" alt="">
          <p>越南进口红心火龙果 4个装 单果约350~420g 新鲜水果</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
                <li>
          <a href="#" title="越南进口红心火龙果 4个装 单果约350~420g 新鲜水果">
          <img src="/images/goods/miaosha06.jpg" alt="">
          <p>越南进口红心火龙果 4个装 单果约350~420g 新鲜水果</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
                <li>
          <a href="#" title="越南进口红心火龙果 4个装 单果约350~420g 新鲜水果">
          <img src="/images/goods/miaosha07.jpg" alt="">
          <p>越南进口红心火龙果 4个装 单果约350~420g 新鲜水果</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
                <li>
          <a href="#" title="越南进口红心火龙果 4个装 单果约350~420g 新鲜水果">
          <img src="/images/goods/miaosha08.jpg" alt="">
          <p>越南进口红心火龙果 4个装 单果约350~420g 新鲜水果</p>
          </a>
          <div class="miaosha_price">
            <span class="miaosha_price_left">
              <span class="price"><span>￥</span><strong>55</strong><s>￥66</s></span>
              <span class="quantity"><p>已售0%</p><span class="quantity_sell"><span class="quantity_surplus"></span></span></span>
            </span>
            <a href="#"><span class="miaosha_price_right"><p>立即抢购</p></span></a>
          </div>
        </li>
      </ul>
    </div>
  </div>
  <jsp:include page="commons/footer.jsp"/>
  <script>
  jQuery(function(){
  var top=$(".top").offset().top;
  $(window).scroll(function () {
    if ($(window).scrollTop() >= top) {
      $(".top").attr("style", "position:fixed;top:0;left:0;z-index:10;");
    } else {
       $(".top").removeAttr("style");
    }
  }).trigger("scroll");
  });
</script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/e3mall.js"></script>
</body>
