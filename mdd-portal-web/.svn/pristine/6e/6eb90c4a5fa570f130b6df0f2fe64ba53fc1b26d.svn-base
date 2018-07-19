var E3MALL = {
	checkLogin : function() {
		var _ticket = $.cookie("MDD_TOKEN");
		if (!_ticket) {
			return;
		}
		$.ajax({
			url : "http://localhost:8088/user/token/" + _ticket,
			dataType : "jsonp",
			type : "GET",
			success : function(data) {
				if (data.status == 200) {
					var username = data.data.username;
					
					$('#login-a-2').attr('href',
							'http://localhost:8088/user/logout.html');
					$("#login-a-2").text(username + '~欢迎来到买多多！[ 退出 ]');
					$('#login-a-1').attr('href',
							'http://localhost:8088/user/logout.html');
					$("#login-a-1").text('退出');
					$("#welcome-h5").text(username + '~欢迎来到买多多！');
				}
			}
		});
	}
}

$(function() {
	// 查看是否已经登录，如果已经登录查询登录信息
	E3MALL.checkLogin();
});