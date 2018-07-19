<link rel="stylesheet" href="/css/bootstrap.min.css">
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script type="text/javascript">

function removeElement(id)
  {
  document.getElementById(id).style.display="none";
  }

  $(document).ready(function(){
      $(document).off('click.bs.dropdown.data-api');
  });
  
  jQuery(function(){
	    var top=$(".topMenu").offset().top;
	    $(window).scroll(function () {
	      if ($(window).scrollTop() >= top) {
	        $(".topMenu").attr("style", "position:fixed;top:0;left:0;z-index:99999;background-color:#ddd;");
	      } else {
	         $(".topMenu").removeAttr("style");
	      }
	    }).trigger("scroll");
	    });

</script>

<style media="screen">
a:hover{
  text-decoration:underline;
  color: red;
}

.nav > li:hover .dropdown-menu { display: block; }

.menuSeond{
  float: left;
  width: 200px;
  height:200px;
  margin: 10px 5px 0px 20px;
  text-align: left;
}
.menuSeond a{
  line-height: 33px;
  margin: 0 20px 0 0;
  font-size: 14px;
}
h5{
  font-weight:bold;
  color: #8B8682;
  font-family:Microsoft YaHei;
  margin-bottom: 20px;
}

.menuSeond ul{
  float: left;
  margin-right: 10px;
}

</style>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="bar1" class="ad" style="height: 100px; background:url(/images/html/headerBC.jpg);">
  <a href="https://cuxiao.suning.com/temaishijiebei.html" target="_blank">
    <img src="/images/html/headerAD01.jpg" alt="">
  </a>
  <a href="#">
  <span class="glyphicon glyphicon-remove" onclick="removeElement('bar1')"
  style="float:right;font-size: 20px; margin: 10px 10px 0 0;color:white;"></span>
  </a>
</div>
<div class="topMenu" style="background-color: #DDD;">
  <div class="pW">
    <ul class="nav nav-pills" style="height:28px;font-size:10px;">
    <!-- 垂直展示 -->
    <!-- <ul class="nav nav-pills nav-stacked"> -->
      <li class="" style="height:28px;"><a id="login-a-2" href="http://localhost:8088/page/login.html" style="padding-top:5px;padding-bottom:5px;">登录</a></li>
      <li style="height:28px;"><a href="http://localhost:8088/page/register.html" style="padding-top:5px;padding-bottom:5px;">免费注册</a></li>
      <li class="dropdown" style="height:28px;float:right;">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-top:5px;padding-bottom:5px;">
          <span class="glyphicon glyphicon-phone"></span>
          移动版<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <div class="" style="width: 150px;height:200px;color: red;">
              <img src="/images/qr.jpg" alt="" style="width: 140px;margin: 5px 0px 10px 8px;">
              <em>扫描我，即可下载</em><br>
              <strong>买多多商城客户端</strong>
            </div>
          </ul>
      </li>
      <li class="dropdown" style="height:28px;float:right;">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-top:5px;padding-bottom:5px;">
          帮助中心<span class="caret"></span></a>
          <ul class="dropdown-menu" style="background-color:#F0F0F0;">
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">购物指南</a></li>
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">配送服务</a></li>
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">支付方式</a></li>
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">售后服务</a></li>
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">客服邮箱</a></li>
            <li><a target="_blank" href="http://localhost:8088/page/admin/login.html" style="color: #8B8682;font-family:Microsoft YaHei;">后台管理</a></li>
          </ul>
      </li>
      <li class="dropdown" style="height:28px;float:right;">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-top:5px;padding-bottom:5px;">
          网站导航<span class="caret"></span></a>
          <ul class="dropdown-menu pull-right" style="height: 210px;">
            <li>
              <div style="width:580px;height:200px;">
              <div class="menuSeond" style="text-align: left;">
                <h5 style="">商品分类</h5>
                <ul>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=手机" target="_blank">手机</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=电脑" target="_blank">电脑</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=食品" target="_blank">食品</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=酒水饮料" target="_blank">酒水饮料</a></li>
                </ul>
                <ul>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=休闲食品" target="_blank">休闲食品</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=家居" target="_blank">家居</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=服饰" target="_blank">服饰</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=优选国际" target="_blank">优选国际</a></li>
                </ul>
              </div>
              <div class="menuSeond">
                <h5 style="">特色频道</h5>
                <ul>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">跨境直发</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">健康养生</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8085/search.html?keyword=秒杀" target="_blank">秒杀</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">买什么</a></li>
                </ul>
                <ul>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">国际站</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">俄语站</a></li>
                </ul>
              </div>
              <div class="menuSeond" style="width:100px;height:220px;">
                <h5 style="">更多精选</h5>
                <ul>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">合作招商</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">企业采购</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">校园加盟</a></li>
                  <li><a name="sfbest_hp_hp_head_category1" class="trackref" href="http://localhost:8082" target="_blank">服务市场</a></li>
                </ul>
              </div>
              </div>
            </li>
          </ul>
      </li>
      <li class="dropdown" style="float:right;height:28px;">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-top:5px;padding-bottom:5px;">
          我的优选<span class="caret"></span></a>
          <ul class="dropdown-menu" style="background-color:#F0F0F0;">
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">我的积分</a></li>
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">我的收藏</a></li>
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">账户余额</a></li>
            <li><a href="http://localhost:8082" style="color: #8B8682;font-family:Microsoft YaHei;">我的优惠</a></li>
          </ul>
      </li>
      <li class=""  style="float:right;height:28px;"><a href="http://localhost:8092/page/order.html"  style="padding-top:5px;padding-bottom:5px;">我的订单</a></li>
      <%-- "margin-left: 550px; --%>
    </ul>
    <span class="clear"></span>
  </div>
  <script type="text/javascript" src="/js/e3mall.js"></script>
  <script type="text/javascript" src="/js/jquery.cookie.js"></script>
</div>
