<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar showGoods</title>
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
			
			#showGoods{width:100%;height:100%;}
			
			#showGoods .content{width:100%;background:#fff;}
			#showGoods .content .m_nav{width:100%;height:100px;background:#fff;position:absolute;top:40px;left:0;}
			#showGoods .content .m_nav.fixed{position:fixed;top:0px;left:0px;border-bottom:1px solid #f6f6f6;}
			#showGoods .content .m_nav .n_nav{width:1226px;height:100px;margin:0 auto;}
			#showGoods .content .m_nav .n_nav .logo{width:180px;height:100px;display:block;text-align:center;float:left;}
			#showGoods .content .m_nav .n_nav .nav{width:700px;height:100px;float:left;}
			#showGoods .content .m_nav .n_nav .nav ul li{height:100px;float:right;padding-left:15px;padding-right:15px;line-height:100px;}
			#showGoods .content .m_nav .n_nav .nav a{height:100px;display:block;font-size:16px;color:#000;}
			#showGoods .content .m_nav .n_nav .search{width:320px;height:75px;float:right;padding-top:25px;position:relative;}
			#showGoods .content .m_nav .n_nav .search input{width:235px;height:50px;float:right;outline:none;padding-left:10px;}
			#showGoods .content .m_nav .n_nav .search .s_icon{width:52px;height:52px;display:block;border:1px solid #bbb;float:right;border-left:0;}
			#showGoods .content .m_nav .n_nav .search .s_a{position:absolute;top:42px;right:64px;line-height:18px;}
			#showGoods .content .m_nav .n_nav .search .s_a a:hover{background:#03a9f4;color:#fff;}
			#showGoods .content .m_nav .n_nav .search .s_a .ex_s1{text-align:center;color:#757575;width:auto;height:18px;display:block;background:#eee;float:left;padding:0 5px 0 5px;}
			#showGoods .content .m_nav .n_nav .search .s_a .ex_s2{text-align:center;color:#757575;width:auto;height:18px;display:block;background:#eee;float:left;margin-left:5px;padding:0 5px 0 5px;}
			
			.clear{clear:both;}
		
		</style>
	</head>
<body>
	<div id="showGoods">
		<!-- header start -->
		<jsp:include  page="/commons/head.jsp"/>
		<!-- header end -->

		<!-- content start -->
		<div class="content">
			<div class="m_nav">
				<div class="n_nav">
					<a class="logo"><img src="../images/logo.png" alt="logo" width="120" height="80" style="margin-top:10px;"/></a>
					<div class="nav">
						<ul>
							<li><a href="#">家居装饰</a></li>
							<li><a href="#">纺织品</a></li>
							<li><a href="#">儿童部</a></li>
							<li><a href="#">餐厅</a></li>
							<li><a href="#">厨房· 家居</a></li>
							<li><a href="#">客厅</a></li>
							<li><a href="#">浴室</a></li>
							<li><a href="#">精装卧室</a></li>
						</ul>
					</div>
					<div class="search">
						<a class="s_icon" href="#"></a>
						<input type="text"/>
						<div class="s_a">
							<a class="ex_s1" href="#">卧室储物</a>
							<a class="ex_s2" href="#">舒适床垫</a>
						</div>
					</div>
				</div>
			</div>
			<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
		
	</div>

<script type="text/javascript">
	$(function(){
		//滚动屏幕的时候nav固定
		$(window).scroll(function(){
			var topScr=$(window).scrollTop();
			if(topScr>40){
				$("#showGoods .content .m_nav").addClass("fixed");
			}else{
				$("#showGoods .content .m_nav").removeClass("fixed");
			}
		});
	});

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
	
	// 选中搜索框，让s_a隐藏，失焦后又显示
	$(".search input").focus(function(){
		$(".s_a").hide();
	});
	$(".search input").blur(function(){
		if($(".search input").val()==""){
			$(".s_a").show();
		}
	});
	
	
</script>
</body>
  
</html>
