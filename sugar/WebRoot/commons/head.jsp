<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
	<!--header start-->
	<div class="header">
		<div class="top">
			<div class="t_nav">
				<ul>
					<li><a href="${basePath }/index.jsp">sugar网</a><span>|</span></li>
					<li><a href="#">sugar设计论坛</a><span>|</span></li>
					<li><a href="#">商品分类</a><span>|</span></li>
					<li><a href="#">成为设计师</a><span>|</span></li>
					<li><a href="#">成为卖家</a></li>
				</ul>
			</div>
			<div class="t_shop">
				<a href="#">购物车(<span>0</span>)</a>
			</div>
			<%if (session.getAttribute("user") == null){%>
			<div class="t_login">
				<a class="toLogin" href="javascript:void(0)">登录</a><span>|</span><a class="toRegister" href="javascript:void(0)">注册</a>
			</div>
			<%}else{%>
			<div class="t_Islogin">
				<div>
					<span class="name">${user.username }</span>
					<i></i>
				</div>
				<div class="info_xiala">
					<ul>
						<li onclick="toMySugar()"><i class="i_icon" style="background-position:-215px -327px;"></i>我的sugar</li>
						<li class="order"><span style="color:red;position: absolute;top: 34px;left: -30px;font-weight: 600;"></span><i class="i_icon" style="background-position:-234px -57px;"></i>待处理订单</li>
						<li class="quit"><i class="i_icon" style="background-position:-255px -57px;"></i>退出</li>
					</ul>
				</div>
			</div>
			<%}%>
		</div>
		
		<!-- dealOrderWindow start -->
		<div class="dealOrderWindow">
			<div id="dealOrderWindowHeader">
				<span id="configContainer" style="float: left">订单处理</span>
			</div>
			<div id="dealOrderWindowContent" style="padding:30px;overflow: hidden;position:relative;">
				<ul class="ul_shop"></ul>
				<ul class="ul_get" style="margin-top:20px;"></ul>
			</div>
		</div>
		<!-- dealOrderWindow end -->
		
	</div>
	<!--end header-->
	
<script type="text/javascript">
var localdata;
$(function(){
	/* // web消息推送
	var userid = "${user.id}";
	var goEasy = new GoEasy({
		appkey:"9429edab-5d60-470c-979f-c4c8100d079e"
	});
	goEasy.subscribe({
		channel:userid+"_addorder",
		onMessage:function(message){
			var r=confirm("你的店铺有新的订单,订单ID为"+message.content);
			if(r==true){
				window.location.reload(location);
			}else{
				window.location.reload(location);
			}
		}
	}); */
	
	//加载用户消息数量
	if($(".t_Islogin").find(".name").text()!=""){
		$.ajax({
			url: basePath+"/shoporder/findAllOrderWillDeal",
			type: 'post',
			success: function(data){
				var count = Number(data.datamap.shoporderList_shop.length)+Number(data.datamap.shoporderList_get.length);
				if(count!=0){
					$(".order span").text(count);
				}
				localdata = data.datamap;
				//
				for(var i =0;i<localdata.shoporderList_get.length;i++){
					var gethtml = "<li shoporderid='"+localdata.shoporderList_get[i].id+"' style='margin-top:10px;'>订单号：<span>"+localdata.shoporderList_get[i].ordernum+"</span><a class='goget' href='javascript:void(0)' style='display:inline-block;color:#fff;width:90px;height:20px;background:#03a9f4;line-height:20px;text-align:center;border-radius:4px;margin-left:30px;'>收货</a></li>";
					$(".ul_get").append(gethtml);
				}
				for(var i =0;i<localdata.shoporderList_shop.length;i++){
					var shophtml = "<li shoporderid='"+localdata.shoporderList_shop[i].id+"' style='margin-top:10px;'>订单号：<span>"+localdata.shoporderList_shop[i].ordernum+"</span><a class='goshop' href='javascript:void(0)' style='display:inline-block;color:#fff;width:90px;height:20px;background:#03a9f4;line-height:20px;text-align:center;border-radius:4px;margin-left:30px;'>发货</a></li>";
					$(".ul_shop").append(shophtml);
				}
				
				$(".goget").click(function(){
					var shoporderid = $(this).parent().attr("shoporderid");
					$.ajax({
						url: basePath+"/shoporder/updatestatus",
						data: {"shoporderid":shoporderid,"status":3},
						type: 'post',
						success: function(data){
							window.location.reload(location);
						}
					});
					$(".dealOrderWindow").jqxWindow("close");
				});
				$(".goshop").click(function(){
					var shoporderid = $(this).parent().attr("shoporderid");
					$.ajax({
						url: basePath+"/shoporder/updatestatus",
						data: {"shoporderid":shoporderid,"status":2},
						type: 'post',
						success: function(data){
							window.location.reload(location);
						}
					});
					$(".dealOrderWindow").jqxWindow("close");
				});
			}
		});
	}
	
	// jqweight控件
	$(".dealOrderWindow").jqxWindow({
		isModal :true,
		modalOpacity: 0.3,
		theme : theme,
		width : 340,
		minHeight: 200,
		resizable : false,
		autoOpen : false,
	});
	
	// 单击登录按钮的时候
	$(".t_login .toLogin").click(function(){
		window.location.href=basePath+"/page/login.jsp";
	});
	// 单击注册按钮的时候
	$(".t_login .toRegister").click(function(){
		window.location.href=basePath+"/page/register.jsp";
	});
	// 单击用户退出
	$(".quit").click(function(){
		// alert();
		window.location.href=basePath+"/user/logout";
	});
	// 单击待处理订单
	$(".order").click(function(){
		$(".dealOrderWindow").jqxWindow("open");
	});
	// 点击购物车
	$(".t_shop").click(function(){
		if($(".t_Islogin").find(".name").text()==""){
			window.location.href=basePath+"/page/login.jsp"
		}else{
			window.location.href=basePath+"/tologin/userPage/toMyShopCar";
		}
	});
	// 加载购物车的数量
	$.ajax({
		url: basePath+"/shopcar/getCount",
		type: 'post',
		success: function(data){
			$(".t_shop").find("span").text(data.datamap.count);
		}
	});
});
// 跳转到我的用户中心
function toMySugar(){
	window.location.href = basePath+"/page/userInfo.jsp";
}
	
</script>