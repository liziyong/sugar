<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar userInfo</title>
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
			#mysugar .content .c_left ul .set i{width:20px;height:20px;background:url("../images/icon1.png") no-repeat;background-position:-688px -406px;display:inline-block;margin:8px auto;line-height:35px;}
			#mysugar .content .c_left ul li.on{background:#adb0b1;}
			#mysugar .content .c_left ul li:hover{background:#adb0b1;}
			#mysugar .content .c_left ul li a{display:block;width:100%;height:40px;text-align:center;line-height:40px;color:#fff;font-size:14px;}
			#mysugar .content .c_left ul li span{position:absolute;right:0;top:17px;display:inline-block;width:0;height:0;border-right:6px solid #fff;border-top:4px solid transparent;border-bottom:4px solid transparent;}
			
			#mysugar .content .c_right{width:1020px;height:auto;float:right;margin-top:40px;}
			#mysugar .content .c_right .r_userInfo{width:100%;height:100px;background:#fff;box-shadow:0px 0px 3px #000;}
			#mysugar .content .c_right .r_userInfo .info_pic{margin:-26px 0 0 50px;float:left;width:90px;height:90px;border-radius:50%;box-shadow:0px 0px 3px #03a9f4;}
			#mysugar .content .c_right .r_userInfo .info_pic img{display:block;width:90px;height:90px;border-radius:50%;}
			
			#mysugar .content .c_right .r_dataForm{width:90%;height:auto;margin:0 auto;}
			#mysugar .content .c_right .r_dataForm .d_base{width:100%;height:auto;}
			
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
					<li class="on"><a href="#">账号设置</a><span></span></li>
					<li><a href="#">我的购物车</a></li>
					<li><a href="#">我的交易记录</a></li>
					<li><a href="#">我的设计</a></li>
					<li><a href="#">我的商店</a></li>
					<li class="set"><a href="#"><i></i></a></li>
				</ul>
			</div>
			<div class="c_right">
				<div class="r_userInfo">
					<div class="info_pic"><img src="${basePath }/images/user/pic.jpg"/></div>
					<div class="info_username" style="height:100px;width:auto;line-height:100px;float:left;margin-left:20px;font-size:14px;color:#333;"><span>用户名：</span>静爸爸</div>
					<div class="info_sex" style="height:100px;width:auto;line-height:100px;float:left;margin-left:60px;font-size:14px;color:#333;"><span>性别：</span>男</div>
					<div class="info_email" style="height:100px;width:auto;line-height:100px;float:left;margin-left:60px;font-size:14px;color:#333;"><span>邮箱：</span>1083910359@qqom</div>
					<div class="info_status" style="height:100px;width:auto;line-height:100px;float:left;margin-left:60px;font-size:14px;color:#333;"><span>身份：</span>普通会员</div>
				</div>
				<div class="r_dataForm">
					<div class="d_base">
						<div style="width:100%;height:60px;margin-top:20px;">
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">用户名：</span><input style="text-indent:5px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="momolela"/></div>
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">性别：</span><input style="text-indent:5px;margin-left:13px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="男"/></div>
						</div>
						<div style="width:100%;height:60px;margin-top:10px;">
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">邮箱：</span><input style="text-indent:5px;margin-left:13px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="1083910359@qq.com"/></div>
							<div style="float:right;width:259px;height:30px;color:#fff;margin-right:139px;margin-top:5px;line-height:30px;text-align:center;background:#46df8e;border-radius:2px;">我想修改密码</div>
						</div>
						<div style="width:100%;height:60px;margin-top:10px;">
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">旧密码：</span><input style="text-indent:5px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="momolela"/></div>
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">新密码：</span><input style="text-indent:5px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="男"/></div>
						</div>
					</div>
					<div class="d_special" style="width:100%;height:auto;margin-top:20px;">
						<div style="position:relative;width:720px;height:1px;border-top:1px solid #bbb;margin-left:60px;"><div style="position:absolute;width:auto;height:20px;background:#fff;top: -9px;left: 312px;">以下是商家信息</div></div>
						<div style="width:100%;height:60px;margin-top:20px;">
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">身份证：</span><input style="text-indent:5px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="362426199511011810"/></div>
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">姓名：</span><input style="text-indent:5px;margin-left:13px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="孙肇将"/></div>
						</div>
						<div style="width:100%;height:60px;margin-top:10px;">
							<div style="width:50%;height:40px;float:left;"><span style="margin-left:60px;display:inline-block;width:auto;height:40px;line-height:40px;color:#333;font-size:14px;">手机：</span><input style="text-indent:5px;margin-left:13px;width:200px;height:30px;border:1px solid #bbb;border-radius:3px;outline:none;" type="text" value="13616549386"/></div>
						</div>
					</div>
					<div class="d_submit" style="width:100%;height:40px;margin-top:20px;"><a style="display:block;width:259px;height:30px;background:#03a9f4;line-height:30px;text-align:center;float:right;margin-right:139px;" href="#">确认修改</a></div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
	</div>

<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
		var topScr=$(window).scrollTop();
		if(topScr>70){
			$("#mysugar .content .c_left").addClass("fixed");
		}else{
			$("#mysugar .content .c_left").removeClass("fixed");
		}
	});
});
</script>
</body>
  
</html>
