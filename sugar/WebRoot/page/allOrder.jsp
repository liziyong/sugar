<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar allOrder</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<%@include file="/commons/public.jsp" %>

		<style type="text/css">
			*{margin:0;padding:0;}
			body{width:100%;height:100%;font-size:12px;font-family:'微软雅黑';color:#bbb;}
			li{list-style:none;}
			a{text-decoration:none;color:#fff;}
			
			#mysugar{width:100%;height:auto;}
			
			#mysugar .content{width:1225px;height:auto;margin:0 auto 60px auto;position:relative;}
			#mysugar .content .c_left{width:160px;height:500px;background:rgba(0,0,0,.4);position:absolute;top:40px;left:0;}
			#mysugar .content .c_left.fixed{position:fixed;top:10px;left:62px;}
			#mysugar .content .c_left ul li{width:100%;height:40px;position:relative;}
			#mysugar .content .c_left ul .set{margin-top:260px;}
			#mysugar .content .c_left ul .set i{width:20px;height:20px;background:url("${basePath}/images/icon1.png") no-repeat;background-position:-688px -406px;display:inline-block;margin:8px auto;line-height:35px;}
			#mysugar .content .c_left ul li.on{background:#adb0b1;}
			#mysugar .content .c_left ul li:hover{background:#adb0b1;}
			#mysugar .content .c_left ul li a{display:block;width:100%;height:40px;text-align:center;line-height:40px;color:#fff;font-size:14px;}
			#mysugar .content .c_left ul li span{position:absolute;right:0;top:17px;display:inline-block;width:0;height:0;border-right:6px solid #fff;border-top:4px solid transparent;border-bottom:4px solid transparent;}
			
			#mysugar .content .c_right{width:1020px;height:auto;float:right;margin-top:40px;}
			#mysugar .content .c_right .r_logo{width:100%;height:80px;}
			#mysugar .content .c_right .r_logo .logo{float:left;}
			#mysugar .content .c_right .r_logo .title{float: left;height: 80px;line-height: 80px;margin-left: 6px;font-size: 22px;font-family: '\5FAE\8F6F\96C5\9ED1','\534E\6587\7EC6\9ED1','\9ED1\4F53',arial;font-weight: 400;color: #000;}
			
			#mysugar .content .c_right .r_class{width:100%;height:40px;margin-top:20px;border-bottom:2px solid #bbb;}
			#mysugar .content .c_right .r_class ul li{position:relative;padding:0 40px 0 40px;height:40px;float:left;border-bottom:2px solid #bbb;}
			#mysugar .content .c_right .r_class ul li i{position:absolute;width:0px;height:20px;border:1px solid #bbb;top:10px;right:0;background:#bbb;}
			#mysugar .content .c_right .r_class ul li.on{border-bottom:2px solid #03a9f4;}
			#mysugar .content .c_right .r_class ul li a{display:block;height:40px;line-height:40px;text-align:center;font-size:14px;color:#333;font-weight:bold;}
			#mysugar .content .c_right .r_class ul li a span{color:#03a9f4;margin-left:10px;font-weight:normal;}
			#mysugar .content .c_right .r_class ul li a.on{color:#03a9f4;}
			
			#mysugar .content .c_right .r_order{width:100%;margin-top:20px;}
			#mysugar .content .c_right .r_order .shopClass{width:100%;height:auto;margin-top:30px;border:1px solid #bbb;}
			#mysugar .content .c_right .r_order .shopClass .s_shopTop{width:100%;height:30px;border-bottom:1px solid #bbb;}
			#mysugar .content .c_right .r_order .shopClass .s_shopTop .s_orderId{width:300px;height:30px;line-height:30px;float:left;}
			#mysugar .content .c_right .r_order .shopClass .s_shopTop .s_shopName{width:200px;height:30px;line-height:30px;float:left;}
			#mysugar .content .c_right .r_order .shopClass .s_shopTop .s_shopName .sn_img{display:inline-block;vertical-align:middle;float:left;margin:6px 4px 0 10px;}
			#mysugar .content .c_right .r_order .shopClass .s_shopTop .s_shopName .sn_name{line-height:30px;height:30px;float:left;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList{width:100%;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul{width:90%;float:left;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li{width:100%;height:80px;background:#e8f8ff;margin-bottom:1px;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsCheck{display:inline-block;float:left;margin:10px 0 0 20px;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsInfo{width:380px;height:80px;float:left;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsInfo .g_goodsPic{display:inline-block;float:left;margin:10px 0 0 10px;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsInfo .g_goodsDetail{width:300px;height:80px;float:left;line-height:80px;margin-left:10px;color:#333;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsPrice{height:80px;float:left;line-height:80px;margin-left:60px;color:#333;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsCount{height:80px;float:left;line-height:80px;margin-left:60px;color:#333;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsTotal{height:80px;float:left;line-height:80px;margin-left:60px;color:#333;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsStatus{height:80px;float:left;line-height:80px;margin-left:60px;color:#333;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsDel a{color:#bbb;}
			#mysugar .content .c_right .r_order .shopClass .s_shopList ul li .goodsDel a:hover{color:#333;}
			
			#mysugar .content .c_right .r_pagecount{width:100%;font-size:15px;color:#27d5bf;margin:30px auto 0 auto;height:30px;}
			#mysugar .content .c_right .r_pagecount .p_content{float:right;height:30px;}
			
			.clear{clear:both;}
		
		</style>
	</head>
<body>
	<div id="mysugar">
		<!-- header start -->
		<jsp:include  page="/commons/head.jsp"/>
		<!-- header end -->
		
		<!-- content start -->
		<div class="content">
			<div class="c_left">
				<ul>
					<li><a href="${basePath }/page/userInfo.jsp">账号设置</a></li>
					<li><a href="${basePath }/tologin/userPage/toMyShopCar">我的购物车</a></li>
					<li class="on"><a href="javascript:void(0)">我的交易记录</a><span></span></li>
					<li><a href="#">我的设计</a></li>
					<li><a href="#">我的商店</a></li>
					<li class="set"><a href="#"><i></i></a></li>
				</ul>
			</div>
			<div class="c_right">
				<div class="r_logo">
					<div class="logo"><img src="${basePath}/images/logo.png" width="120" height="80px"/></div>
					<div class="title">我的交易记录</div>
				</div>
				<div class="r_class">
					<ul>
						<li class="on"><a class="on" href="${basePath }/tologin/userPage/toAllOrder">所有订单</a><i></i></li>
						<li><a href="${basePath }/tologin/userPage/toAllOrder?st=1">待发货</a><i></i></li>
						<li><a href="${basePath }/tologin/userPage/toAllOrder?st=2">待收货</a><i></i></li>
						<li><a href="${basePath }/tologin/userPage/toAllOrder?st=3">待评价</a></li>
					</ul>
				</div>
				<div class="r_order">
					<%if(request.getAttribute("mapList") == null){%>
						<div style="width:100%;height:200px;text-align:center;line-height:200px;font-size:14px;color:#333;">没有相关订单...</div>
					<%}else{%>
					<c:forEach items="${mapList }" var="item">
					<div class="shopClass" shoporderid="${item.shoporder.id }"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="${basePath }/images/shop.png" width="16" height="16"/><div class="sn_name">店铺：${item.shop.shopname }</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：${item.shoporder.ordernum }</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<c:forEach items="${item.shopid }" var="its">
								<li goodid="${its.good.id}">
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="${basePath }/images/good/${its.good.id}/1.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">${its.good.goodname }</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">${its.good.goodnprice }</span></div>
									<div class="goodsCount">数量：${its.goodcount }</div>
									<div class="goodsTotal">合计：<span style="color:red;">${its.allmoney }</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">${item.status }</span></div>
								</li>
								</c:forEach>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">删除订单</a></div>
							<div class="clear"></div>
						</div>
					</div>
					</c:forEach>
					<%}%>
				</div>
			</div>
			<div class="clear"></div>
			<div class="addcommentswindow" style="display:none;position:fixed;width:500px;height:200px;z-index:10000;top:50%;left:50%;background:#fff;border-radius:4px;margin-top:-100px;margin-left:-250px;">
				<span style="display:inline-block;width:100%;hieght:30px;text-indent:5px;line-height:30px;">评价</span>
				<div class="comments" contenteditable="true" style="margin-left:1px;width:496px;height:130px;border:1px solid #bbb;"></div>
				<div class="okbutton" style="width:120px;height:30px;background:#fff;color:#333;border:1px solid #03a9f4;cursor:pointer;text-align:center;line-height:30px;float:left;margin:4px 0 0 115px;">确认</div>
				<div class="canclebutton" style="width:120px;height:30px;background:#03a9f4;color:#fff;text-align:center;cursor:pointer;line-height:30px;float:left;margin:4px 0 0 30px;">取消</div>
			</div>
			<div class="addcommentswindowmask" style="display:none;position:fixed;width:100%;height:100%;background:rgba(0,0,0,.4);z-index:9999;top:0;left:0;"></div>
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
	</div>

<script type="text/javascript">
$(function(){
	var goodidarray = new Array();
	$(window).scroll(function(){
		var topScr=$(window).scrollTop();
		if(topScr>70){
			$("#mysugar .content .c_left").addClass("fixed");
		}else{
			$("#mysugar .content .c_left").removeClass("fixed");
		}
	});
	
	//
	var href = window.location.href;
	if(href.indexOf("=")!=-1){
		var status = href.split("=")[1];
		if(status=="1"){
			$(".r_class ul").find("li").eq(1).addClass("on").siblings().removeClass("on");
			$(".r_class ul").find("li").eq(1).find("a").addClass("on");
			$(".r_class ul").find("li").eq(1).siblings().find("a").removeClass("on");
		}else if(status=="2"){
			$(".r_class ul").find("li").eq(2).addClass("on").siblings().removeClass("on");
			$(".r_class ul").find("li").eq(2).find("a").addClass("on");
			$(".r_class ul").find("li").eq(2).siblings().find("a").removeClass("on");
		}else if(status=="3"){
			$(".r_class ul").find("li").eq(3).addClass("on").siblings().removeClass("on");
			$(".r_class ul").find("li").eq(3).find("a").addClass("on");
			$(".r_class ul").find("li").eq(3).siblings().find("a").removeClass("on");
		}else{
			$(".r_class ul").find("li").eq(0).addClass("on").siblings().removeClass("on");
			$(".r_class ul").find("li").eq(0).find("a").addClass("on");
			$(".r_class ul").find("li").eq(0).siblings().find("a").removeClass("on");
		}
	}
	
	//
	var array = $(".goodsStatus");
	for(var i = 0;i<array.length;i++){
		
		if($(array[i]).find("span").text()=="已关闭"){
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_buy").show();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_sure").hide();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_comment").hide();
		}
		if($(array[i]).find("span").text()=="待发货"){
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_buy").hide();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_sure").show();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_comment").hide();
		}
		if($(array[i]).find("span").text()=="待收货"){
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_buy").hide();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_sure").show();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_comment").hide();
		}
		if($(array[i]).find("span").text()=="待评价"){
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_buy").hide();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_sure").hide();
			$(array[i]).find("span").parent().parent().parent().siblings(".deal_comment").show();
		}
	}
	
	$(".deal_buy").click(function(){
		var shoporderid = $(this).parent().parent().attr("shoporderid");
		$.ajax({
			url: basePath+"/shoporder/del",
			data: {"shoporderid":shoporderid},
			type: 'post',
			success: function(data){
				showInfo("订单删除成功","success");
				$(this).parent().parent().remove();
			}
		});
	});
	
	$(".deal_sure").click(function(){
		var shoporderid = $(this).parent().parent().attr("shoporderid");
		$.ajax({
			url: basePath+"/shoporder/updatestatus",
			data: {"shoporderid":shoporderid,"status":"3"},
			type: 'post',
			success: function(data){
				showInfo("已经收货，可以评价了~","success");
			}
		});
	});
	
	$(".deal_comment").click(function(){
		var _length = $(this).parent().find("ul li").length;
		for(var j = 0;j<_length;j++){
			var _goodid = $(this).parent().find("ul li").eq(j).attr("goodid");
			goodidarray.push(_goodid);
		}
		//打开窗口
		$(".addcommentswindow").show();
		$(".addcommentswindowmask").show();
		
		// 点击取消
		$(".canclebutton").click(function(){
			$(".addcommentswindow").hide();
			$(".addcommentswindowmask").hide();
		});
		
		// 点击确认
		$(".okbutton").click(function(){
			//准备数据
			var comments = $(".addcommentswindow .comments").text();
			$.ajax({
				url: basePath+"/commentsList/add",
				data: {"goodidarray":goodidarray,"comments":comments},
				type: 'post',
				traditional: true,
				async: false,
				success: function(data){
					showInfo("添加评论成功~","success");
					var shoporderid = $(this).parent().parent().attr("shoporderid");
					var status = "0";
					$.ajax({
						url: basePath+"/shoporder/updatestatus",
						data: {"shoporderid":shoporderid,"status":status},
						type: 'post',
						success: function(data){
							showInfo("已经收货，可以评价了~","success");
						}
					});
				}
			});
			$(".addcommentswindow").hide();
			$(".addcommentswindowmask").hide();
		});
	});
	
});

</script>
</body>
  
</html>
