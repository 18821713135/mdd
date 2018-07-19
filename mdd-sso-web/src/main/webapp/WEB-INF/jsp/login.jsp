<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>登录买多多购物商城</title>
       <link rel="stylesheet" type="text/css" href="/css/jquery.alerts.css" />
<link rel="stylesheet" type="text/css" href="/css/headerfooterindex.css" />
<link rel="stylesheet" type="text/css" href="/css/login.css" />
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link href="/images/small_logo.png" rel="shortcut icon" />
<script type="text/javascript" src="/js/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="/js/jquery.cookie.js"></script>
<script type="text/javascript" src="/js/jquery.alerts.js"></script>
<script type="text/javascript" src="/js/png.js"></script>
<script type="text/javascript" src="/js/cas.login.js"></script>
<script type="text/javascript" src="/js/capsLock.js"></script>
<script type="text/javascript" src="/js/bootstrap.min.js"></script>

</script>
</head>
<body>
	<!-- header -->

	<div class="header">
		<a href="http://www.mdd.com"><img src="/images/logo_white.jpg" border="0" style="width:200px;height:77px;margin: 15px 0 20px 0;"></a>
    <div class="sign" style="float:right;margin:30px 0px 0 0 ;width:400px;">
      <img src="/images/sign.jpg"></img>
    </div>
	</div>
	<!-- login_main -->
	<div class="login_main clear">
		<!-- login -->
    <div style="width:1040px;margin:auto;height:650px;background:url(/images/login_bc.jpg)">

		<div class="login" style="margin-top:50px;background-color:white;width:360px;height:455px;border-radius:2px;">
			<%-- <div class="login_header">
    	<span>您还未登录</span>
    	<a href="/page/register.html">免费注册</a>
    </div> --%>

			<div class="login_box clear" style="width:360px;height:455px;border-radius:2px;position:absolute;">
        <div class="" style="float:left;width:360px;height:50px;border-bottom:1px solid #ddd;">
          <ul class="loginnav" >
            <li class="curr" mark="sfbest" style="margin-top:15px;text-align:center;color:#f10180;font-size:18px;font-weight:700;border:none;">账户登录</li>
          </ul>
        </div>


				<div class="logincon" style="float:left;width:360px;">
					<ul style="width:360px;padding:20px 25px 0 25px;">
					<form id="formlogin" method="post" >
						<%-- <div style="display:none;">
       			</div>
						<li style="display:none;"><span class="title">BGCode</span>
              <span class="border">
                <input type="hidden" name="bgcode" id="bgcode" value="sfbest" class="loginText">
                <em class="icon1" id="bgcode_em"></em>
              </span>
              <span id="uNameErr"></span>
						</li> --%>
						<li>
              <span class="title"><font style="padding-left:20px" class="error_line" color="#ff0000"></font></span>
						  <span class="border" style="position:relative">
    						<input id="username" name="username" type="hidden" accesskey="n" value="" size="25" autocomplete="off" >
    						<input class="new-input1 new-color" tabindex="1" data-clear-btn="true" id="loginname" size="28" autocomplete="off" required placeholder="手机号/邮箱/用户名" htmlescape="true" title="请输入用户名">
  						  <em class="icon1" id="usernamelogo"></em>
  						  <span style="position: absolute; font-size: 14px; left: 5px; top: 9px;display:none;" class="sfbest_username_place">请输入手机号/邮箱/用户名</span>
							</span>
						  <span id="sfbestNameErr"></span>
						</li>

						<li class="m-t12" style="margin-top:0px;">
							<span class="title"></span>
							<span class="border" style="position:relative">
								<input id="password" name="password" required placeholder="密码" class="required" tabindex="2" type="password" value="" autocomplete="off">
							    <em class="icon2" id="passwordlogo"></em>
						<span style="position: absolute; font-size: 14px; left: 5px; top: 9px;display:none;" class="sfbest_password_place">密码</span>
							</span>
							<span id="sfbestPwdErr"></span>
						</li>
						<div class="clear"></div>
            <li>
              <div class="code" style="width:310px;height:40px;padding-top:20px;">
                <input type="text" name="code" value="" style="width:150px;height:30px;border:1px solid #bdbdbd;margin-top:0px;"/>
                <a href="" style="float:right;margin-left:10px;">看不清<br/>换一张</a>
                <img src="/user/login/code" alt="" style="float:right;width:100px; height:32px;">

              </div>
            </li>
						<li style="margin:25px 0 8px 0;">
							<div style="width: 65px; margin-left: 260px;">
								<a href="https://passport.www.mdd.com/reg/findpass/?returnUrl=http://www.www.mdd.com" class="forget-passWord">忘记密码?</a>
							</div>
						</li>
						<li class="m-t5" id="btn_sub" style="height:75px;border-bottom:1px solid #ddd;">
							<input type="hidden" name="lt" value="LT-7055357-If097ZfAK0WqnrgGeScsi6SndWWZFv-sfbest">
							<input type="hidden" name="execution" value="">
							<input type="hidden" name="_eventId" value="submit">

							<a href="javascript:void(0)" id="login_sub" class="login_btn">登录</a>
						</li>
					<div>
