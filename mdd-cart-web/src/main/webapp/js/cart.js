var CART = {
	itemNumChange : function(){
		$(".increment").click(function(){//＋
			var _thisInput = $(this).siblings("input");
			_thisInput.val(eval(_thisInput.val()) + 1);
			$.post("/cart/update/"+_thisInput.attr("itemId")+"/"+_thisInput.val() + ".action",function(data){
				CART.refreshTotalPrice();
			});
		});
		$(".decrement").click(function(){//-
			var _thisInput = $(this).siblings("input");
			if(eval(_thisInput.val()) == 1){
				return ;
			}
			_thisInput.val(eval(_thisInput.val()) - 1);
			$.post("/cart/update/"+_thisInput.attr("itemId")+"/"+_thisInput.val() + ".action",function(data){
				CART.refreshTotalPrice();
			});
		});
		/*$(".itemnum").change(function(){
			var _thisInput = $(this);
			$.post("/service/cart/update/num/"+_thisInput.attr("itemId")+"/"+_thisInput.val(),function(data){
				CART.refreshTotalPrice();
			});
		});*/
	},
	refreshTotalPrice : function(){ //重新计算总价
		var xiaoji = 0;
		var total = 0;
		$(".itemnum").each(function(i,e){
			var _this = $(e);
			xiaoji = (eval(_this.attr("itemPrice")) * 10000 * eval(_this.val())) / 10000;
			total += xiaoji;
			var tt = ("#tp"+ i);
			$(tt).html("￥&nbsp;"+formatCurrency(new Number(xiaoji/100).toFixed(2)));
		});
		$("#allMoney2").html("￥&nbsp;"+formatCurrency(new Number(total/100).toFixed(2)));
	}
};

$(function(){
	// allSelect();
	// selectThis();
	CART.itemNumChange();
});

function formatCurrency(num) {
    num = num.toString().replace(/\$|\,/g,'');
    if(isNaN(num))
        num = "0";
    sign = (num == (num = Math.abs(num)));
    num = Math.floor(num*100+0.50000000001);
    cents = num%100;
    num = Math.floor(num/100).toString();
    if(cents<10)
    cents = "0" + cents;
    for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
    num = num.substring(0,num.length-(4*i+3))+','+
    num.substring(num.length-(4*i+3));
    return (((sign)?'':'-') + num + '.' + cents);
};

function allSelect(){
	if ($("#Zall").prop("checked")){
			$("input[name='cart_list']").prop("checked",true);
	}else{
			$("input[name='cart_list']").prop("checked",false);
	}
}

function selectThis(obj){
	var flag = false;
	if ($(obj).prop("checked") != true){
		flag = false;
	}else{
		flag = true;
		$("input[name='cart_list']").each(function(){
			if($(this).prop("checked") != true){
				flag = false;
			}
		})
	}
	if (flag){
		$("#Zall").prop("checked",true);
	}else{
		$("#Zall").prop("checked",false);
	}
}
