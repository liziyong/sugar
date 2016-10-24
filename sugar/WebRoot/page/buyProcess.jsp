<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar buyProcess</title>
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
			
			#buyProcess{width:100%;height:auto;}
			#buyProcess .content{width:1100px;height:auto;margin:0 auto 60px auto;position:relative;}
			
			#buyProcess .content .c_logo{width:100%;height:80px;margin-top:20px;}
			#buyProcess .content .c_logo .l_logo{float:left;width:120px;height:80px;}
			#buyProcess .content .c_logo .l_title{float:left;height:80px;line-height: 80px;margin-left: 6px;font-size: 22px;font-family: '\5FAE\8F6F\96C5\9ED1','\534E\6587\7EC6\9ED1','\9ED1\4F53',arial;font-weight: 400;color: #000;}
			
			#buyProcess .content .c_address{width:100%;height:145px;margin-top:40px;}
			#buyProcess .content .a_title{width:100%;height:40px;color:#333;font-weight:bold;font-size:14px;}
			#buyProcess .content .a_list{width:100%;height:105px;}
			#buyProcess .content .a_list ul li{padding:10px;background:url('../images/address_not.png');width:217px;height:85px;cursor:pointer;float:left;margin-right:28px;}
			#buyProcess .content .a_list ul li.on{background:url('../images/address_yes.png');}
			#buyProcess .content .a_list ul li .ad_simple{color:#333;border-bottom:1px solid #bbb;width:100%;height:26px;}
			#buyProcess .content .a_list ul li .ad_detail{color:#333;width:100%;margin-top:8px;}
			
			#buyProcess .content .c_sure{width:100%;margin-top:40px;}
			#buyProcess .content .s_title{width:100%;height:40px;color:#333;font-weight:bold;font-size:14px;}
			#buyProcess .content .s_order{width:100%;}
			#buyProcess .content .s_order .o_shopClass{width:100%;height:auto;margin-bottom:40px;}
			#buyProcess .content .s_order .o_shopClass .shopName{width:100%;height:20px;line-height:20px;}
			#buyProcess .content .s_order .o_shopClass .shopName .sn_img{display:inline-block;vertical-align:middle;float:left;margin:2px 4px 0 0;}
			#buyProcess .content .s_order .o_shopClass .shopName .sn_name{line-height:20px;height:20px;float:left;}
			#buyProcess .content .s_order .o_shopClass ul li{width:100%;height:80px;border-top:1px dashed #03a9f4;background:#ecfaff;}
			#buyProcess .content .s_order .o_shopClass ul li .goodsInfo{width:350px;height:80px;float:left;}
			#buyProcess .content .s_order .o_shopClass ul li .goodsInfo img{display:inline-block;margin:10px 0 0 30px;float:left;}
			#buyProcess .content .s_order .o_shopClass ul li .goodsInfo .goodsName{color:#333;float:left;width:250px;height:18px;margin:20px 0 0 10px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;}
			#buyProcess .content .s_order .o_shopClass ul li .goodsPrice{height:80px;float:left;line-height:80px;}
			#buyProcess .content .s_order .o_shopClass ul li .goodsPrice p{margin-left:130px;color:#333;width:130px;height:80px;}
			#buyProcess .content .s_order .o_shopClass ul li .goodsCount{height:80px;float:left;line-height:80px;margin-left:60px;}
			#buyProcess .content .s_order .o_shopClass ul li .goodsMoney{height:80px;float:right;line-height:80px;margin-right:30px;}
			#buyProcess .content .s_order .o_shopClass .shop_total{width:100%;height:60px;background:#c1eeff;}
			#buyProcess .content .s_order .o_shopClass .shop_total .t_money{height:60px;color:#333;line-height:60px;float:right;margin-right:30px;}
			
			#buyProcess .content .c_total{width:100%;margin-top:40px;}
			#buyProcess .content .c_total .tmoney{width:300px;height:120px;float:right;border:1px solid #03a9f4;}
			#buyProcess .content .c_total .tmoney .all{width:160px;height:40px;color:#333;font-size:14px;margin:10px 0 0 120px;text-align:center;line-height:40px;}
			#buyProcess .content .c_total .tmoney .all span{color:red;font-size:18px;}
			#buyProcess .content .c_total .tmoney .submit{width:160px;height:40px;background:#03a9f4;color:#fff;text-align:center;line-height:40px;margin:16px 0 0 120px;}
			
			.clear{clear:both;}
		
		</style>
	</head>
