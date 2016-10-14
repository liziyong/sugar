<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar sign up</title>
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
			
			#s_signup{width:100%;height:100%;}
			#s_signup .header{width:100%;height:35px;background:rgba(0,0,0,.7);}
			#s_signup .header .h_content{width:1190px;height:35px;margin:0 auto;}
			#s_signup .header .h_content .c_user{width:auto;height:35px;float:left;color:#fff;}
			#s_signup .header .h_content .c_user .nologin{width:130px;height:35px;}
			#s_signup .header .h_content .c_user .nologin .no_login{color:#fff;display:inline-block;width:70px;height:35px;float:left;line-height:35px;cursor:pointer;}
			#s_signup .header .h_content .c_user .nologin .no_register{color:#bbb;display:inline-block;width:60px;height:35px;float:left;line-height:35px;cursor:pointer;}
			#s_signup .header .h_content .c_user .nologin .no_register:hover{color:#fff;}
			
			#s_signup .header .h_content .c_user .login{width:150px;height:35px;display:none;}
			#s_signup .header .h_content .c_user .login .lo_name{width:90px;height:35px;float:left;}
			#s_signup .header .h_content .c_user .login .lo_msg{width:60px;height:35px;float:left;}
			#s_signup .header .h_content .c_user .login .lospan{display:inline-block;width:auto;height:35px;float:left;line-height:35px;}
			#s_signup .header .h_content .c_user .login .xiala_icon{display:inline-block;width:0px;height:0px;float:left;border-top:6px solid #fff;border-left:3px solid transparent;border-right:3px solid transparent;margin:16px 0 0 10px;}
			
			#s_signup .header .h_content .c_nav{width:auto;height:35px;float:right;}
			#s_signup .header .h_content .c_nav ul{width:400px;height:35px;color:#fff;}
			#s_signup .header .h_content .c_nav ul li{width:auto;height:35px;float:left;padding:0 5px 0 5px;margin-right:20px;}
			#s_signup .header .h_content .c_nav ul li a{width:100%;height:35px;line-height:35px;display:block;}
			
			#s_signup .logo{width:1190px;height:43px;margin:0 auto;padding:20px 0;}
			#s_signup .logo span{display:inline-block;zoom:1;height:43px;line-height:43px;margin-left: 6px;font-size: 22px;font-family: '\5FAE\8F6F\96C5\9ED1','\534E\6587\7EC6\9ED1','\9ED1\4F53',arial;font-weight: 400;vertical-align: middle;float:left;color:#000;}
			
			#s_signup .nav{width:1190px;height:46px;border-bottom:2px solid #e6e6e6;margin:0 auto;}
			#s_signup .nav ul{width:720px;margin:0 auto;}
			#s_signup .nav ul li{display: inline;float: left;width: 170px;padding-left: 70px;height: 46px;line-height: 46px;font-size: 16px;font-weight: 700;color: #999;font-family: "\5FAE\8F6F\96C5\9ED1","\534E\6587\7EC6\9ED1","\9ED1\4F53",arial;}
			#s_signup .nav ul li.active{border-bottom:2px solid #03a9f4;}
			#s_signup .nav ul li i{display: inline-block;zoom: 1;margin-right: 5px;width: 24px;height: 24px;text-align: center;font-style: normal;line-height: 24px;font-size: 14px;font-weight: 700;color: #FFF;background: #bbb;border-radius:50%;}
			#s_signup .nav ul li i.active{background:#03a9f4;}
			
			.clear{clear:both;}
		
		</style>
	</head>
