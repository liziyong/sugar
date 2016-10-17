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
			
			#s_signup .logo{width:1190px;height:80px;margin:0 auto;padding:20px 0;}
			#s_signup .logo span{display:inline-block;zoom:1;height:80px;line-height:80px;margin-left: 6px;font-size: 22px;font-family: '\5FAE\8F6F\96C5\9ED1','\534E\6587\7EC6\9ED1','\9ED1\4F53',arial;font-weight: 400;vertical-align: middle;float:left;color:#000;}
			
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
		<jsp:include  page="/commons/head.jsp"/>
		<!-- header end -->

		<!-- logo start -->
		<div class="logo">
			<div style="float:left;"><img src="../images/logo.png" width="120"height="80"/></div>
			<span style="">用户注册</span>
		</div>
		<!-- logo end -->

		<!-- nav start -->
		<div class="nav">
			<ul>
				<li class="mail active"><i class="m_i active">1</i>设置邮箱号</li>
				<li class="info"><i class="i_i">2</i>填写账号信息</li>
				<li class="success"><i class="s_i">3</i>注册成功</li>
			</ul>
		</div>
		<!-- nav end -->
		
		<!-- formdata start -->
		<div class="formdata" style="width:600px;height:300px;margin:60px auto 0 auto;">
			<div class="d_mail" style="width:100%;height:auto;margin:0 auto">
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:0px auto;">你的邮箱号<input id="mail" type="text" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入邮箱" required/></div>
				<div style="position:relative;width:300px;height:34px;font-size:15px;color:#333;margin:34px auto 0 182px;">验证码<input id="checkcode" type="text" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入验证码" required/><img onclick="randomCheckcode()" src="${basePath }/checkcode" width="60px" height="34px" style="position:absolute;right:34px;top:1px;cursor:pointer;"/></div>
				<div><input class="mail_submit" type="button" style="display:block;width:300px;height:34px;border:none;margin:34px auto 0 auto;background:#03a9f4;color:#fff;border-radius:4px;cursor:pointer;" value="下一步"/></div>
			</div>
			<div class="d_info" style="display:none;width:100%;height:auto;margin:0 auto;">
				<div style="position:relative;width:300px;height:34px;font-size:15px;color:#333;margin:0px auto;">你的用户名<input id="username" type="text" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入用户名"/><div id="error_msg" style="display:none;position: absolute;top: 1px;left: 320px;color: #fff;background: #03a9f4;width: 189px;height: 34px;line-height: 34px;text-indent: 15px;border-radius: 4px;"></div></div>
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:30px 0 0 166px;">你的密码<input id="password" type="password" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请输入密码"/></div>
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:30px 0 0 166px;">确认密码<input id="againpassword" type="password" style="margin-left:20px;width:200px;height:34px;border:1px solid  #bbb;border-radius:4px;text-indent:10px;"placeholder="请确认密码"/></div>
				<div style="width:300px;height:34px;font-size:15px;color:#333;margin:30px 0 0 196px;">性别<div id="sex" style="float:right;margin:-5px 47px 0 0px;border:1px solid #bbb;border-radius:4px;color: #bbb;font-size: 15px;font-weight: 500;text-indent: 10px;"></div></div>
				<div><input class="info_submit" type="button" style="display:block;width:300px;height:34px;border:none;margin:34px auto 0 auto;background:#03a9f4;color:#fff;border-radius:4px;cursor:pointer;" value="注册"/></div>
			</div>
			<div class="d_success" style="display:none;width:100%;height:100%;margin:0 auto;">
				<div style="width:400px;height:34px;margin:0 auto;font-size:16px;color:#333;line-height:34px;" class="msg_success"><i style="display: inline-block;zoom: 1;margin-right: 15px;width: 34px;height: 34px;text-align: center;font-style: normal;line-height: 34px;font-size: 18px;font-weight: 700;color: #FFF;background: #03a9f4;border-radius:50%;">√</i><span class="success_username" style="color:#03a9f4;">momolela</span>，恭喜您已经成为sugar的一员。</div>
				<div style="width:300px;height:34px;margin:30px auto 0 auto;font-size:16px;color:#333;line-height:34px;" class="msg_mail">你的邮箱是：<span class="success_email" style="color:#03a9f4;">1083910359@qq.com</span></div>
				<div style="width:300px;height:34px;margin:30px auto 0 auto;"><input type="button" class="success_submit" style="display:block;width:300px;height:34px;border:none;margin:34px auto 0 auto;background:#03a9f4;color:#fff;border-radius:4px;cursor:pointer;" value="返回登录"/></div>
			</div>
		</div>
		<!-- formdata end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
		
	</div>

<script type="text/javascript">
	// 准备全局变量的数据
	var email;
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
				url: basePath+"/user/checkCode",
				data: {"checkcode":$("#checkcode").val()},
				type: 'post',
				async: false,
				success:function(data){
					if(data.result=="fail"){
						alert("验证码出错了");
					}else{
						email = $("#mail").val();
						// 改变样式
						$(".mail").removeClass("active");
						$(".m_i").removeClass("active");
						$(".info").addClass("active");
						$(".i_i").addClass("active");
						// 换成信息块
						$(".d_mail").hide();
						$(".d_info").show();
					}
				}
			});
		}else{
			showInfo("请认真填写表单,表单不能为空~","warning");
		}
	});
	
	// 点击注册
	$(".info_submit").click(function(){
		// 判断字段不为空
		if($("#username").val()!=""&&$("#password").val()!=""&&$("#againpassword").val()!=""&&$("#sex").val()!=""){
			if($("#password").val()==$("#againpassword").val()){
				username = $("#username").val();
				password = $("#password").val();
				sex = $("#sex").val();
				$(this).val("注册中...");
				// 注册信息
				$.ajax({
					url: basePath+"/user/register",
					data: {"username":username,"password":password,"sex":sex,"email":email},
					type: 'post',
					success:function(data){
						if(data.result=="success"){
							// 改变样式
							$(".info").removeClass("active");
							$(".i_i").removeClass("active");
							$(".success").addClass("active");
							$(".s_i").addClass("active");
							// 换成信息块
							$(".d_info").hide();
							$(".d_success").show();
							// 信息替换
							$(".success_username").text(username);
							$(".success_email").text(email);
						}
					}
				});
			}else{
				showInfo("密码不一致~","warning");
			}
		}else{
			showInfo("请认真填写表单,表单不能为空~","warning");
		}
	});
	
	// 检查用户名是否被占用
	$("#password,#againpassword").focus(function(){
		$.ajax({
			url: basePath+"/user/checkName",
			data: {"username":$("#username").val()},
			type: 'post',
			success:function(data){
				if(data.result=="success"){
					$("#error_msg").fadeIn();
					$("#error_msg").text(data.message);
				}else{
					$("#error_msg").fadeOut();
				}
			}
		});
	});
	
	// 点击返回登录
	$(".success_submit").click(function(){
		window.location.href=basePath+"/page/login.jsp"
	});
</script>
</body>
  
</html>
