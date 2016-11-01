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
			
			#buyProcess .content .c_address{width:100%;margin-top:40px;}
			#buyProcess .content .a_title{width:100%;height:40px;color:#333;font-weight:bold;font-size:14px;}
			#buyProcess .content .a_list{width:100%;}
			#buyProcess .content .a_list ul li{padding:10px;background:url('../images/address_not.png');width:217px;height:85px;cursor:pointer;float:left;margin-right:28px;margin-bottom:20px;}
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
				<div class="a_list" style="position:relative;">
					<ul>
					</ul>
					<div class="delAddress" style="position:absolute;top:0px;right:0px;width:20px;height:100px;border:1px solid #bbb;text-align:center;line-height:24px;cursor:pointer;padding:0 2px 0 2px;border-radius:4px 0 0 4px;color:#333;border-right:3px solid #03a9f4;">管理地址</div>
					<div class="addwindow" style="display:none;position:fixed;top:50%;left:50%;width:600px;height:400px;background:#fff;z-index:10000;margin-top:-200px;margin-left:-300px;border-radius:4px;">
						<div class="a_title" style="width:100%;height:30px;color:#333;line-height:30px;text-indent:10px;border-bottom:1px solid #bbb;">添加新的地址</div>
						<div class="a_content" style="margin:30px 0 20px 130px;font-size:14px;color:#333;"><span style="margin-right:19px;">省市/区：</span><input id="content" style="outline:none;text-indent:5px;width:240px;height:30px;"/></div>
						<div class="a_contentdetail" style="margin:30px 0 20px 130px;font-size:14px;color:#333;"><span style="margin-right:10px;">详细地址：</span><input id="contentdetail" style="outline:none;text-indent:5px;width:240px;height:30px;"/></div>
						<div class="a_phonenum" style="margin:30px 0 20px 130px;font-size:14px;color:#333;"><span style="margin-right:10px;">手机号码：</span><input id="phonenum" style="outline:none;text-indent:5px;width:240px;height:30px;"/></div>
						<div class="a_realname" style="margin:30px 0 20px 130px;font-size:14px;color:#333;"><span style="margin-right:10px;">收货姓名：</span><input id="realname" style="outline:none;text-indent:5px;width:240px;height:30px;"/></div>
						<div class="okbutton" style="width:120px;height:30px;background:#fff;color:#333;border:1px solid #03a9f4;cursor:pointer;text-align:center;line-height:30px;float:left;margin:10px 0 0 150px;">确认</div>
						<div class="canclebutton" style="width:120px;height:30px;background:#03a9f4;color:#fff;text-align:center;cursor:pointer;line-height:30px;float:left;margin:10px 0 0 30px;">取消</div>
					</div>
					<div class="addmask" style="display:none;width:100%;height:100%;position:fixed;background:rgba(0,0,0,.4);top:0;left:0;z-index:9999;"></div>
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
	var allAddress = new Array();
	$(function(){
		// 请求用户的所有地址
		$.ajax({
			url: basePath+"/address/getAllAddress",
			type: 'post',
			async: false,
			success: function(data){
				allAddress = data.datamap.addressList;
			}
		});
		
		// 地址html
		for(var i = 0;i<allAddress.length;i++){
			var a_list = "<li>"+
	"							<div class='ad_simple'>"+allAddress[i].content+"<span style='color:#737373;'>（"+allAddress[i].realname+" 收）</span></div>"+
	"							<div class='ad_detail'>"+allAddress[i].contentdetail+"<br/>"+allAddress[i].phonenum+"</div>"+
	"						</li>";
			$(".a_list ul").append(a_list);
			$(".a_list ul li").eq(0).addClass("on");
		}
		var add_li = "<li class='addAddress' style='font-size:16px;text-align:center;line-height:80px;'><span>+</span>添加新地址</li>"+
					"<div class='clear'></div>"
		$(".a_list ul").append(add_li);
		// 点击添加地址
		$(".addAddress").on("click",function(){
			$(".addwindow").show();
			$(".addmask").show();
		});
		$(".a_list ul li:not(.addAddress)").on("click",function(){
			$(this).addClass("on").siblings().removeClass("on");
		});
		// 点击取消
		$(".canclebutton").click(function(){
			$(".addwindow").hide();
			$(".addmask").hide();
		});
		// 点击确认
		$(".okbutton").click(function(){
			var content = $("#content").val();
			var contentdetail = $("#contentdetail").val();
			var phonenum = $("#phonenum").val();
			var realname = $("#realname").val();
			if(content==""||contentdetail==""||phonenum==""||realname==""){
				showInfo("字段不能为空~","warning");
			}else{
				$.ajax({
					url: basePath+"/address/addAddress",
					data: {"content":content,"contentdetail":contentdetail,"phonenum":phonenum,"realname":realname},
					type: 'post',
					success: function(data){
						showInfo("地址添加成功~","success");
						$(".addwindow").hide();
						$(".addmask").hide();
						// 先清除所有的li
						$(".a_list ul li").remove();
						// 请求用户的所有地址
						$.ajax({
							url: basePath+"/address/getAllAddress",
							type: 'post',
							async: false,
							success: function(data){
								allAddress = data.datamap.addressList;
							}
						});
						
						// 地址html
						for(var i = 0;i<allAddress.length;i++){
							var a_list = "<li>"+
					"							<div class='ad_simple'>"+allAddress[i].content+"<span style='color:#737373;'>（"+allAddress[i].realname+" 收）</span></div>"+
					"							<div class='ad_detail'>"+allAddress[i].contentdetail+"<br/>"+allAddress[i].phonenum+"</div>"+
					"						</li>";
							$(".a_list ul").append(a_list);
							$(".a_list ul li").eq(0).addClass("on");
						}
						var add_li = "<li class='addAddress' style='font-size:16px;text-align:center;line-height:80px;'><span>+</span>添加新地址</li>"+
									"<div class='clear'></div>"
						$(".a_list ul").append(add_li);
						$(".addAddress").on("click",function(){
							$(".addwindow").show();
							$(".addmask").show();
						});
						$(".a_list ul li:not(.addAddress)").on("click",function(){
							$(this).addClass("on").siblings().removeClass("on");
						});
					}
				});
			}
		});
	});
	
	// 点击管理地址
	$(".a_list .delAddress").click(function(){
		alert("del");
	});
</script>
</body>
  
</html>