<body>
	<div id="s_signup">
		<!-- header start -->
		<div class="header">
			<div class="h_content">
				<div class="c_user">
					<div class="nologin">
						<span class="no_login">亲，请登录</span>
						<span class="no_register">免费注册</span>
					</div>
					<div class="login">
						<div class="lo_name">
							<span class="lospan">孙肇将</span><i class="xiala_icon"></i>
							<div class=""></div>
						</div>
						<div class="lo_msg">
							<span class="lospan">消息</span><i class="xiala_icon"></i>
							<div class=""></div>
						</div>
					</div>
				</div>
				<div class="c_nav">
					<ul style="">
						<li><a href="#">我的设计</a></li>
						<li><a href="#">我的购物车</a></li>
						<li><a href="#">商品分类</a></li>
						<li><a href="#">卖家中心</a></li>
						<li><a href="#">首页</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- header end -->

		<!-- logo start -->
		<div class="logo">
			<div style="float:left;"><img src="images/logo.png" width="120"height="43"/></div>
			<span style="">用户注册</span>
		</div>
		<!-- logo end -->

		<!-- nav start -->
		<div class="nav">
			<ul>
				<li class="active"><i class="active">1</i>设置邮箱号</li>
				<li><i>2</i>填写账号信息</li>
				<li><i>3</i>注册成功</li>
			</ul>
		</div>
		<!-- nav end -->
		
		<!-- formdata start -->
		<div class="formdata" style="width:600px;height:300px;margin:60px auto 0 auto;">
			<div class="d_mail" style="display:none;width:100%;height:auto;margin:0 auto">
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:0px auto;">你的邮箱号<input id="mail" type="text" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入邮箱" required/></div>
				<div style="position:relative;width:300px;height:34px;font-size:15px;color:#333;margin:34px auto 0 182px;">验证码<input id="checkcode" type="text" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入验证码" required/><img onclick="randomCheckcode()" src="${basePath }/checkcode" width="60px" height="34px" style="position:absolute;right:34px;top:1px;cursor:pointer;"/></div>
				<div><input class="mail_submit" type="button" style="display:block;width:300px;height:34px;border:none;margin:34px auto 0 auto;background:#03a9f4;color:#fff;border-radius:4px;cursor:pointer;" value="下一步"/></div>
			</div>
			<div class="d_info" style="width:100%;height:auto;margin:0 auto;">
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:0px auto;">你的用户名<input type="text" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入用户名"/></div>
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:30px 0 0 166px;">你的密码<input type="password" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入密码"/></div>
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:30px 0 0 166px;">确认密码<input type="password" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请确认密码"/></div>
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:30px 0 0 196px;">性别<div id="sex" style="float:right;margin:-5px 47px 0 0px;border:1px solid #bbb;border-radius:4px;color: #bbb;font-size: 15px;font-weight: 500;text-indent: 10px;"></div></div>
				<div><input type="button" style="display:block;width:300px;height:34px;border:none;margin:34px auto 0 auto;background:#03a9f4;color:#fff;border-radius:4px;cursor:pointer;" value="注册"/></div>
			</div>
			<div class="d_success" style="display:none;width:100%;height:100%;margin:0 auto;">
				<div style="width:400px;height:34px;margin:0 auto;font-size:16px;color:#333;line-height:34px;" class="msg_success"><i style="display: inline-block;zoom: 1;margin-right: 15px;width: 34px;height: 34px;text-align: center;font-style: normal;line-height: 34px;font-size: 18px;font-weight: 700;color: #FFF;background: #03a9f4;border-radius:50%;">√</i><span style="color:#03a9f4;">momolela</span>，恭喜您已经成为sugar的一员。</div>
				<div style="width:300px;height:34px;margin:30px auto 0 auto;font-size:16px;color:#333;line-height:34px;" class="msg_mail">你的邮箱是：<span style="color:#03a9f4;">1083910359@qq.com</span></div>
				<div style="width:300px;height:34px;margin:30px auto 0 auto;"><input type="button"  style="display:block;width:300px;height:34px;border:none;margin:34px auto 0 auto;background:#03a9f4;color:#fff;border-radius:4px;cursor:pointer;" value="返回登录"/></div>
			</div>
		</div>
		<!-- formdata end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
		
	</div>

<script type="text/javascript">
	// 准备全局变量的数据
	var emial;
	var username;
	var password;
	var sex;
	
	$(function(){
		// 初始化性别控件
		var dataMap = [{sexName:"男",sexValue:"m"},{sexName:"女",sexValue:"f"}];
		var source ={
				datatype: "json",
				datafields: [{name:"sexName"},{name:"sexValue"}],
				localdata: dataMap
			};
		var dataAdapter = new $.jqx.dataAdapter(source);
		$("#sex").jqxDropDownList({ 
			theme : theme,
			source: dataAdapter,
			placeHolder : '选择性别~',
			autoDropDownHeight : true,
			width: '200', 
			height: '34',
			displayMember: "sexName",
			valueMember: "sexValue"
		});
	});
	
	// 点击切换验证码
	function randomCheckcode(){
		var src = basePath+"/checkcode?haha="+Math.random();
		$(".d_mail").find("img").attr("src",src);
	}
	
	// 点击下一步
	$(".mail_submit").click(function(){
		// 判断不为空
		if($("#mail").val()!=""&&$("#checkcode").val()!=""){
			// 验证验证码
			$.ajax({
				url: basePatj+"/checkcode",
				data: {"checkcode":$("#checkcode").val()},
				type: 'post',
				success:function(data){}
			});
			emial = $("#mail").val();
		}else{
			showInfo("请认真填写表单,表单不能为空~","warning");
		}
	});
</script>
</body>
  
</html>