</div></form>
					</ul>
				</div>

        <div class="register">
          <a href="http://localhost:8088/page/register.html" style="float:right;margin:35px 20px 0 0;">免费注册</a>
        </div>

				<ul class="blink" style="width:250px;height:50px;float:left;">
					<li class="p-f10">
						<h2 class="h2" style="margin-top:-5px;">合作网站账户登录：</h2>
						<div>
							<a href="http://api2.www.mdd.com/unionlogin/qq/oauth/qq_login.php?returnUrl=http://www.www.mdd.com/" class="link">QQ</a>&nbsp;|&nbsp; <a href="https://api.weibo.com/oauth2/authorize?client_id=1800908332&amp;redirect_uri=https%3A%2F%2Fpassport.www.mdd.com%2Fcallback%2Fsina&amp;response_type=code&amp;state=&amp;display=?returnUrl=http://www.www.mdd.com/" class="link">新浪微博</a> &nbsp;|&nbsp; <a href="https://open.t.qq.com/cgi-bin/oauth2/authorize?client_id=801198099&amp;redirect_uri=https%3A%2F%2Fpassport.www.mdd.com%2Fcallback%2Fqq&amp;response_type=code&amp;type=?returnUrl=http://www.www.mdd.com/" class="link">腾讯微博</a> &nbsp;|&nbsp; <a href="http://api2.www.mdd.com/unionlogin/alipay.php?returnUrl=http://www.www.mdd.com/" class="link">支付宝</a>
						</div>
					</li>
				</ul>
			</div>
		</div>
  </div>
		<!-- /login -->
	</div>
	<!-- /login_main -->
	<div class="footer">
		<span> <a href="http://www.www.mdd.com/www/379/5109.html" rel="nofollow" class="footerlink1">关于我们</a> | <a href="http://www.www.mdd.com/www/380/5116.html" rel="nofollow" class="footerlink1">联系我们</a> | <a href="http://www.www.mdd.com/www/381/5117.html" rel="nofollow" class="footerlink1">招聘人才</a> | <a href="http://www.www.mdd.com/www/330/2705.html" rel="nofollow" class="footerlink1">友情链接</a> | <a href="http://supplier.www.mdd.com/supplierApply" rel="nofollow" class="footerlink1">供应商申请</a>
		</span>
		<p>
			北京买多多电子商务有限公司<br> 北京市公安局顺义分局备案11011302000890号|<a href="http://www.miibeian.gov.cn" target="_blank" rel="nofollow" class="footerlink1">京ICP备12011349号</a>|<a href="http://www.www.mdd.com/www/174/461.html" target="_blank" rel="nofollow" class="footerlink1">企业营业执照</a><br> Copyright© 买多多商城
			www.mdd.com 版权所有<br>
		</p>
	</div>
	<!-- /footer -->
	<script type="text/javascript">
	var redirectUrl = "${redirect}";
	var LOGIN = {
			checkInput:function() {
				$("#sfbestNameErr").attr("class", "").html("").prev().attr("class", "border");
				$("#sfbestPwdErr").attr("class", "").html("").prev().attr("class", "border");

				if(!$("#formlogin #loginname").val()) {
					$("#sfbestNameErr").attr("class", "error").show().html("请输入用户名").prev().attr("class", "border-error");
					return false;
				}
				if(!$("#formlogin input[name='password']").val()) {
				    $("#sfbestPwdErr").attr("class", "error").show().html("请输入密码").prev().attr("class", "border-error");
			        return false;
				}
				$("#username").val($("#loginname").val());
				return true;
			},
			doLogin:function() {
				$.post("/user/login", $("#formlogin").serialize(),function(data){
					if (data.status == 200) {
						jAlert('登录成功！',"提示", function(){
							if (redirectUrl == "") {
								location.href = "http://localhost:8082";
							} else {
								location.href = redirectUrl;
							}
						});

					} else {
						jAlert("登录失败，原因是：" + data.msg,"失败");
					}
				});
			},
			login:function() {
				if (this.checkInput()) {
					this.doLogin();
				}
			}
		};
	$(function(){
		$("#login_sub").click(function(){
			LOGIN.login();
		});
	});
</script>

</html>
