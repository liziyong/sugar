<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar goodsInfo</title>
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
			
			#goodsInfo{width:100%;height:auto;}
			#goodsInfo .content{width:1225px;height:auto;margin:0 auto 60px auto;position:relative;}
			#goodsInfo .content .c_left{width:1000px;height:1000px;float:left;background:#bbb;}
			#goodsInfo .content .c_left .l_top{width:100%;height:500px;border:1px solid red;}
			#goodsInfo .content .c_left .l_bottom{width:100%;height:500px;border:1px solid red;}
			#goodsInfo .content .c_right{width:225px;height:600px;float:right;background:#eee;}
			
			.clear{clear:both;}
		
		</style>
	</head>
<body>
	<div id="goodsInfo">
		<!-- header start -->
		<jsp:include  page="/commons/head.jsp"/>
		<!-- header end -->
		
		<!-- content start -->
		<div class="content">
			<div class="c_left">
				<div class="l_top"></div>
				<div class="l_bottom"></div>
			</div>
			<div class="c_right"></div>
			<div class="clear"></div>
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
	</div>

<script type="text/javascript">
</script>
</body>
  
</html>
