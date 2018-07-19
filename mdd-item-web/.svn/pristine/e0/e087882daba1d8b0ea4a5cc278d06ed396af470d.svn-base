var E3MALL = {
	checkLogin : function() {
		// console.log("-----------------------1---------------------");
		var _ticket = $.cookie("MDD_TOKEN");
		// console.log("-----------------------2---------------------");
		$.ajax({
			url : "http://localhost:8088/user/token/" + _ticket,
			dataType : "jsonp",
			type : "GET",
			success : function(data) {
				if (data.status == 200) {
					var username = data.data.username;
					$('#login-1').attr('href',
						'http://localhost:8088/user/logout.html');
					$("#login-1").text(username + '~欢迎来到买多多！[ 退出 ]');
				}
			}
		});
	},
    //检查商品是否收藏
    checkFav : function(){
    	var itemId = $('#itemId').text();

    	$.get("/item/checkFav.action",{id:itemId}, function(data){
    		if(data.status == 200){
    			$("#goodsAddFav").text("已收藏");
    		}
    	});
    }
}

$(function() {
	//商品收藏
	$('#goodsAddFav').click(function(){
		// console.log("商品收藏");
		var itemId = $('#itemId').text();
		// console.log(itemId);

		$.post("/item/wishlist.action",{id:itemId}, function(data){
			if(data.status == 200){
				// console.log("商品收藏成功!");
				layer.msg('商品收藏成功!');
				$("#goodsAddFav").text("已收藏");
			}else if(data.status == 201){
				layer.msg('已取消收藏!');
				$("#goodsAddFav").text("收藏");
			}else{
				//页面跳转
				window.location.href=data.data;
			}
		});
	});
	
	$('.p-add').click(function(){
		var num = parseInt($('.text1').val());
		num = num + 1;
		$('.text1').val(num);
	});

	$('.p-reduce').click(function(){
		var num = parseInt($('.text1').val());
		if(num > 1){
			num = num - 1;
			$('.text1').val(num);
		}
	});
	// 查看是否已经登录，如果已经登录查询登录信息
	E3MALL.checkLogin();
	//检查商品是否收藏
	E3MALL.checkFav();
});