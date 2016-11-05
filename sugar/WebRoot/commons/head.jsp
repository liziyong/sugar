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
						<li><span style="color:red;position: absolute;top: 34px;left: -30px;font-weight: 600;">3</span><i class="i_icon" style="background-position:-234px -57px;"></i>用户信息</li>
						<li class="quit"><i class="i_icon" style="background-position:-255px -57px;"></i>退出</li>
					</ul>
				</div>
			</div>
			<%}%>
		</div>
	</div>
	<!--end header-->
	
<script type="text/javascript">
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
	// 跳转到我的用户中心
	function toMySugar(){
		window.location.href = basePath+"/page/userInfo.jsp";
	}
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
</script>