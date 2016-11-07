<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="/commons/taglib.jsp" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>sugar myShop</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<%@include file="/commons/public.jsp" %>
		<script type="text/javascript" src="${basePath}/js/swfupload/tz_upload.js"></script>

		<style type="text/css">
			*{margin:0;padding:0;}
			body{width:100%;height:100%;font-size:12px;font-family:'微软雅黑';color:#bbb;}
			li{list-style:none;}
			a{text-decoration:none;color:#fff;}
			
			#mysugar{width:100%;height:auto;}
			
			#mysugar .content{width:1225px;height:auto;margin:0 auto 30px auto;position:relative;}
			#mysugar .content .c_shoptitle{background:#fafafa;width:100%;height:100px;margin-top:40px;border:1px solid #eee;border-radius:4px;}
			#mysugar .content .c_allgood{width:90%;height:auto;margin:0 auto;margin-top:20px;}
			#mysugar .content .c_allhot{width:90%;height:auto;margin:0 auto;margin-top:20px;}
			
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
			<div class="c_shoptitle">
				<div class="s_logo" style="float:left;margin-left:20px;width:160px;height:100px;"><img src="${basePath }/images/logo.png" width="160" height="90" style="margin:5px 0 0 10px;"/></div>
				<div class="s_shopname" style="float:left;margin-left:40px;width:660px;height:100px;font-family:'钟齐段宁行书';font-size:34px;line-height:100px;color:#333;">风华绝代举世无双家居城</div>
			</div>
			
			<div class="c_allgood">
				<div class="a_title" style="border-bottom:2px solid #03a9f4;width:100%;height:40px;">
					<ul>
						<li style="width:140px;height:40px;float:left;"><a style="display:block;width:140px;height:40px;color:#fff;background:#03a9f4;text-align:center;line-height:40px;" href="javascript:void(0)">店内所有商品</a></li>
					</ul>
				</div>
				<div class="a_goodlist" style="width:100%;height:auto;padding:20px;">
					<ul>
						<c:forEach items="${goodList }" var="item">
						<li style="width:180px;height:260px;float:left;border:1px solid #eee;margin-right:36px;margin-top:20px;">
							<a style="display:block;width:180px;height:190px;" href="javascript:void(0)">
								<img src="${basePath }/images/good/${item.id }/1.jpg" width="180" height="190"/>
							</a>
							<div style="width:100%;height:70px;">
								<div class="leftinfo" style="float:left;padding:10px;width:120px;height:50px;">
									<p style="text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">${item.goodname }</p>
									<p style="margin-top:10px;">￥${item.goodnprice }</p>
								</div>
								<div class="righttool" style="float:left;width:40px;height:70px;">
									<div style="width:20px;width:20px;color:#03a9f4;background:#eee;line-height:20px;text-align:center;margin:10px 0 0 10px;cursor:pointer;" title="下架">下</div>
									<div style="width:20px;width:20px;color:red;background:#eee;line-height:20px;text-align:center;margin:10px 0 0 10px;cursor:pointer;" title="热拼">热</div>
								</div>
							</div>
						</li>
						</c:forEach>
						<li class="add" style="width:180px;height:260px;float:left;border:1px solid #eee;margin-right:36px;margin-top:20px;">
							<a href="javascript:void(0)" style="display:block;width:180px;height:260px;color:#333;line-height:260px;text-align:center;background:rgba(0,0,0,.2);">+上架新的商品</a>
						</li>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			
			<div class="c_allhot">
				<div class="a_hottitle" style="border-bottom:2px solid #03a9f4;width:100%;height:40px;">
					<ul>
						<li style="width:140px;height:40px;float:left;"><a style="display:block;width:140px;height:40px;color:#fff;background:#03a9f4;text-align:center;line-height:40px;" href="javascript:void(0)">店内热拼商品</a></li>
					</ul>
				</div>
				<div class="a_hotgoodlist" style="width:100%;height:auto;padding:20px;">
					<ul>
						<c:forEach items="${hotgoodList }" var="item">
						<li style="width:180px;height:260px;float:left;border:1px solid #eee;margin-right:36px;margin-top:20px;">
							<a style="display:block;width:180px;height:190px;" href="javascript:void(0)">
								<img src="${basePath }/images/good/${item.id }/1.jpg" width="180" height="190"/>
							</a>
							<div style="width:100%;height:70px;">
								<div class="hotleftinfo" style="float:left;padding:10px;width:120px;height:50px;">
									<p style="text-overflow: ellipsis;overflow: hidden;white-space: nowrap;">${item.goodname }</p>
									<p style="margin-top:10px;">￥${item.goodnprice }</p>
								</div>
								<div class="hotrighttool" style="float:left;width:40px;height:70px;">
									<div style="width:20px;width:20px;color:#03a9f4;background:#eee;line-height:20px;text-align:center;margin:10px 0 0 10px;cursor:pointer;" title="下架">下</div>
									<div style="width:20px;width:20px;color:#bbb;background:#eee;line-height:20px;text-align:center;margin:10px 0 0 10px;cursor:pointer;" title="去热拼">热</div>
								</div>
							</div>
						</li>
						</c:forEach>
						<div class="clear"></div>
					</ul>
				</div>
			</div>
			
			<!-- addGoodWindow start -->
			<div class="addGoodWindow">
				<div id="addGoodWindowHeader">
					<span id="configContainer" style="float: left">上架商品</span>
				</div>
				<div id="addGoodWindowContent" style="overflow: hidden;position:relative;">
					<div class="errormsg" style="display:none;position:absolute;top:8px;left:102px;color:red;font-size:13px;">该店铺名已经存在~</div>
					<div class="input" style="width:330px;height:40px;margin:20px auto 0 auto;">
						<span style="display:inline-block;width:70px;height:38px;font-size:15px;line-height:38px;float:left;margin-left:20px;">商品名：</span><input type="text" style="float:left;width:200px;height:30px;padding-left:10px;" class="goodname" id="goodname"/><br/>
					</div>
					<div class="input" style="width:330px;height:40px;margin:20px auto 0 auto;">
						<span style="display:inline-block;width:70px;height:38px;font-size:15px;line-height:38px;float:left;margin-left:20px;">库存：</span><input type="text" style="float:left;width:200px;height:30px;padding-left:10px;" class="goodcount" id="goodcount"/><br/>
					</div>
					<div class="input" style="width:330px;height:40px;margin:20px auto 0 auto;">
						<span style="display:inline-block;width:70px;height:38px;font-size:15px;line-height:38px;float:left;margin-left:20px;">原价：</span><input type="text" style="float:left;width:200px;height:30px;padding-left:10px;" class="goodoprice" id="goodoprice"/><br/>
					</div>
					<div class="input" style="width:330px;height:40px;margin:20px auto 0 auto;">
						<span style="display:inline-block;width:70px;height:38px;font-size:15px;line-height:38px;float:left;margin-left:20px;">现价：</span><input type="text" style="float:left;width:200px;height:30px;padding-left:10px;" class="goodnprice" id="goodnprice"/><br/>
					</div>
					<div class="input" style="width:330px;height:40px;margin:20px auto 0 auto;">
						<span style="display:inline-block;width:70px;height:38px;font-size:15px;line-height:38px;float:left;margin-left:20px;">类型：</span><div style="float:left;width:210px;height:30px;" name="bimg" class="bimg" id="bimg"></div><br/>
					</div>
					<div class="input" style="width:330px;height:40px;margin:20px auto 0 auto;">
						<span style="display:inline-block;width:70px;height:38px;font-size:15px;line-height:38px;float:left;margin-left:20px;">图片：</span><input type="file" style="float:left;width:200px;height:30px;padding-left:10px;" name="goodpic" class="goodpic" id="goodpic"/><br/>
					</div>
					<div style="position:absolute;bottom:20px;left:65px;">
						<input type="button" value="确定" id="ooButton_agw" />
						<input type="button" value="取消" id="ccButton_agw" style="margin-left:50px;"/>
					</div>
				</div>
			</div>
			<!-- addGoodWindow end -->
			
		</div>
		<!-- content end -->

		<!-- footer start -->
		<div class="footer" style="color:#333;position:fixed;bottom:0;left:0;width:100%;height:30px;text-align:center;line-height:30px;border-top:1px solid #bbb;background:#fff;">©sugar by jingbaba</div>
		<!-- footer end -->
	</div>

<script type="text/javascript">

	// 点击编辑banner图层中的upload按钮
	var t= $.tzUpload({
		url:basePath+"/ajaxupload/ajaxUploadAction/addGoodPic",
		postName:"bimg",
		type:"*.jpg;*.png;*.jpeg",
		targetId:"bimg",
		size:"10 MB",
		single:false,
		callback:function(data){
			var data = eval("("+data+")");
			url = data.url;
		}
	});

	var dataMap = [{sexName:"卧室",sexValue:"1"},{sexName:"浴室",sexValue:"2"},{sexName:"客厅",sexValue:"3"},{sexName:"厨房",sexValue:"4"},{sexName:"儿童部",sexValue:"5"},{sexName:"纺织品",sexValue:"6"},{sexName:"装饰",sexValue:"7"}];
	var source ={
		datatype: "json",
		datafields: [{name:"sexName"},{name:"sexValue"}],
		localdata: dataMap
	};
	var dataAdapter = new $.jqx.dataAdapter(source);
	// 性别下拉框
	$("#gclassid").jqxDropDownList({
		theme : theme,
		source: dataAdapter,
		placeHolder : '请选择类型~',
		width: '210',
		height: '30',
		dropDownHeight: '100',
		displayMember: "sexName",
	    valueMember: "sexValue"
	});

	// jqweight控件
	$(".addGoodWindow").jqxWindow({
		isModal :true,
		modalOpacity: 0.3,
		theme : theme,
		width : 440,
		height : 480,
		resizable : false,
		autoOpen : false,
		cancelButton : $('#ccButton_agw'),
		okButton : $('#ooButton_agw'),
		initContent : function() {
			$('#ooButton_agw').jqxButton({
				theme : theme,
				template : "primary",
				cursor : "pointer",
				width : '80',
				height : '30'
			});
			$('#ccButton_agw').jqxButton({
				theme : theme,
				template : "info",
				cursor : "pointer",
				width : '80',
				height : '30'
			});
		}
	});
	$(".add").click(function(){
		$('.addGoodWindow').jqxWindow('open');
	});
	$("#ooButton_agw").click(function(){
		// 准备数据
		var shopName = $("#shopName").val();
		if(shopName.trim()!=""){
			$.ajax({
				url: basePath+"/shop/addShop",
				data: {"shopName":shopName},
				type: 'post',
				success: function(data){
					window.location.href=basePath+"/tologin/userPage/toMyShop";
				}
			});
		}else{
			showInfo("字段不能为空~","warning");
		}
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
