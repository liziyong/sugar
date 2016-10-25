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
			#mysugar .content .c_left ul .set i{width:20px;height:20px;background:url("../images/icon1.png") no-repeat;background-position:-688px -406px;display:inline-block;margin:8px auto;line-height:35px;}
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
					<li><a href="#">账号设置</a></li>
					<li><a href="#">我的购物车</a></li>
					<li class="on"><a href="#">我的交易记录</a><span></span></li>
					<li><a href="#">我的设计</a></li>
					<li><a href="#">我的商店</a></li>
					<li class="set"><a href="#"><i></i></a></li>
				</ul>
			</div>
			<div class="c_right">
				<div class="r_logo">
					<div class="logo"><img src="../images/logo.png" width="120" height="80px"/></div>
					<div class="title">我的交易记录</div>
				</div>
				<div class="r_class">
					<ul>
						<li class="on"><a class="on" href="#">所有订单</a><i></i></li>
						<li><a href="#">待发货<span>2</span></a><i></i></li>
						<li><a href="#">待收货<span>3</span></a><i></i></li>
						<li><a href="#">带评价<span>4</span></a></li>
					</ul>
				</div>
				<div class="r_order">
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：2</div>
									<div class="goodsTotal">合计：<span style="color:red;">460</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
					<div class="shopClass"> 
						<div class="s_shopTop">
							<div class="s_shopName">
								<img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div>
							</div>
							<div class="s_orderId">
								<div class="sn_name">订单号：52631335263</div>
							</div>
						</div>
						<div class="s_shopList">
							<ul>
								<li>
									<div class="goodsInfo" style="">
										<img class="g_goodsPic" src="../images/user/pic.jpg" width="60" height="60"/>
										<div class="g_goodsDetail">解放军斯蒂芬金斯基fis时间的覅哦打费尽口fis时间的覅哦打费尽口舌</div>
									</div>
									<div class="goodsPrice">单价：<span style="color:red;">230</span></div>
									<div class="goodsCount">数量：1</div>
									<div class="goodsTotal">合计：<span style="color:red;">230</span></div>
									<div class="goodsStatus">状态：<span style="color:red;">待收货</span></div>
								</li>
							</ul>
							<div class="deal_sure" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">确认收货</a></div>
							<div class="deal_comment" style="display:none;width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">评价</a></div>
							<div class="deal_buy" style="width:10%;float:left;height:80px;text-align:center;"><a href="#" style="display:block;width:80px;height:30px;background:#03a9f4;color:#fff;line-height:30px;margin:10px 0 0 10px;">再次购买</a></div>
							<div class="clear"></div>
						</div>
					</div>
				</div>
				<div class="r_pagecount">
					<div class="p_content">
						<c:if test="${curPage[0]>1 }">
							<a style="background:rgba(255,255,255,0.6);line-height:30px;text-align:center;display:inline-block;width:60px;height:30px;color:#333;" href="<c:url value='/to/sendlistAction.do?pn=${curPage[0]-1 }'/>">上一页</a>
						</c:if>
						<%--计算begin,end --%>
						<c:choose>
							<%--如果页面不足10页，就全部显示 --%>
							<c:when test="${curPage[1]<=10 }">
								<c:set var="begin" value="1"></c:set>
								<c:set var="end" value="${curPage[1] }"></c:set>
							</c:when>
							<c:otherwise>
								<%--如果页面>10页，就用公式计算 --%>
								<c:set var="begin" value="${curPage[0]-5 }"></c:set>
								<c:set var="end" value="${curPage[0]+4 }"></c:set>
								<%--头溢出 --%>
								<c:if test="${begin < 1 }">
									<c:set var="begin" value="1"/>
									<c:set var="end" value="10"/>
								</c:if>
								<%--尾溢出 --%>
								<c:if test="${end > curPage[1] }">
									<c:set var="begin" value="${curPage[1] - 9 }"/>
									<c:set var="end" value="${curPage[1] }"/>
								</c:if>
							</c:otherwise>
						</c:choose>
						<%--循环遍历页面列表 --%>
						<c:forEach var="i" begin="${begin }" end="${end }">
							<c:choose>
								<c:when test="${i eq curPage[0] }">
									<span style="background:rgba(39,213,191,0.5);line-height:30px;text-align:center;display:inline-block;width:30px;height:30px;color:#fff;">${i }</span>
								</c:when>
								<c:otherwise>
									<a style="background:rgba(255,255,255,0.6);line-height:30px;text-align:center;display:inline-block;width:30px;height:30px;color:#333;" href="<c:url value='/to/sendlistAction.do?pn=${i }'/>">${i }</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						
						<c:if test="${curPage[0]<curPage[1] }">
							<a  style="background:rgba(255,255,255,0.6);line-height:30px;text-align:center;display:inline-block;width:60px;height:30px;color:#333;" href="<c:url value='/to/sendlistAction.do?pn=${curPage[0]+1 }'/>">下一页</a>
						</c:if>
					</div>
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
