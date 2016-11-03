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
			#goodsInfo .m_nav{width:100%;height:100px;background:#fff;position:absolute;top:40px;left:0;z-index:9999;}
			#goodsInfo .m_nav.fixed{position:fixed;top:0px;left:0px;border-bottom:1px solid #f6f6f6;}
			#goodsInfo .m_nav .n_nav{width:1226px;height:100px;margin:0 auto;}
			#goodsInfo .m_nav .n_nav .logo{width:180px;height:100px;display:block;text-align:center;float:left;}
			#goodsInfo .m_nav .n_nav .nav{width:700px;height:100px;float:left;}
			#goodsInfo .m_nav .n_nav .nav ul li{height:100px;float:right;padding-left:15px;padding-right:15px;line-height:100px;}
			#goodsInfo .m_nav .n_nav .nav a{height:100px;display:block;font-size:16px;color:#000;}
			#goodsInfo .m_nav .n_nav .search{width:320px;height:75px;float:right;padding-top:25px;position:relative;}
			#goodsInfo .m_nav .n_nav .search input{width:235px;height:50px;float:right;outline:none;padding-left:10px;}
			#goodsInfo .m_nav .n_nav .search .s_icon{width:52px;height:52px;display:block;border:1px solid #bbb;float:right;border-left:0;}
			#goodsInfo .m_nav .n_nav .search .s_a{position:absolute;top:42px;right:64px;line-height:18px;}
			#goodsInfo .m_nav .n_nav .search .s_a a:hover{background:#03a9f4;color:#fff;}
			#goodsInfo .m_nav .n_nav .search .s_a .ex_s1{text-align:center;color:#757575;width:auto;height:18px;display:block;background:#eee;float:left;padding:0 5px 0 5px;}
			#goodsInfo .m_nav .n_nav .search .s_a .ex_s2{text-align:center;color:#757575;width:auto;height:18px;display:block;background:#eee;float:left;margin-left:5px;padding:0 5px 0 5px;}
			
			#goodsInfo .content{width:1205px;height:auto;margin:100px auto 60px auto;position:relative;}
			
			
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
			#goodsInfo .content .c_left .l_top .t_buy .goodsName{width:100%;height:20px;font-size:14px;color:#333;font-weight:600;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;}
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
		
		<div class="m_nav">
			<div class="n_nav">
				<a class="logo"><img src="${basePath }/images/logo.png" alt="logo" width="120" height="80" style="margin-top:10px;"/></a>
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
		
		<!-- content start -->
		<div class="content">
		
			<!-- c_left start -->
			<div class="c_left">
				<div class="l_top">
					<div class="t_pic">
						<!-- <div class="showPic"><img src="../images/index/l_hot/4.jpg"/></div>
						<div class="picLi">
							<ul>
								<li class="on"><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
								<li><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
								<li><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
								<li><a><img src="../images/user/pic.jpg" width="50" height="50"/></a></li>
							</ul>
						</div> -->
					</div>
					<div class="t_buy">
						<%-- <div class="goodsName">${good.goodname }</div>
						<div class="goodsPrice">
							<div class="p_left">
								<div class="delp"><span style="font-size:14px;color:#333;margin-left:10px;">原价：</span><span style="color:#000;">￥<del>${good.goodoprice }</del></span></div>
								<div class="realp"><span style="font-size:14px;color:#333;margin-left:10px;">sugar价：</span><span style="color:red;font-size:20px;">￥${good.goodnprice }</span></div>
							</div>
							<div class="p_right">
								<div class="commentsc" style="width:69px;height:40px;padding:5px;float:left;border-right:1px dotted #bbb;margin-top:10px;">
									<p style="font-weight:bold;">${commentsList.size() }</p>
									<p>累计评论</p>
								</div>
								<div class="successc" style="width:70px;height:40px;padding:5px;float:left;margin-top:10px;">
									<p style="font-weight:bold;">30</p>
									<p>交易成功</p>
								</div>
							</div>
						</div>
						<div class="goodsShop">
							<div class="s_shopName"><span>所属店铺：</span>${shop.shopname }</div>
							<div class="s_bossName"><span>店主：</span>${shopowner.username }</div>
						</div>
						<div class="split" style="width:100%;height:30px;border-bottom:1px dotted #bbb;"></div>
						<div class="goodsCount">
							<div class="counts">
								<span style="display:inline-block;float:left;">购买数量：</span>
								<div class="cal">
									<input type="button" style="outline:none;background:#e0e0e0;border:none;width:20px;height:30px;" value="-"/><input style="width:80px;height:28px;border:1px solid #e0e0e0;outline:none;" value="1"/><input type="button" style="outline:none;width:20px;height:30px;background:#e0e0e0;border:none;" value="+"/>
								</div>
							</div>
							<div class="hasc">件（库存${good.goodcount }件）</div>
						</div>
						<div class="goodsButtons">
							<div style="width:100px;height:30px;float:left;background:#8fddfe;text-align:center;line-height:30px;color:#fff;">立即购买</div>
							<div style="width:120px;height:30px;float:left;background:#03a9f4;margin-left:30px;text-align:center;line-height:30px;color:#fff;">加入购物车</div>
						</div> --%>
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
							<!-- <li>
								<div class="c_userInfo">
									<img src="../images/user/pic.jpg" width="70" height="70" style="border-radius:6px;"/>
									<p style="color:#333;font-size:14px;margin-top:10px;">momolela</p>
								</div>
								<div class="c_comments">
									<p style="line-height:20px;margin-top:10px;">非常很漂亮，质量服橱柜，，质量也特别的好，非常的喜欢，而且店欢非常好的喜欢，而且店家的服务态很漂亮，质量也喜欢，而且店家的服亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态很漂亮，质量也特别的好，非常的喜欢非常好的橱柜，很漂亮，质量也特别的好，非常的喜欢，而且店家的服务态度非常好，下次还会过来买的</p>
									<div class="creattime" style="margin:20px 0 20px 0;">2016-10-20 12:20:38</div>
								</div>
								<div class="clear"></div>
							</li> -->
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
	$(function(){
		//滚动屏幕的时候nav固定
		$(window).scroll(function(){
			var topScr=$(window).scrollTop();
			if(topScr>40){
				$("#goodsInfo .m_nav").addClass("fixed");
			}else{
				$("#goodsInfo .m_nav").removeClass("fixed");
			}
		});
		
		//	请求数据
		if(window.location.href.indexOf("goodid")!="-1"){
			var goodid = window.location.href.split("=")[1];
			$.ajax({
				url: basePath+"/good/findGoodById?goodid="+goodid,
				success: function(data){
					console.log(data.datamap);
					// 商品信息html
					var t_buy = "<div class='goodsName'>"+data.datamap.good.goodname+"</div>"+
"						<div class='goodsPrice'>"+
"							<div class='p_left'>"+
"								<div class='delp'><span style='font-size:14px;color:#333;margin-left:10px;'>原价：</span><span style='color:#000;'>￥<del>"+data.datamap.good.goodoprice+"</del></span></div>"+
"								<div class='realp'><span style='font-size:14px;color:#333;margin-left:10px;'>sugar价：</span><span style='color:red;font-size:20px;'>￥"+data.datamap.good.goodnprice+"</span></div>"+
"							</div>"+
"							<div class='p_right'>"+
"								<div class='commentsc' style='width:69px;height:40px;padding:5px;float:left;border-right:1px dotted #bbb;margin-top:10px;'>"+
"									<p style='font-weight:bold;'>"+data.datamap.commentsList.length+"</p>"+
"									<p>累计评论</p>"+
"								</div>"+
"								<div class='successc' style='width:70px;height:40px;padding:5px;float:left;margin-top:10px;'>"+
"									<p style='font-weight:bold;'>30</p>"+
"									<p>交易成功</p>"+
"								</div>"+
"							</div>"+
"						</div>"+
"						<div class='goodsShop'>"+
"							<div class='s_shopName'><span>所属店铺：</span>"+data.datamap.good.shopid.shopname+"</div>"+
"							<div class='s_bossName'><span>店主：</span>"+data.datamap.good.shopid.shopowner.username+"</div>"+
"						</div>"+
"						<div class='split' style='width:100%;height:30px;border-bottom:1px dotted #bbb;'></div>"+
"						<div class='goodsCount'>"+
"							<div class='counts'>"+
"								<span style='display:inline-block;float:left;'>购买数量：</span>"+
"								<div class='cal'>"+
"									<input class='delcount' type='button' style='cursor:pointer;outline:none;background:#e0e0e0;border:none;width:20px;height:30px;' value='-'/><input class='totalcount' style='width:80px;height:28px;border:1px solid #e0e0e0;outline:none;' value='1'/><input class='addcount' type='button' style='outline:none;width:20px;height:30px;background:#e0e0e0;border:none;cursor:pointer;' value='+'/>"+
"								</div>"+
"							</div>"+
"							<div class='hasc'>件（库存"+data.datamap.good.goodcount+"件）</div>"+
"						</div>"+
"						<div class='goodsButtons'>"+
"							<div class='buynow' style='cursor:pointer;width:100px;height:30px;float:left;background:#8fddfe;text-align:center;line-height:30px;color:#fff;'>立即购买</div>"+
"							<div class='addshopcar' style='cursor:pointer;width:120px;height:30px;float:left;background:#03a9f4;margin-left:30px;text-align:center;line-height:30px;color:#fff;'>加入购物车</div>"+
"						</div>";
					$(".t_buy").append(t_buy);
					$(".delcount").click(function(){
						var totalcount = $(".totalcount").val();
						if(totalcount==1){
							return false;
						}else{
							totalcount = totalcount-1;
							$(".totalcount").val(totalcount);
						}
					});
					$(".addcount").click(function(){
						var totalcount = $(".totalcount").val();
						totalcount = Number(totalcount)+Number(1);
						$(".totalcount").val(totalcount);
					});
					// 点击立即购买
					$(".buynow").click(function(){
						var totalcount = $(".totalcount").val();
						var goodid = (window.location.href).split("=")[1];
						window.location.href=basePath+"/tologin/userPage/oneToBuyProcess?totalcount="+totalcount+"&goodid="+goodid;
					});
					// 点击加入购物车
					$(".addshopcar").click(function(){
						var totalcount = $(".totalcount").val();
						alert();
					});
					
					// 商品图片html
					var t_pic = "<div class='showPic'><img src='../images/index/l_hot/4.jpg'/></div>"+
"						<div class='picLi'>"+
"							<ul>"+
"							</ul>"+
"						</div>";
					$(".t_pic").append(t_pic);
					for(var i = 0;i<data.datamap.goodpicList.length;i++){
						var picLi = "<li style='cursor:pointer;'><a><img src='${basePath}/"+data.datamap.goodpicList[i].goodpicurl+"' width='50' height='50'/></a></li>";
						$(".picLi ul").append(picLi);
					}
					$(".showPic img").attr("src",basePath+"/"+data.datamap.goodpicList[0].goodpicurl)
					$(".picLi ul li").eq(0).addClass("on");
					$(".t_pic .picLi ul li").on("mouseover",function(){
						$(".showPic img").attr("src",$(this).find("img").attr("src"));
						$(this).addClass("on").siblings().removeClass("on");
					});
					
					
					// 商品评价html
					for(var i = 0;i<data.datamap.commentsList.length;i++){
						var b_commentsList = "<li>"+
	"								<div class='c_userInfo'>"+
	"									<img src='${basePath}/"+data.datamap.commentsList[i].user.picurl+"' width='70' height='70' style='border-radius:6px;'/>"+
	"									<p style='color:#333;font-size:14px;margin-top:10px;'>"+data.datamap.commentsList[i].user.username+"</p>"+
	"								</div>"+
	"								<div class='c_comments'>"+
	"									<p style='line-height:20px;margin-top:10px;'>"+data.datamap.commentsList[i].comments+"</p>"+
	"									<div class='creattime' style='margin:20px 0 20px 0;'>"+data.datamap.commentsList[i].createtime+"</div>"+
	"								</div>"+
	"								<div class='clear'></div>"+
	"							</li>";
						$(".b_commentsList ul").append(b_commentsList);
					}
				}
			});
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
