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
			#goodsInfo .content{width:1205px;height:auto;margin:0 auto 60px auto;position:relative;}
			
			/*c_left start*/
			#goodsInfo .content .c_left{width:900px;height:auto;float:left;}
			
			/*l_top start*/
			#goodsInfo .content .c_left .l_top{height:460px;border:1px solid #bbb;margin-top:20px;padding:20px;}
			#goodsInfo .content .c_left .l_top .t_pic{width:450px;height:100%;float:left;}
			#goodsInfo .content .c_left .l_top .t_pic .showPic{width:100%;height:400px;}
			#goodsInfo .content .c_left .l_top .t_pic .showPic img{display:block;width:100%;height:400px;border:none;}
			#goodsInfo .content .c_left .l_top .t_pic .picLi{width:100%;height:50px;margin-top:10px;}
			#goodsInfo .content .c_left .l_top .t_pic .picLi ul li{width:50px;height:50px;margin-right:10px;border:2px solid #fff;float:left;}
			#goodsInfo .content .c_left .l_top .t_pic .picLi ul li.on{border:2px solid #03a9f4;}
			#goodsInfo .content .c_left .l_top .t_buy{width:390px;height:100%;float:right;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsName{width:100%;height:20px;font-size:14px;color:#333;font-weight:600;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsPrice{width:100%;height:100px;background:rgba(3,169,244,.2);margin-top:20px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsPrice .p_left{width:200px;height:100px;float:left;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsPrice .p_left .delp{width:100%;height:50px;line-height:50px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsPrice .p_left .realp{width:100%;height:50px;line-height:50px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsPrice .p_right{width:160px;height:100px;float:right;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsPrice .p_right .commentsc p{text-align:center;line-height:20px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsPrice .p_right .successc p{text-align:center;line-height:20px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsShop{width:100%;height:70px;background:rgba(3,169,244,.1);}
			#goodsInfo .content .c_left .l_top .t_buy .goodsShop .s_shopName{width:200px;height:70px;float:left;margin-left:10px;line-height:70px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsShop .s_bossName{width:130px;height:70px;float:left;line-height:70px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsCount{width:100%;height:70px;margin-top:20px;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsCount .counts{width:200px;height:70px;line-height:70px;float:left;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsCount .counts .cal{float:left;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsCount .hasc{width:150px;height:70px;line-height:70px;float:left;}
			#goodsInfo .content .c_left .l_top .t_buy .goodsButtons{width:100%;height:30px;margin-top:20px;}
			
			/*l_bottom start*/
			#goodsInfo .content .c_left .l_bottom{width:100%;height:auto;}
			#goodsInfo .content .c_left .l_bottom .b_title{width:100%;height:40px;background:#eee;margin-top:30px;}
			#goodsInfo .content .c_left .l_bottom .b_title ul li{width:160px;height:40px;float:left;border-right:1px solid #bbb;}
			#goodsInfo .content .c_left .l_bottom .b_title ul li a{display:block;width:160px;height:38px;color:#333;line-height:38px;text-align:center;border-top:2px solid #eee;}
			#goodsInfo .content .c_left .l_bottom .b_title ul li a.on{border-top:2px solid #03a9f4;background:#fff;}
			#goodsInfo .content .c_left .l_bottom .b_commentsList{width:100%;height:auto;margin-top:20px;}
			#goodsInfo .content .c_left .l_bottom .b_commentsList ul li{width:100%;height:auto;border-bottom:1px solid #eee;margin-top:10px;}
			#goodsInfo .content .c_left .l_bottom .b_commentsList ul li .c_userInfo{width:120px;height:120px;float:left;}
			#goodsInfo .content .c_left .l_bottom .b_commentsList ul li .c_comments{width:780px;float:left;}
			
			/*c_right start*/
			#goodsInfo .content .c_right{width:280px;height:600px;float:right;padding-left:20px;}
			#goodsInfo .content .c_right .r_title{width:100%;height:40px;margin-top:20px;background:#eee;line-height:40px;color:#333;font-size:14px;text-indent:10px;}
			#goodsInfo .content .c_right .r_sellList{width:100%;height:auto;margin-top:20px;}
			#goodsInfo .content .c_right .r_sellList ul li{width:100%;height:180px;margin-top:20px;}
			
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
		
			<!-- c_left start -->
			<div class="c_left">
				<div class="l_top">
					<div class="t_pic">
						<div class="showPic"><img src="../images/index/l_hot/4.jpg"/></div>
						<div class="picLi">
							<ul>
								<li class="on"><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
								<li><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
								<li><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
								<li><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
							</ul>
						</div>
					</div>
					<div class="t_buy">
						<div class="goodsName">sugar精装家居，厨房，橱柜，精美家居尽在sugar商城</div>
						<div class="goodsPrice">
							<div class="p_left">
								<div class="delp"><span style="font-size:14px;color:#333;margin-left:10px;">原价：</span><span style="color:#000;">￥<del>270</del></span></div>
								<div class="realp"><span style="font-size:14px;color:#333;margin-left:10px;">sugar价：</span><span style="color:red;font-size:20px;">￥150</span></div>
							</div>
							<div class="p_right">
								<div class="commentsc" style="width:69px;height:40px;padding:5px;float:left;border-right:1px dotted #bbb;margin-top:10px;">
									<p style="font-weight:bold;">10</p>
									<p>累计评论</p>
								</div>
								<div class="successc" style="width:70px;height:40px;padding:5px;float:left;margin-top:10px;">
									<p style="font-weight:bold;">30</p>
									<p>交易成功</p>
								</div>
							</div>
						</div>
						<div class="goodsShop">
							<div class="s_shopName"><span>所属店铺：</span>小mo的开心店</div>
							<div class="s_bossName"><span>店主：</span>小mo</div>
						</div>
						<div class="split" style="width:100%;height:30px;border-bottom:1px dotted #bbb;"></div>
						<div class="goodsCount">
							<div class="counts">
								<span style="display:inline-block;float:left;">购买数量：</span>
								<div class="cal">
									<input type="button" style="outline:none;background:#e0e0e0;border:none;width:20px;height:30px;" value="-"/><input style="width:80px;height:28px;border:1px solid #e0e0e0;outline:none;" value="1"/><input type="button" style="outline:none;width:20px;height:30px;background:#e0e0e0;border:none;" value="+"/>
								</div>
							</div>
							<div class="hasc">件（库存11223件）</div>
						</div>
						<div class="goodsButtons">
							<div style="width:100px;height:30px;float:left;background:#8fddfe;text-align:center;line-height:30px;color:#fff;">立即购买</div>
							<div style="width:120px;height:30px;float:left;background:#03a9f4;margin-left:30px;text-align:center;line-height:30px;color:#fff;">加入购物车</div>
						</div>
					</div>
				</div>
				<div class="l_bottom">
					<div class="b_title">
						<ul>
							<li><a class="t_comments on" href="#">累计评论</a></li>
							<li><a class="t_detail" href="#">商品详情</a></li>
						</ul>
					</div>
					<div class="b_commentsList">
						<ul>
							<li>
								<div class="c_userInfo">
									<img src="../images/user/pic.jpg" width="70" height="70" style="border-radius:6px;"/>
									<p style="color:#333;font-size:14px;margin-top:10px;">momolela</p>
								</div>
								<div class="c_comments">
									<p style="line-height:20px;margin-top:10px;">非常很漂亮，质量服橱柜，，质量也特别的好，非常的喜欢，而且店欢非常好的喜欢，而且店家的服务态很漂亮，质量也喜欢，而且店家的服亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态度非常好，下次还会过来买的</p>
									<div class="creattime" style="margin:20px 0 20px 0;">2016-10-20 12:20:38</div>
								</div>
								<div class="clear"></div>
							</li>
							<li>
								<div class="c_userInfo">
									<img src="../images/user/pic.jpg" width="70" height="70" style="border-radius:6px;"/>
									<p style="color:#333;font-size:14px;margin-top:10px;">momolela</p>
								</div>
								<div class="c_comments">
									<p style="line-height:20px;margin-top:10px;">非常很漂亮，质量服橱柜，，质量也特别的好，非常的喜欢，而且店欢非常好的喜欢，而且店家的服务态很漂亮，质量也喜欢，而且店家的服亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态度非常好，下次还会过来买的</p>
									<div class="creattime" style="margin:20px 0 20px 0;">2016-10-20 12:20:38</div>
								</div>
								<div class="clear"></div>
							</li>
							<li>
								<div class="c_userInfo">
									<img src="../images/user/pic.jpg" width="70" height="70" style="border-radius:6px;"/>
									<p style="color:#333;font-size:14px;margin-top:10px;">momolela</p>
								</div>
								<div class="c_comments">
									<p style="line-height:20px;margin-top:10px;">非常很漂亮，质量服橱柜，，质量也特别的好，非常的喜欢，而且店欢非常好的喜欢，而且店家的服务态很漂亮，质量也喜欢，而且店家的服亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态度非常好，下次还会过来买的</p>
									<div class="creattime" style="margin:20px 0 20px 0;">2016-10-20 12:20:38</div>
								</div>
								<div class="clear"></div>
							</li>
							<li>
								<div class="c_userInfo">
									<img src="../images/user/pic.jpg" width="70" height="70" style="border-radius:6px;"/>
									<p style="color:#333;font-size:14px;margin-top:10px;">momolela</p>
								</div>
								<div class="c_comments">
									<p style="line-height:20px;margin-top:10px;">非常很漂亮，质量服橱柜，，质量也特别的好，非常的喜欢，而且店欢非常好的喜欢，而且店家的服务态很漂亮，质量也喜欢，而且店家的服亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态度非常好，下次还会过来买的</p>
									<div class="creattime" style="margin:20px 0 20px 0;">2016-10-20 12:20:38</div>
								</div>
								<div class="clear"></div>
							</li>
							<li>
								<div class="c_userInfo">
									<img src="../images/user/pic.jpg" width="70" height="70" style="border-radius:6px;"/>
									<p style="color:#333;font-size:14px;margin-top:10px;">momolela</p>
								</div>
								<div class="c_comments">
									<p style="line-height:20px;margin-top:10px;">非常很漂亮，质量服橱柜，，质量也特别的好，非常的喜欢，而且店欢非常好的喜欢，而且店家的服务态很漂亮，质量也喜欢，而且店家的服亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态度非常好，下次还会过来买的</p>
									<div class="creattime" style="margin:20px 0 20px 0;">2016-10-20 12:20:38</div>
								</div>
								<div class="clear"></div>
							</li>
						</ul>
						<div style="width:100%;height:30px;border:1px solid #bbb;background:#fff;text-align:center;line-height:30px;margin-top:20px;border-radius:4px;box-shadow:0px 0px 2px #000;">点击加载评论...</div>
					</div>
					<div class="b_detail" style="display:none;width:100%;height:auto;"></div>
				</div>
			</div>
			<!-- c_left end -->
			
			<!-- c_right start -->
			<div class="c_right">
				<div class="r_title">这家店还在卖：</div>
				<div class="r_sellList">
					<ul>
						<li style="position:relative;"><a href="#"><img src="../images/index/l_hot/1.jpg" width="280" height="180"/></a><div style="width:100%;height:30px;position:absolute;background:rgba(255,255,255,.8);bottom:0;left:0;text-align:center;line-height:30px;color:#333;">￥<span>250</span></div></li>
						<li style="position:relative;"><a href="#"><img src="../images/index/l_hot/2.jpg" width="280" height="180"/></a><div style="width:100%;height:30px;position:absolute;background:rgba(255,255,255,.6);bottom:0;left:0;text-align:center;line-height:30px;color:#333;">￥<span>250</span></div></li>
						<li style="position:relative;"><a href="#"><img src="../images/index/l_hot/3.jpg" width="280" height="180"/></a><div style="width:100%;height:30px;position:absolute;background:rgba(255,255,255,.8);bottom:0;left:0;text-align:center;line-height:30px;color:#333;">￥<span>250</span></div></li>
						<li style="position:relative;"><a href="#"><img src="../images/index/l_hot/4.jpg" width="280" height="180"/></a><div style="width:100%;height:30px;position:absolute;background:rgba(255,255,255,.8);bottom:0;left:0;text-align:center;line-height:30px;color:#333;">￥<span>250</span></div></li>
						<li style="position:relative;"><a href="#"><img src="../images/index/y_right/5.jpg" width="280" height="180"/></a><div style="width:100%;height:30px;position:absolute;background:rgba(255,255,255,.8);bottom:0;left:0;text-align:center;line-height:30px;color:#333;">￥<span>250</span></div></li>
					</ul>
				</div>
			</div>
			<!-- c_right end -->
			
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