<body>
	<div id="buyProcess">
		<!-- header start -->
		<jsp:include  page="/commons/head.jsp"/>
		<!-- header end -->
		
		<!-- content start -->
		<div class="content">
			<div class="c_logo">
				<div class="l_logo">
					<img src="../images/logo.png" width="120" height="80"/>
				</div>
				<div class="l_title">购买家居</div>
			</div>
			
			<!--  -->
			<div class="c_address">
				<div class="a_title">请选择收获地址</div>
				<div class="a_list">
					<ul>
						<li class="on">
							<div class="ad_simple">浙江杭州<span style="color:#737373;">（孙肇将 收）</span></div>
							<div class="ad_detail">浙江省杭州市西湖区五联西苑113号 13616549386</div>
						</li>
						<li>
							<div class="ad_simple">浙江杭州<span style="color:#737373;">（孙肇将 收）</span></div>
							<div class="ad_detail">浙江省杭州市西湖区五联西苑113号 13616549386</div>
						</li>
						<li>
							<div class="ad_simple">浙江杭州<span style="color:#737373;">（孙肇将 收）</span></div>
							<div class="ad_detail">浙江省杭州市西湖区五联西苑113号 13616549386</div>
						</li>
						<li>
							<div class="ad_simple">浙江杭州<span style="color:#737373;">（孙肇将 收）</span></div>
							<div class="ad_detail">浙江省杭州市西湖区五联西苑113号 13616549386</div>
						</li>
					</ul>
				</div>
			</div>
			<!--  -->
			
			<!--  -->
			<div class="c_sure">
				<div class="s_title">请确认订单</div>
				<div class="s_order">
					<div class="o_shopClass">
						<div class="shopName"><img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div></div>
						<ul>
							<li>
								<div class="goodsInfo">
									<img src="../images/user/pic.jpg" width="60" height="60"/>
									<div class="goodsName">宜家家居同款家居，木质家居，精美家居。宜家家居同款家居，木质家居，精美家居。</div>
								</div>
								<div class="goodsPrice">
									<p>单价：<span>250</span></p>
								</div>
								<div class="goodsCount">
									<p>数量：<span>1</span></p>
								</div>
								<div class="goodsMoney">
									<p>小计：<span>1000</span></p>
								</div>
							</li>
							<li>
								<div class="goodsInfo">
									<img src="../images/user/pic.jpg" width="60" height="60"/>
									<div class="goodsName">宜家家居同款家居，木质家居，精美家居。宜家家居同款家居，木质家居，精美家居。</div>
								</div>
								<div class="goodsPrice">
									<p>单价：<span>250</span></p>
								</div>
								<div class="goodsCount">
									<p>数量：<span>1</span></p>
								</div>
								<div class="goodsMoney">
									<p>小计：<span>1000</span></p>
								</div>
							</li>
							<li>
								<div class="goodsInfo">
									<img src="../images/user/pic.jpg" width="60" height="60"/>
									<div class="goodsName">宜家家居同款家居，木质家居，精美家居。宜家家居同款家居，木质家居，精美家居。</div>
								</div>
								<div class="goodsPrice">
									<p>单价：<span>250</span></p>
								</div>
								<div class="goodsCount">
									<p>数量：<span>1</span></p>
								</div>
								<div class="goodsMoney">
									<p>小计：<span>1000</span></p>
								</div>
							</li>
						</ul>
						<div class="shop_total">
							<div class="t_money">店铺总计：<span style="color:red;">￥3000</span></div>
						</div>
					</div>
					<div class="o_shopClass">
						<div class="shopName"><img class="sn_img" src="../images/shop.png" width="16" height="16"/><div class="sn_name">店铺：江西师范大学</div></div>
						<ul>
							<li>
								<div class="goodsInfo">
									<img src="../images/user/pic.jpg" width="60" height="60"/>
									<div class="goodsName">宜家家居同款家居，木质家居，精美家居。宜家家居同款家居，木质家居，精美家居。</div>
								</div>
								<div class="goodsPrice">
									<p>单价：<span>250</span></p>
								</div>
								<div class="goodsCount">
									<p>数量：<span>1</span></p>
								</div>
								<div class="goodsMoney">
									<p>小计：<span>1000</span></p>
								</div>
							</li>
						</ul>
						<div class="shop_total">
							<div class="t_money">店铺总计：<span style="color:red;">￥1000</span></div>
						</div>
					</div>
				</div>
			</div>
			<!--  -->
			
			<!--  -->
			<div class="c_total">
				<div class="tmoney">
					<div class="all">实付款：<span>￥4000</span></div>
					<div class="submit">确认购买</div>
				</div>
			</div>
			<!--  -->
			
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
