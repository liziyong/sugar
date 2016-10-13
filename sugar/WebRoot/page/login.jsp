<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar sign in</title>
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
			
			#s_signup{width:100%;height:100%;}
			#s_signup .header{width:100%;height:35px;background:rgba(0,0,0,.7);}
			#s_signup .header .h_content{width:1190px;height:35px;margin:0 auto;}
			#s_signup .header .h_content .c_user{width:auto;height:35px;float:left;color:#fff;}
			#s_signup .header .h_content .c_user .nologin{width:130px;height:35px;}
			#s_signup .header .h_content .c_user .nologin .no_login{color:#fff;display:inline-block;width:70px;height:35px;float:left;line-height:35px;cursor:pointer;}
			#s_signup .header .h_content .c_user .nologin .no_register{color:#bbb;display:inline-block;width:60px;height:35px;float:left;line-height:35px;cursor:pointer;}
			#s_signup .header .h_content .c_user .nologin .no_register:hover{color:#fff;}
			
			#s_signup .header .h_content .c_user .login{width:150px;height:35px;display:none;}
			#s_signup .header .h_content .c_user .login .lo_name{width:90px;height:35px;float:left;}
			#s_signup .header .h_content .c_user .login .lo_msg{width:60px;height:35px;float:left;}
			#s_signup .header .h_content .c_user .login .lospan{display:inline-block;width:auto;height:35px;float:left;line-height:35px;}
			#s_signup .header .h_content .c_user .login .xiala_icon{display:inline-block;width:0px;height:0px;float:left;border-top:6px solid #fff;border-left:3px solid transparent;border-right:3px solid transparent;margin:16px 0 0 10px;}
			
			#s_signup .header .h_content .c_nav{width:auto;height:35px;float:right;}
			#s_signup .header .h_content .c_nav ul{width:400px;height:35px;color:#fff;}
			#s_signup .header .h_content .c_nav ul li{width:auto;height:35px;float:left;padding:0 5px 0 5px;margin-right:20px;}
			#s_signup .header .h_content .c_nav ul li a{width:100%;height:35px;line-height:35px;display:block;}
			
			#s_signup .imgbanner{width:100%;height:220px;}
			#s_signup .imgbanner .mask{width:100%;height:220px;position:absolute;z-index:2;background:rgba(255,255,255,.4);top:0;}
			
			#s_signup .dataform{width:300px;height:300px;margin:20px auto 0 auto;}
			#s_signup .dataform .username input{color:#333;width:100%;height:36px;border-radius:4px;border:1px solid #bbb;text-indent:10px;outline:none;margin-top:20px;}
			#s_signup .dataform .password input{color:#333;width:100%;height:36px;border-radius:4px;border:1px solid #bbb;text-indent:10px;outline:none;margin-top:20px;}
			#s_signup .dataform .login input{width:100%;height:36px;border-radius:4px;border:none;background:#03a9f4;color:#fff;margin-top:20px;cursor:pointer;}
			#s_signup .dataform .toregister{width:100%;height:36px;border:1px solid #03a9f4;border-radius:4px;text-align:center;line-height:36px;color:#03a9f4;margin-top:20px;}
			#s_signup .dataform .toregister .toreg{cursor:pointer;}
			#s_signup .dataform .toregister .toreg:hover{color:#333;}
			
			.clear{clear:both;}
		
		</style>
	</head>
<body>
	<div id="s_signup">
		<!-- header start -->
		<div class="header">
			<div class="h_content">
				<div class="c_user">
					<div class="nologin">
						<span class="no_login">亲，请登录</span>
						<span class="no_register">免费注册</span>
					</div>
					<div class="login">
						<div class="lo_name">
							<span class="lospan">孙肇将</span><i class="xiala_icon"></i>
							<div class=""></div>
						</div>
						<div class="lo_msg">
							<span class="lospan">消息</span><i class="xiala_icon"></i>
							<div class=""></div>
						</div>
					</div>
				</div>
				<div class="c_nav">
					<ul style="">
						<li><a href="#">我的设计</a></li>
						<li><a href="#">我的购物车</a></li>
						<li><a href="#">商品分类</a></li>
						<li><a href="#">卖家中心</a></li>
						<li><a href="#">首页</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- header end -->

		<!-- imgbanner start -->
		<div class="imgbanner" style="position:relative;">
			<img src="${basePath }/images/banner_login.jpg" width="100%" height="220px"/>
			<div class="mask"></div>
		</div>
		<div class="clear"></div>
		<!-- imgbanner end -->

		<!-- dataform start -->
		<div class="dataform">
			<div class="username"><input id="username" type="text" placeholder="请输入用户名" required/></div>
			<div class="password"><input id="password" type="password" placeholder="请输入密码" required/></div>
			<div class="login"><input type="button" value="登录" onclick="ajaxLogin(this)"/></div>
			<div class="toregister">还没有账号？<span class="toreg" onclick="toreg()">免费注册</span></div>
		</div>
		<!-- dataform end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
		
	</div>

<script type="text/javascript">
	// 用户登录
	function ajaxLogin(data){
		var obj = $(data);
		obj.val("登录中...");
		var username = $("#username").val();
		var password = $("#password").val();
		$.ajax({
			url: basePath+"/user/login",
			data: {"username":username,"password":password},
			type: 'post',
			success:function(data){
				if(data.result=="success"){
					// 登录成功，跳转页面
					window.location.href=basePath+"/index.jsp";
				}else{
					// 用户名或者密码出错，打印信息
					alert(data.message);
					obj.val("登录");
				}
			}
		});
	}
	
	// 跳转到注册页面
	function toreg(){
		// alert();
		window.location.href=basePath+"/page/register.jsp";
	}
	
</script>
</body>
  
</html>
