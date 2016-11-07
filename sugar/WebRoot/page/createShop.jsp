<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar createShop</title>
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
			
			#mysugar .content{width:1225px;height:auto;margin:0 auto 30px auto;position:relative;}
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
			#mysugar .content .c_right .r_userInfo{width:100%;height:80px;background:#fff;box-shadow:0px 0px 3px #000;}
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
					<li><a href="${basePath }/page/userInfo.jsp">账号设置</a></li>
					<li><a href="${basePath }/tologin/userPage/toMyShopCar">我的购物车</a></li>
					<li><a href="${basePath }/tologin/userPage/toAllOrder">我的交易记录</a></li>
					<li><a href="javascript:void(0)">我的设计</a></li>
					<li class="on"><a href="javascript:void(0)">我的商店</a><span></span></li>
					<li class="set"><a href="#"><i></i></a></li>
				</ul>
			</div>
			<div class="c_right">
				<div class="r_userInfo">
				</div>
				<div style="width:100%;height:300px;text-align:center;font-size:14px;color:#333;line-height:300px;">您还没有注册商店！现在去<a href="javascript:void(0)" class="showWindow" style="color:#03a9f4;">注册商店，成为掌柜的。</a></div>
			</div>
			<div class="clear"></div>
			
			<!-- createShopWindow start -->
			<div class="createShopWindow">
				<div id="createShopWindowHeader">
					<span id="configContainer" style="float: left">注册商店</span>
				</div>
				<div id="createShopWindowContent" style="overflow: hidden;position:relative;">
					<div class="errormsg" style="display:none;position:absolute;top:8px;left:102px;color:red;font-size:13px;">该店铺名已经存在~</div>
					<div class="input" style="width:330px;height:60%;margin:20px auto 0 auto;">
						<span style="display:inline-block;width:70px;height:38px;font-size:15px;line-height:38px;float:left;margin-left:20px;">店铺名：</span><input type="text" style="float:left;width:200px;height:30px;padding-left:10px;" class="shopName" id="shopName"/><br/>
					</div>
					<div style="position:absolute;bottom:20px;left:65px;">
						<input type="button" value="确定" id="ooButton_csw" />
						<input type="button" value="取消" id="ccButton_csw" style="margin-left:50px;"/>
					</div>
				</div>
			</div>
			<!-- createShopWindow end -->
			
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
	</div>

