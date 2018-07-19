var E3MALL = {
	checkLogin : function(){
		console.log("-----------------------1---------------------");
		var _ticket = $.cookie("MDD_TOKEN");
		console.log("-----------------------2---------------------");
		if(!_ticket){
			return ;
		}
		$.ajax({
			url : "http://localhost:8088/user/token/" + _ticket,
			dataType : "jsonp",
			type : "GET",
			success : function(data){
				if(data.status == 200){
					var username = data.data.username;
					$('#login-1').attr('href',
							'http://localhost:8088/user/logout.html');
					$("#login-1").text(username + '~欢迎来到买多多！[ 退出 ]');
				}
			}
		});
	}
}

$(function(){
	// 查看是否已经登录，如果已经登录查询登录信息
	E3MALL.checkLogin();
});