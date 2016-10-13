<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar sign up</title>
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
			
			#s_signup .logo{width:1190px;height:43px;margin:0 auto;padding:20px 0;}
			#s_signup .logo span{display:inline-block;zoom:1;height:43px;line-height:43px;margin-left: 6px;font-size: 22px;font-family: '\5FAE\8F6F\96C5\9ED1','\534E\6587\7EC6\9ED1','\9ED1\4F53',arial;font-weight: 400;vertical-align: middle;float:left;color:#000;}
			
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

		<!-- logo start -->
		<div class="logo">
			<div style="float:left;"><img src="images/logo.png" width="120"height="43"/></div>
			<span style="">用户注册</span>
		</div>
		<!-- logo end -->

		<!-- nav start -->
		<div class="nav">
			<ul>
				<li>设置邮箱</li>
				<li>填写账号信息</li>
				<li>注册成功</li>
			</ul>
		</div>
		<!-- nav end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
		
	</div>

<script type="text/javascript">
	
</script>
</body>
  
</html>
