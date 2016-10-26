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
			
			#showGoods .content{width:100%;background:#fff;margin-bottom:60px;}
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
			
			#showGoods .content .c_body{width:1226px;margin:0 auto;margin-top:100px;}
			
			#showGoods .content .c_body .b_goodsList{width:900px;float:left;}
			#showGoods .content .c_body .b_goodsList .g_title{margin-top:20px;width:100%;height:40px;border-bottom:2px solid #03a9f4;}
			#showGoods .content .c_body .b_goodsList .g_title ul li{width:140px;height:40px;}
			#showGoods .content .c_body .b_goodsList .g_title ul li a{display:block;width:140px;height:40px;background:#03a9f4;line-height:40px;text-align:center;color:#fff;}
			#showGoods .content .c_body .b_goodsList .g_nav{width:100%;height:34px;background:#eee;margin-top:20px;border:1px solid #e3e3e3;}
			#showGoods .content .c_body .b_goodsList .g_nav ul li{width:140px;height:34px;float:left;}
			#showGoods .content .c_body .b_goodsList .g_nav ul li a{display:block;width:140px;height:34px;line-height:34px;text-align:center;color:#333;border-right:1px solid #e3e3e3;}
			#showGoods .content .c_body .b_goodsList .g_nav ul li a.on{background:#fff;}
			#showGoods .content .c_body .b_goodsList .g_list{width:100%;}
			#showGoods .content .c_body .b_goodsList .g_list ul li{float:left;width:200px;height:300px;margin:20px 30px 0 0;border:1px solid #eee;}
			#showGoods .content .c_body .b_goodsList .design_list{width:100%;}
			#showGoods .content .c_body .b_goodsList .design_list ul li{background:#eee;float:left;width:200px;height:300px;margin:20px 30px 0 0;border:1px solid #eee;}
			
			#showGoods .content .c_body .b_goodsList .g_pagecount{width:100%;font-size:15px;color:#27d5bf;margin:100px auto 0 auto;height:30px;}
			#showGoods .content .c_body .b_goodsList .g_pagecount .p_content{float:right;height:30px;}
			
			#showGoods .content .c_body .b_hotBuy{width:300px;float:right;}
			#showGoods .content .c_body .b_hotBuy .h_title{margin-top:20px;width:100%;height:40px;border-bottom:2px solid #03a9f4;}
			#showGoods .content .c_body .b_hotBuy .h_title ul li{width:140px;height:40px;float:right;}
			#showGoods .content .c_body .b_hotBuy .h_title ul li a{display:block;width:140px;height:40px;background:#03a9f4;line-height:40px;text-align:center;color:#fff;}
			#showGoods .content .c_body .b_hotBuy .h_list{margin-top:20px;width:100%;}
			#showGoods .content .c_body .b_hotBuy .h_list ul li{width:100%;height:200px;background:#eee;margin-bottom:20px;}
			
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
			
			<div class="c_body">
				<!--  -->
				<div class="b_goodsList">
					<div class="g_title">
						<ul>
							<li><a href="#">所有商品</a></li>
						</ul>
					</div>
					<div class="g_nav">
						<ul>
							<li><a class="on" href="#">综合排序</a></li>
							<li><a href="#">销量排序</a></li>
							<li><a href="#">价格排序</a></li>
						</ul>
					</div>
					<div class="g_list">
						<ul>
							<li>
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
							<li>
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
							<li>
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
							<li style="margin-right:0;">
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
							<li>
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
							<li>
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
							<li>
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
							<li style="margin-right:0;">
								<a href="#"><img src="../images/user/pic.jpg" width="200" height="210"/></a>
								<div style="line-height:30px;width:100%;height:30px;"><span style="color:red;margin:0px 0 0 10px;font-size:18px;font-weight:bold;">￥1200</span><span style="margin:0 0 0 60px;">320人付款</span></div>
								<div style="color:#333;width:180px;padding:0 10px 0 10px;height:30px;">条例哈哈哈哈橱哈哈橱柜橱窗哈哈哈哈哈橱柜橱窗哈哈哈哈</div>
								<div style="margin:5px 0 0 10px;"><img src="../images/shop.png" width="14" height="14px"/><a href="#" style="margin-left:5px;color:#bbb;">江西师范大学</a></div>
							</li>
						</ul>
						<div class="clear"></div>
					</div>
					<div class="g_pagecount">
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
					<div class="g_title">
						<ul>
							<li><a href="#">精品设计</a></li>
						</ul>
					</div>
					<div class="design_list">
						<ul>
							<li></li>
							<li></li>
							<li></li>
							<li style="margin-right:0;"></li>
						</ul>
					</div>
				</div>
				<!--  -->
				
				<!--  -->
				<div class="b_hotBuy">
					<div class="h_title">
						<ul>
							<li><a href="#">店家热拼</a></li>
						</ul>
					</div>
					<div class="h_list">
						<ul>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>
				<!--  -->
				<div class="clear"></div>
			</div>
			
			
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
