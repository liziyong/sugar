<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<%@include file="/commons/public.jsp" %>

		<style type="text/css">
			*{margin:0;padding:0;}
			body{font-size:12px;font-family:"微软雅黑";color:#bbb;width:100%;height:100%;}
			li{list-style:none;}
			a{text-decoration:none;}
			#sugar{width:100%;height:800px;background:#fff;}
			
			/*middle start*/
			#sugar .middle{width:100%;height:1210px;background:#fff;}
			#sugar .middle .m_nav{width:100%;height:100px;}
			#sugar .middle .m_nav .n_nav{width:1226px;height:100px;margin:0 auto;}
			#sugar .middle .m_nav .n_nav .logo{width:180px;height:100px;display:block;text-align:center;float:left;}
			#sugar .middle .m_nav .n_nav .nav{width:700px;height:100px;float:left;}
			#sugar .middle .m_nav .n_nav .nav ul li{height:100px;float:right;padding-left:15px;padding-right:15px;line-height:100px;}
			#sugar .middle .m_nav .n_nav .nav a{height:100px;display:block;font-size:16px;color:#000;}
			#sugar .middle .m_nav .n_nav .search{width:320px;height:75px;float:right;padding-top:25px;position:relative;}
			#sugar .middle .m_nav .n_nav .search input{width:235px;height:52px;float:right;outline:none;padding-left:10px;}
			#sugar .middle .m_nav .n_nav .search .s_icon{width:52px;height:52px;display:block;border:1px solid #bbb;float:right;border-left:0;}
			#sugar .middle .m_nav .n_nav .search .s_a{position:absolute;top:42px;right:64px;line-height:18px;}
			#sugar .middle .m_nav .n_nav .search .s_a a:hover{background:#03a9f4;color:#fff;}
			#sugar .middle .m_nav .n_nav .search .s_a .ex_s1{text-align:center;color:#757575;width:auto;height:18px;display:block;background:#eee;float:left;padding:0 5px 0 5px;}
			#sugar .middle .m_nav .n_nav .search .s_a .ex_s2{text-align:center;color:#757575;width:auto;height:18px;display:block;background:#eee;float:left;margin-left:5px;padding:0 5px 0 5px;}
			/*m_banner start*/
			#sugar .middle .m_banner{width:1226px;height:460px;margin:0 auto;position:relative;overflow:hidden;}
			#sugar .middle .m_banner .b_nav{z-index:999;width:234px;height:460px;position:absolute;top:0px;left:0px;background:rgba(0,0,0,0.6);}
			#sugar .middle .m_banner .b_nav .nav{padding-top:20px;padding-bottom:20px;}
			#sugar .middle .m_banner .b_nav .nav ul li{width:204px;height:42px;font-size:14px;padding-left:30px;line-height:42px;}
			#sugar .middle .m_banner .b_nav .nav ul li:hover{background:#03a9f4;}
			#sugar .middle .m_banner .b_nav .nav a{width:204px;height:42px;color:#fff;display:block;}
			#sugar .middle .m_banner .b_point{width:auto;height:20px;position:absolute;bottom:22px;right:35px;}
			#sugar .middle .m_banner .b_point .point ul li{margin-left:10px;width:5px;height:5px;border-radius:50%;border:2px solid #7d7d7d;float:left;background:rgba(0,0,0,.4);}
			#sugar .middle .m_banner .b_point .point ul li.on{background:rgba(255,255,255,.6);}
			#sugar .middle .m_banner .b_prev{cursor:pointer;width:40px;height:70px;position:absolute;left:234px;top:200px;font-size:26px;font-family:'楷体';text-align:center;line-height:70px;border-radius:3px 0 0 3px;}
			#sugar .middle .m_banner .b_prev:hover{background:rgba(0,0,0,.5);}
			#sugar .middle .m_banner .b_next{cursor:pointer;width:40px;height:70px;position:absolute;right:0;top:200px;font-size:26px;font-family:'楷体';text-align:center;line-height:70px;border-radius:0 3px 3px 0;}
			#sugar .middle .m_banner .b_next:hover{background:rgba(0,0,0,.5);}
			/*m_product start*/
			#sugar .middle .m_product{width:1228px;height:170px;margin:16px auto;}
			#sugar .middle .m_product .p_nav{width:234px;height:170px;float:left;background:#5f5750;margin-right:2px;}
			#sugar .middle .m_product .p_nav ul li{width:76px;height:82px;float:left;font-size:13px;line-height:82px;text-align:center;position:relative;}
			#sugar .middle .m_product .p_nav ul li::after{position:absolute;top:6px;left:0;width:1px;height:70px;content:"";background:#665e57;}
			#sugar .middle .m_product .p_nav ul .bottom::before{position:absolute;top:-1px;left:6px;width:64px;height:1px;content:"";background:#665e57;}
			#sugar .middle .m_product .p_nav a{width:70px;height:76px;display:block;color:#bbb;margin:6px;}
			#sugar .middle .m_product .p_nav a:hover{color:#fff;}
			#sugar .middle .m_product img{margin-left:12px;}
			#sugar .middle .m_product img:hover{box-shadow:0px 20px 60px -20px #bbb;transition:all 500ms;}
			/*m_star start*/
			#sugar .middle .m_star{width:1226px;height:430px;margin:30px auto 0px auto;}
			#sugar .middle .m_star .s_title{width:100%;height:58px;}
			#sugar .middle .m_star .s_title h2{float:left;width:150px;height:58px;font-size:22px;line-height:58px;color:#000;font-weight:300;}
			#sugar .middle .m_star .s_title span{float:right;display:block;width:36px;height:24px;border:1px solid #bbb;text-align:center;line-height:24px;font-size:20px;font-weight:bold;margin-top:20px;}
			#sugar .middle .m_star .s_product ul li{width:234px;height:340px;float:left;margin-left:14px;background:#fafafa;}
			#sugar .middle .m_star .s_product ul li img{margin-top:40px;margin-left:35px;}
			#sugar .middle .m_star .s_product .p_desc{height:16px;color:#000;font-size:14px;display:block;text-align:center;padding-top:20px;padding-bottom:10px;}
			#sugar .middle .m_star .s_product p{height:16px;text-align:center;}
			/*last start*/
			#sugar .last{width:100%;height:4660px;background:#f5f5f5;}
			/*l_yingjian start*/
			#sugar .last .l_yingjian{width:1226px;height:732px;margin:0 auto;padding-bottom:30px;}
			#sugar .last .l_yingjian .y_title{width:100%;height:58px;padding-top:60px;}
			#sugar .last .l_yingjian .y_title h2{float:left;width:150px;height:58px;font-size:22px;line-height:58px;color:#000;font-weight:300;}
			#sugar .last .l_yingjian .y_title p{float:right;width:92px;height:58px;text-align:center;line-height:58px;font-size:16px;color:#000;}
			#sugar .last .l_yingjian .y_left{width:234px;height:614px;float:left;}
			#sugar .last .l_yingjian .y_right{width:992px;height:614px;float:right;}
			#sugar .last .l_yingjian .y_right ul li{width:234px;height:300px;float:left;background:#fff;}
			#sugar .last .l_yingjian .y_right ul li img{margin-top:20px;margin-left:35px;}
			#sugar .last .l_yingjian .y_right .p_desc{height:16px;color:#000;font-size:14px;display:block;text-align:center;padding-top:10px;padding-bottom:10px;}
			#sugar .last .l_yingjian .y_right p{height:16px;text-align:center;}
			#sugar .last .l_yingjian .y_right span{height:21px;text-align:center;color:#ff9966;display:block;padding-top:20px;}
			/*l_dapei start*/
			#sugar .last .l_dapei{width:1226px;height:702px;margin:0 auto;}
			#sugar .last .l_dapei .d_title{width:100%;height:58px;}
			#sugar .last .l_dapei .d_title h2{float:left;width:150px;height:58px;font-size:22px;line-height:58px;color:#000;font-weight:300;}
			#sugar .last .l_dapei .d_title p{float:right;width:92px;height:58px;text-align:center;line-height:58px;font-size:16px;color:#000;}
			#sugar .last .l_dapei .d_total ul li{width:234px;height:300px;float:left;background:#fff;}
			#sugar .last .l_dapei .d_total ul li .img1{margin-top:20px;margin-left:35px;}
			#sugar .last .l_dapei .d_total .p_desc{height:16px;color:#000;font-size:14px;display:block;text-align:center;padding-top:10px;padding-bottom:10px;}
			#sugar .last .l_dapei .d_total span{height:21px;text-align:center;color:#ff9966;display:block;}
			#sugar .last .l_dapei .d_total .t_top{width:234px;height:143px;margin-bottom:13px;background:#fff;}
			#sugar .last .l_dapei .d_total .t_top p{float:left;padding-top:40px;padding-left:30px;font-size:14px;color:#000;}
			#sugar .last .l_dapei .d_total .t_top span{width:100px;height:21px;text-align:center;color:#ff9966;display:block;text-align:left;line-height:30px;}
			#sugar .last .l_dapei .d_total .t_top img{float:left;margin-top:30px;}
			#sugar .last .l_dapei .d_total .t_bottom{width:234px;height:143px;margin-top:13px;background:#fff;}
			#sugar .last .l_dapei .d_total .t_bottom p{float:left;padding-top:40px;padding-left:30px;font-size:20px;color:#000;}
			#sugar .last .l_dapei .d_total .t_bottom span{width:100px;height:21px;text-align:center;color:#bbb;display:block;text-align:left;line-height:30px;font-size:14px;}
			/*l_tuijian start*/
			#sugar .last .l_tuijian{width:1226px;height:400px;margin:10px auto 0px auto;}
			#sugar .last .l_tuijian .t_title{width:100%;height:58px;}
			#sugar .last .l_tuijian .t_title h2{float:left;width:150px;height:58px;font-size:22px;line-height:58px;color:#000;font-weight:300;}
			#sugar .last .l_tuijian .t_title span{float:right;display:block;width:36px;height:24px;border:1px solid #bbb;text-align:center;line-height:24px;font-size:20px;font-weight:bold;margin-top:20px;}
			#sugar .last .l_tuijian .t_product ul li{width:234px;height:300px;float:left;margin-left:14px;background:#fff;}
			#sugar .last .l_tuijian .t_product ul li img{margin-top:40px;margin-left:45px;}
			#sugar .last .l_tuijian .t_product .p_desc{height:16px;color:#000;font-size:14px;display:block;text-align:center;padding-top:20px;padding-bottom:10px;}
			#sugar .last .l_tuijian .t_product p{height:16px;text-align:center;color:#ff9966;}
			/*l_hot start*/
			#sugar .last .l_hot{width:1226px;height:430px;margin:0px auto 0px auto;}
			#sugar .last .l_hot .h_title{width:100%;height:58px;}
			#sugar .last .l_hot .h_title h2{float:left;width:150px;height:58px;font-size:22px;line-height:58px;color:#000;font-weight:300;}
			#sugar .last .l_hot .h_product ul li{width:296px;height:380px;float:left;margin-left:14px;background:#fff;}
			#sugar .last .l_hot .h_product .p_desc{display:block;width:236px;height:42px;font-size:14px;color:#000;margin-top:30px;margin-left:30px;}
			#sugar .last .l_hot .h_product p{margin-left:30px;}
			#sugar .last .l_hot .h_product .p_info{width:236px;height:21px;margin:20px auto;}
			#sugar .last .l_hot .h_product .p_info a{color:#000;font-size:14px;width:85px;height:16px;line-height:16px;display:block;padding-right:5px;border-right:1px solid #bbb;float:left;}
			#sugar .last .l_hot .h_product .p_info span{color:#ff9966;font-size:14px;padding-left:10px;line-height:16px;float:left;}
			/*l_content start*/
			#sugar .last .l_content{width:1226px;height:430px;margin:40px auto 0px auto;}
			#sugar .last .l_content .c_title{width:100%;height:58px;}
			#sugar .last .l_content .c_title h2{float:left;width:150px;height:58px;font-size:22px;line-height:58px;color:#000;font-weight:300;}
			#sugar .last .l_content .c_product ul .p{width:296px;height:420px;float:left;margin-left:14px;background:#fff;}
			#sugar .last .l_content .c_product ul .p .p_title{width:276px;height:24px;font-size:16px;margin:50px auto 20px auto;text-align:center;}
			#sugar .last .l_content .c_product ul .p .p_desc{width:296px;height:326px;}
			#sugar .last .l_content .c_product ul .p .p_desc .d_title{display:block;width:256px;height:25px;color:#000;font-size:18px;text-align:center;margin:0 auto;}
			#sugar .last .l_content .c_product ul .p .p_desc .d_desc{display:block;width:200px;height:40px;color:#bbb;text-align:center;margin:0 auto;line-height:26px;}
			#sugar .last .l_content .c_product ul .p .p_desc .d_price{display:block;width:42px;height:16px;color:#000;font-size:14px;text-align:center;margin:0 auto;line-height:26px;}
			#sugar .last .l_content .c_product ul .p .p_desc img{margin-top:20px;margin-left:40px;}
			#sugar .last .l_content .c_product ul .p .p_desc .d_nav{width:200px;height:30px;margin:16px auto;}
			#sugar .last .l_content .c_product ul .p .p_desc .d_nav .n_1{width:6px;height:6px;float:left;border:2px solid #ff9966;border-radius:24px;margin-left:31px;margin-top:10px;}
			/*l_movie start*/
			#sugar .last .l_movie{width:1226px;height:400px;margin:80px auto 0px auto;}
			#sugar .last .l_movie .m_title{width:100%;height:58px;}
			#sugar .last .l_movie .m_title h2{float:left;width:150px;height:58px;font-size:22px;line-height:58px;color:#000;font-weight:300;}
			#sugar .last .l_movie .m_product ul li{width:296px;height:285px;float:left;margin-left:14px;background:#fff;}
			#sugar .last .l_movie .m_product ul li a{display:block;width:154px;height:16px;color:#000;margin:30px auto 10px auto;}
			#sugar .last .l_movie .m_product ul li p{width:100%;height:18px;text-align:center;}
			/*footer start*/
			#sugar .footer{width:100%;height:498px;background:#f5f5f5;}
			/*f_site start*/
			#sugar .footer .f_site{width:100%;height:272px;background:#fff;}
			#sugar .footer .f_site .s_service{width:1226px;height:80px;border-bottom:1px solid #bbb;margin:0 auto;}
			#sugar .footer .f_site .s_service a{width:135px;height:17px;display:block;color:#616161;float:left;font-size:16px;margin-top:30px;margin-left:95px;}
			#sugar .footer .f_site .s_help{width:1226px;height:192px;margin:0px auto;}
			#sugar .footer .f_site .s_help dl{float:left;width:165px;height:112px;margin-top:40px;}
			#sugar .footer .f_site .s_help dl dt{font-size:14px;color:#000;width:165px;height:17px;margin-bottom:25px;}
			#sugar .footer .f_site .s_help dl dd{color:#757575;line-height:26px;}
			#sugar .footer .f_site .s_help .h_contact{width:242px;height:112px;float:right;border-left:1px solid #bbb;margin-top:40px;}
			#sugar .footer .f_site .s_help .h_contact .phone{width:242px;height:22px;color:#ff6700;font-size:22px;text-align:center;margin:0 0 10px;}
			#sugar .footer .f_site .s_help .h_contact .date{width:242px;height:36px;color:#000;font-size:12px;text-align:center;margin:0 0 12px;}
			#sugar .footer .f_site .s_help .h_contact a{display:block;width:120px;height:30px;border:1px solid #ff6700;color:#ff6700;text-align:center;line-height:30px;margin-left:56px;}
			/*f_banquan start*/
			#sugar .footer .f_banquan{width:100%;height:206px;}
			#sugar .footer .f_banquan .b_address{width:1226px;height:36px;margin:20px auto 0 auto;}
			#sugar .footer .f_banquan .b_address .a_nav{float:left;width:750px;}
			#sugar .footer .f_banquan .b_address .logo{float:left;}
			#sugar .footer .f_banquan .b_address p{width:670px;float:left;margin-left:10px;}
			#sugar .footer .f_banquan .b_address p a{color:#6c6c6c;}
			#sugar .footer .f_banquan .b_address span{margin-left:10px;display:block;float:left;}
			#sugar .footer .f_banquan .b_address .a_anquan{float:right;width:282px;height:28px;}
			#sugar .footer .f_banquan .b_address .a_anquan img{margin-left:5px;}
		</style>
	</head>

<body>
	<div id="sugar">

		<!--header start-->
		<jsp:include  page="/commons/head.jsp"/>
		<!--end header-->

		<!--middle start-->
		<div class="middle">
			<div class="m_nav">
				<div class="n_nav">
					<a class="logo"><img src="images/logo.png" alt="logo" width="120" height="80" style="margin-top:10px;"/></a>
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
			<div class="m_banner">
				<div class="b_nav">
					<div class="nav">
						<ul>
							<li><a href="#">精装&nbsp;卧室</a></li>
							<li><a href="#">浴室&nbsp;系列</a></li>
							<li><a href="#">储物&nbsp;客厅沙发</a></li>
							<li><a href="#">橱柜&nbsp;书架</a></li>
							<li><a href="#">油烟机&nbsp;冰箱</a></li>
							<li><a href="#">连壁桌&nbsp;餐椅</a></li>
							<li><a href="#">婴儿床&nbsp;婴儿纺织</a></li>
							<li><a href="#">地毯&nbsp;窗帘</a></li>
							<li><a href="#">明星&nbsp;设计</a></li>
						</ul>
					</div>
				</div>
				<div class="b_focus">
					<ul class="b_img">
						<li><a href="#"><img src="images/index/banner/1.jpg" alt="" width="1226" height="460"/></a></li>
						<li><a href="#"><img src="images/index/banner/2.jpg" alt="" width="1226" height="460"/></a></li>
						<li><a href="#"><img src="images/index/banner/3.jpg" alt="" width="1226" height="460"/></a></li>
						<li><a href="#"><img src="images/index/banner/4.jpg" alt="" width="1226" height="460"/></a></li>
						<li><a href="#"><img src="images/index/banner/5.jpg" alt="" width="1226" height="460"/></a></li>
					</ul>
					<div class="b_point">
						<div class="point">
							<ul>
								<li class="on"></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>
					<div class="b_prev">
						<span>&lt;</span>
					</div>
					<div class="b_next">
						<span>&gt;</span>
					</div>
				</div>
			</div>
			<div class="m_product">
				<div class="p_nav">
					<ul>
						<li><a href=""><i></i>开放购买</a></li>
						<li><a href=""><i></i>企业团购</a></li>
						<li><a href=""><i></i>官翻产品</a></li>
						<li class="bottom"><a href=""><i></i>F码通道</a></li>
						<li class="bottom"><a href=""><i></i>话费充值</a></li>
						<li class="bottom"><a href=""><i></i>防伪查询</a></li>
					</ul>
				</div>
				<a href=""><img src="images/index/m_product/1.jpg" alt="净水器" width="316" height="170"/></a>
				<a href=""><img src="images/index/m_product/2.jpg" alt="手机" width="316" height="170"/></a>
				<a href=""><img src="images/index/m_product/3.jpg" alt="平板" width="316" height="170"/></a>
			</div>
			<div class="m_star">
				<div class="s_title">
					<h2>小米明星单品</h2><span>&gt;</span><span>&lt;</span>
				</div>
				<div class="s_product">
					<ul>
						<li style="margin-left:0;border-top:1px solid #ffac13;">
							<a href=""><img src="images/index/m_star/1.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p>
						</li>
						<li style="border-top:1px solid #83c44e;">
							<a href=""><img src="images/index/m_star/2.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p>
						</li>
						<li style="border-top:1px solid #2196f3;">
							<a href=""><img src="images/index/m_star/3.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p>
						</li>
						<li style="border-top:1px solid #e53935;">
							<a href=""><img src="images/index/m_star/4.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p>
						</li>
						<li style="border-top:1px solid #00c0a5;">
							<a href=""><img src="images/index/m_star/5.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--end middle-->

		<!--last start-->
		<div class="last">
			<div class="l_yingjian">
				<div class="y_title"><h2>智能硬件</h2><p>查看全部<span></span></p></div>
				<div class="y_left">
					<a href="#"><img src="images/index/y_left/1.jpg" alt="" width="234" height="614"/></a>
				</div>
				<div class="y_right">
					<ul>
						<li style="margin-left:14px;margin-right:7px;margin-bottom:13px;"><a href="#"><img src="images/index/y_right/1.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;"><a href="#"><img src="images/index/y_right/2.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;"><a href="#"><img src="images/index/y_right/3.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
						<li style="margin-left:7px;margin-right:0px;margin-bottom:13px;"><a href="#"><img src="images/index/y_right/4.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
						<li style="margin-left:14px;margin-right:7px;"><a href="#"><img src="images/index/y_right/5.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
						<li style="margin-left:7px;margin-right:7px;"><a href="#"><img src="images/index/y_right/6.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
						<li style="margin-left:7px;margin-right:7px;"><a href="#"><img src="images/index/y_right/7.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
						<li style="margin-left:7px;margin-right:0px;"><a href="#"><img src="images/index/y_right/8.jpg" alt="" width="160" height="160"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>40/48/49/55英寸 现货购买</p><span>149元</span></li>
					</ul>
				</div>
			</div>
			<div class="l_dapei">
				<div class="d_title"><h2>搭配</h2><p>电池存储卡</p><p>电源</p><p>耳机音箱</p><p>热门</p></div>
				<div class="d_total">
					<ul>
						<li style="margin-left:0px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img src="images/index/d_left/1.jpg" alt="" width="" height=""/>
							</a>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/1.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/2.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/3.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:0px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/4.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:0px;margin-right:7px;">
							<a href="#">
								<img src="images/index/d_left/2.jpg" alt="" width="" height=""/>
							</a>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/5.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/6.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/7.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:0px;background:none;">
							<div class="t_top">
								<p>米兔手机U盘<span>49.9元</span></p>
								<img src="images/index/d_right/top.jpg" width="80" height="80">
							</div>
							<div class="t_bottom"><p>浏览更多<span>热门</span><i></i></p></div>
						</li>
					</ul>
				</div>
			</div>
			<div class="l_dapei">
				<div class="d_title"><h2>搭配</h2><p>电池存储卡</p><p>电源</p><p>耳机音箱</p><p>热门</p></div>
				<div class="d_total">
					<ul>
						<li style="margin-left:0px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img src="images/index/d_left/1.jpg" alt="" width="" height=""/>
							</a>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/1.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/2.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/3.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:0px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/4.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:0px;margin-right:7px;">
							<a href="#">
								<img src="images/index/d_left/2.jpg" alt="" width="" height=""/>
							</a>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/5.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/6.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/7.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:0px;background:none;">
							<div class="t_top">
								<p>米兔手机U盘<span>49.9元</span></p>
								<img src="images/index/d_right/top.jpg" width="80" height="80">
							</div>
							<div class="t_bottom"><p>浏览更多<span>热门</span><i></i></p></div>
						</li>
					</ul>
				</div>
			</div>
			<div class="l_dapei">
				<div class="d_title"><h2>搭配</h2><p>电池存储卡</p><p>电源</p><p>耳机音箱</p><p>热门</p></div>
				<div class="d_total">
					<ul>
						<li style="margin-left:0px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img src="images/index/d_left/1.jpg" alt="" width="" height=""/>
							</a>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/1.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/2.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/3.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:0px;margin-bottom:13px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/4.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:0px;margin-right:7px;">
							<a href="#">
								<img src="images/index/d_left/2.jpg" alt="" width="" height=""/>
							</a>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/5.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/6.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:7px;">
							<a href="#">
								<img class="img1" src="images/index/d_right/7.jpg" alt="" width="160" height="160"/>
							</a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<span>149元</span>
						</li>
						<li style="margin-left:7px;margin-right:0px;background:none;">
							<div class="t_top">
								<p>米兔手机U盘<span>49.9元</span></p>
								<img src="images/index/d_right/top.jpg" width="80" height="80">
							</div>
							<div class="t_bottom"><p>浏览更多<span>热门</span><i></i></p></div>
						</li>
					</ul>
				</div>
			</div>
			<div class="l_tuijian">
				<div class="t_title">
					<h2>为你推荐</h2><span>&gt;</span><span>&lt;</span>
				</div>
				<div class="t_product">
					<ul>
						<li style="margin-left:0;">
							<a href=""><img src="images/index/l_tuijian/1.jpg" alt="" width="140" height="140"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>125元</p>
						</li>
						<li>
							<a href=""><img src="images/index/l_tuijian/2.jpg" alt="" width="140" height="140"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>125元</p>
						</li>
						<li>
							<a href=""><img src="images/index/l_tuijian/3.jpg" alt="" width="140" height="140"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>125元</p>
						</li>
						<li>
							<a href=""><img src="images/index/l_tuijian/4.jpg" alt="" width="140" height="140"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>125元</p>
						</li>
						<li>
							<a href=""><img src="images/index/l_tuijian/5.jpg" alt="" width="140" height="140"/></a><br>
							<a class="p_desc" href="#">小米电视2/2S全系列</a>
							<p>125元</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="l_hot">
				<div class="h_title">
					<h2>热评产品</h2>
				</div>
				<div class="h_product">
					<ul>
						<li style="margin-left:0;">
							<img src="images/index/l_hot/1.jpg" alt="" width="296" height="220"/>
							<a class="p_desc" href="#">非常喜欢，萌萌哒，16g大容量！手机电脑两用非常实用...</a>
							<p>来自于 宋孟奇 的评价</p>
							<div class="p_info">
								<a href="#">米兔手机U盘</a>
								<span>123元</span>
							</div>
						</li>
						<li>
							<img src="images/index/l_hot/2.jpg" alt="" width="296" height="220"/>
							<a class="p_desc" href="#">非常喜欢，萌萌哒，16g大容量！手机电脑两用非常实用...</a>
							<p>来自于 宋孟奇 的评价</p>
							<div class="p_info">
								<a href="#">米兔手机U盘</a>
								<span>123元</span>
							</div>
						</li>
						<li>
							<img src="images/index/l_hot/3.jpg" alt="" width="296" height="220"/>
							<a class="p_desc" href="#">非常喜欢，萌萌哒，16g大容量！手机电脑两用非常实用...</a>
							<p>来自于 宋孟奇 的评价</p>
							<div class="p_info">
								<a href="#">米兔手机U盘</a>
								<span>123元</span>
							</div>
						</li>
						<li>
							<img src="images/index/l_hot/4.jpg" alt="" width="296" height="220"/>
							<a class="p_desc" href="#">非常喜欢，萌萌哒，16g大容量！手机电脑两用非常实用...</a>
							<p>来自于&nbsp;宋孟奇&nbsp;的评价</p>
							<div class="p_info">
								<a href="#">米兔手机U盘</a>
								<span>123元</span>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="l_content">
				<div class="c_title">
					<h2>内容</h2>
				</div>
				<div class="c_product">
					<ul>
						<li class="p" style="margin-left:0;border-top:1px solid #ffac13;color:#ffac13;">
							<p class="p_title">图书</p>
							<div class="p_desc">
								<a class="d_title" href="#">时间简史</a>
								<a class="d_desc" href="#">多锁屏多乐趣，软妹子在这里等你哟</a>
								<a class="d_price" href="#">免费</a>
								<img src="images/index/l_content/1.jpg" alt="" width="216" height="154"/>
								<ul class="d_nav">
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
								</ul>
							</div>
						</li>
						<li class="p" style="border-top:1px solid #83c44e;color:#83c44e;">
							<p class="p_title">MIUI主题</p>
							<div class="p_desc">
								<a class="d_title" href="#">时间简史</a>
								<a class="d_desc" href="#">多锁屏多乐趣，软妹子在这里等你哟</a>
								<a class="d_price" href="#">免费</a>
								<img src="images/index/l_content/2.jpg" alt="" width="216" height="154"/>
								<ul class="d_nav">
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
								</ul>
							</div>
						</li>
						<li class="p" style="border-top:1px solid #e53935;color:#e53935;">
							<p class="p_title">游戏</p>
							<div class="p_desc">
								<a class="d_title" href="#">时间简史</a>
								<a class="d_desc" href="#">多锁屏多乐趣，软妹子在这里等你哟</a>
								<a class="d_price" href="#">免费</a>
								<img src="images/index/l_content/3.png" alt="" width="216" height="154"/>
								<ul class="d_nav">
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
								</ul>
							</div>
						</li>
						<li class="p" style="border-top:1px solid #2196f3;color:#2196f3;">
							<p class="p_title">应用</p>
							<div class="p_desc">
								<a class="d_title" href="#">时间简史</a>
								<a class="d_desc" href="#">多锁屏多乐趣，软妹子在这里等你哟</a>
								<a class="d_price" href="#">免费</a>
								<img src="images/index/l_content/4.png" alt="" width="216" height="154"/>
								<ul class="d_nav">
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
									<li class="n_1"></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="l_movie">
				<div class="m_title">
					<h2>视频</h2>
				</div>
				<div class="m_product">
					<ul>
						<li style="margin-left:0;">
							<img src="images/index/l_movie/1.jpg" alt="" width="296" height="180"/>
							<a href="">小米8.13发布会全程视频</a>
							<p>MIUI7、红米Note2、路由器青春版相约与您见面</p>
						</li>
						<li>
							<img src="images/index/l_movie/2.jpg" alt="" width="296" height="180"/>
							<a href="">小米8.13发布会全程视频</a>
							<p>MIUI7、红米Note2、路由器青春版相约与您见面</p>
						</li>
						<li>
							<img src="images/index/l_movie/3.jpg" alt="" width="296" height="180"/>
							<a href="">小米8.13发布会全程视频</a>
							<p>MIUI7、红米Note2、路由器青春版相约与您见面</p>
						</li>
						<li>
							<img src="images/index/l_movie/4.jpg" alt="" width="296" height="180"/>
							<a href="">小米8.13发布会全程视频</a>
							<p>MIUI7、红米Note2、路由器青春版相约与您见面</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--end last-->

		<!--footer start-->
		<div class="footer">
			<div class="f_site">
				<div class="s_service">
					<a href="#"><i></i>1小时快修服务</a>
					<a href="#"><i></i>1小时快修服务</a>
					<a href="#"><i></i>1小时快修服务</a>
					<a href="#"><i></i>1小时快修服务</a>
					<a href="#"><i></i>1小时快修服务</a>
				</div>
				<div class="s_help">
					<dl>
						<dt>帮助中心</dt>
						<dd>购物指南</dd>
						<dd>支付方式</dd>
						<dd>配送方式</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>购物指南</dd>
						<dd>支付方式</dd>
						<dd>配送方式</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>购物指南</dd>
						<dd>支付方式</dd>
						<dd>配送方式</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>购物指南</dd>
						<dd>支付方式</dd>
						<dd>配送方式</dd>
					</dl>
					<dl>
						<dt>帮助中心</dt>
						<dd>购物指南</dd>
						<dd>支付方式</dd>
						<dd>配送方式</dd>
					</dl>
					<div class="h_contact">
						<p class="phone">400-100-5678</p>
						<p class="date">周一至周日 8:00-18:00<br>（仅收市话费）</p>
						<a href="#"><i></i>24小时在线客服</a>
					</div>
				</div>
			</div>
			<div class="f_banquan">
				<div class="b_address">
					<div class="a_nav">
						<img class="logo" src="images/index/logo-footer.png" width="36" height="36"/>
						<p>
							<a href="#">小米网</a>&nbsp;|
							<a href="#">MIUI</a>&nbsp;|
							<a href="#">米聊</a>&nbsp;|
							<a href="#">多看书城</a>&nbsp;|
							<a href="#">小米路由器</a>&nbsp;|
							<a href="#">小米后院</a>&nbsp;|
							<a href="#">小米天猫店</a>&nbsp;|
							<a href="#">小米淘宝直营店</a>&nbsp;|
							<a href="#">小米网盟</a>&nbsp;|
							<a href="#">问题反馈</a>&nbsp;|
							<a href="#">Select Region</a>
						</p>
						<span>©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备1101080212535号 京网文[2014]0059-0009号</span>
					</div>
					<div class="a_anquan">
						<img src="images/index/v-logo-2.png" width="85" height="28"/>
						<img src="images/index/v-logo-1.png" width="85" height="28"/>
						<img src="images/index/v-logo-3.png" width="85" height="28"/>
					</div>
				</div>
			</div>
		</div>
		<!--end footer-->

	</div>
<script type="text/javascript">
	$(function(){
		var index=0;
		play();
		$(".b_focus").hover(function(){clearInterval(Time);},function(){play();});
		
		$(".m_banner .b_point .point").find("li").click(function(){
			$(this).addClass("on").siblings().removeClass("on");
			var _index=$(this).index();
			index=_index;
			$(".m_banner .b_focus .b_img").find("li").eq(_index).fadeIn("400").siblings().hide();
		});
		
		$(".b_next").click(function(){
			index++;
			var length=$(".m_banner .b_focus .b_img").find("li").length;
			if(index>=length)
			{index=0;}
			$(".m_banner .b_point .point").find("li").eq(index).addClass("on").siblings().removeClass("on");
			$(".m_banner .b_focus .b_img").find("li").eq(index).fadeIn("400").siblings().hide();
		});

		$(".b_prev").click(function(){
			index--;
			var length=$(".m_banner .b_focus .b_img").find("li").length;
			if(index<0)
			{index=length-1;}
			$(".m_banner .b_point .point").find("li").eq(index).addClass("on").siblings().removeClass("on");
			$(".m_banner .b_focus .b_img").find("li").eq(index).fadeIn("400").siblings().hide();
		});
		//定义自动轮转效果的函数
		function play(){
			Time=setInterval(function(){
				index++;
				var length=$(".m_banner .b_focus .b_img").find("li").length;
				if(index>=length)
				{index=0;}
				//联动小按钮
				$(".m_banner .b_point .point").find("li").eq(index).addClass("on").siblings().removeClass("on");
				//联动图片
				$(".m_banner .b_focus .b_img").find("li").eq(index).fadeIn("400").siblings().hide();
			},3000);
		}
	});
	
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