<script type="text/javascript">
var status = "${user.status}";	// 如果为2说明是店家
var state = 0; // 0是不修改，1是修改
$(function(){
	// jqweight控件
	$(".createShopWindow").jqxWindow({
		isModal :true,
		modalOpacity: 0.3,
		theme : theme,
		width : 340,
		height : 180,
		resizable : false,
		autoOpen : false,
		cancelButton : $('#ccButton_csw'),
		okButton : $('#ooButton_csw'),
		initContent : function() {
			$('#ooButton_csw').jqxButton({
				theme : theme,
				template : "primary",
				cursor : "pointer",
				width : '80',
				height : '30'
			});
			$('#ccButton_csw').jqxButton({
				theme : theme,
				template : "info",
				cursor : "pointer",
				width : '80',
				height : '30'
			});
		}
	});
	$(".showWindow").click(function(){
		$('.createShopWindow').jqxWindow('open');
	});
	$("#ooButton_csw").click(function(){
		// 准备数据
		var shopName = $("#shopName").val();
		if(shopName.trim()!=""){
			$.ajax({
				url: basePath+"/shop/addShop",
				data: {"shopName":shopName},
				type: 'post',
				success: function(data){
					window.location.href=basePath+"/tologin/userPage/toMyShop";
					// 改变用户status状态为2
					$.ajax({
						url: basePath+"/user/changeStatus",
						data: {"status":2},
						type: 'post'
					});
				}
			});
		}else{
			showInfo("字段不能为空~","warning");
		}
	});

	$(window).scroll(function(){
		var topScr=$(window).scrollTop();
		if(topScr>70){
			$("#mysugar .content .c_left").addClass("fixed");
		}else{
			$("#mysugar .content .c_left").removeClass("fixed");
		}
	});
	var user = "${user}";
	var username = "${user.username}";
	var email = "${user.email}";
	var sex = "${user.sex}";
	var picurl = "${user.picurl}";
	if(user!=null){
		var html = "<div class='info_pic'><img src='"+basePath+"/"+picurl+"'/></div>"+
"					<div class='info_username' style='height:80px;width:auto;line-height:80px;float:left;margin-left:20px;font-size:14px;color:#333;'><span>用户名：</span>"+username+"</div>"+
"					<div class='info_sex' style='height:80px;width:auto;line-height:80px;float:left;margin-left:60px;font-size:14px;color:#333;'><span>性别：</span>"+sexFormat(sex)+"</div>"+
"					<div class='info_email' style='height:80px;width:auto;line-height:80px;float:left;margin-left:60px;font-size:14px;color:#333;'><span>邮箱：</span>"+email+"</div>"+
"					<div class='info_status' style='height:80px;width:auto;line-height:80px;float:left;margin-left:60px;font-size:14px;color:#333;'><span>身份：</span>"+statusFormat(status)+"</div>";
		$(".r_userInfo").append(html);
		$("#sex").val(sexFormat(sex));
	}
	
	// 是否展示商家信息
	if(status == "2"){
		$(".d_special").show();
	}else{
		$(".pswmodel").show();
		$(".changepass").text("算了我不想修改密码");
		state = "1";
	}
	
	// 性别格式化
	function sexFormat(sex){
		if(sex == "f"){
			return "女";
		}else if(sex == "m"){
			return "男";
		}
	}
	
	// 身份格式化
	function statusFormat(status){
		if(status == "0"){
			return "普通会员";
		}else if(status == "1"){
			return "没错我就是设计师";
		}else if(status == "2"){
			return "没错掌柜的就是我";
		}
	}
	
	// 是否修改密码
	$(".changepass").click(function(){
		if(state == "0"){
			$(".pswmodel").show();
			$(this).text("算了我不想修改密码");
			state = "1";
		}else if(state == "1"){
			$(".pswmodel").slideUp();
			$(this).text("我想修改密码");
			state = "0";
		}
	});
	
});

// 点击确认修改
$(".d_submit a").click(function(){
	// 准备数据要更新的数据
	var username = $("#username").val();
	var sex = $("#sex").val();
	var email = $("#email").val();
	var oldpass = $("#oldpass").val();
	var newpass = $("#newpass").val();
	var phonenum = $("#phonenum").val();
	
	if((status=="2"&&phonenum=="")||(state=="1"&&(oldpass==""||newpass==""))||(username==""||sex==""||email=="")){
		showInfo("字段不能为空~","warning");
	}else{
		// 修改信息
		$.ajax({
			url: basePath+"/user/updateInfo",
			data: {"username":username,"sex":sex,"email":email,"newpass":newpass,"phonenum":phonenum},
			type: 'post',
			traditional: true,
			async: false,
			success: function(data){
				if(data.result == "success"){
					window.location.reload(location);
					if(data.message == "relogin"){
						window.location.href=basePath+"/user/logout";
					}
				}
			}
		});
	}
});

// 用户名不能重复校验
var oldname = $("#username").val();
$("#username").blur(function(){
	var username = $("#username").val();
	$.ajax({
		url: basePath+"/user/checkName",
		data: {"username":username},
		type: 'post',
		traditional: true,
		success: function(data){
			if(data.result=="success"&&username!=oldname){
				showInfo("用户名已经被注册了~","warning");
				$("#username").val("");
			}
		}
	});
});

// 检验旧的密码
$("#oldpass").blur(function(){
	var oldpass = $("#oldpass").val();
	$.ajax({
		url: basePath+"/user/checkPassword",
		data: {"oldpass":oldpass},
		type: 'post',
		traditional: true,
		success: function(data){
			if(data.result=="fail"&&oldpass!=""){
				showInfo("原密码出错了~","warning");
				$("#oldpass").val("");
			}
		}
	});
});


/* $.ajax({
	url: basePath+"/",
	data: {},
	type: 'post',
	traditional: true,
	async: false,
	success: function(data){
	}
}); */

</script>
</body>
  
</html>
