<%@ page language="java" contentType="text/html; charset=UTF-8" errorPage="404.jsp"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery/jquery.form.js"></script>
<script type="text/javascript">
$(function(){
	findPersonInfoByUid();
});
function changeMyPhoto(){
	$("#myphotoUpload").modal("show");
}
function uploadPhotoSubmit(){
	$("#uploadPhotoForm").ajaxSubmit({
		url:"sysUserServlet?method=uploadPhoto1",
		type:"post",
		//dataType:"json",
		success:function(data){
			
			if(data=="true")
				{
				$("#tipmsg").html("头像修改成功！");
				}else{
					$("#tipmsg").html("头像修改失败！");
					}
			 findPersonInfoByUid();
			        $("#tipmsg").css("display","block");
			        $("#myphotoUpload").modal("hide");
		},
		error:function(){
			$("#tipmsg").css("display","block");
			$("#tipmsg").html("请求服务器失败！");
		}
		
	});
	/* document.getElementById("uploadPhotoForm").subimt(); */
}
function findPersonInfoByUid(){
	$.ajax({
		url : "sysUserServlet?method=findPersonInfoByUid",
		type : "post",
			dataType:"json", 
			success : function(result){
			$("#uid").val(result.uid);
			$("#displayname").val(result.displayname);
			$("#myphoto").attr("src",result.photo);
			$("#remark").val(result.remark);
			$("#personPhoto",window.parent.document).attr("src",result.photo);
			//$("#displayname",window.parent.document).val(result.displayname);
		},
		error : function() {
			$("#tipmsg").css("display", "block");
			$("#tipmsg").html("请求服务器失败，请检查网络");
		}
	});
}


var returnValue=null;
function validateOldUpwd(){
	$.ajax({
		url:"sysUserServlet?method=validateOldUpwd",  //重写
		type:"post",
		async:false,              //加上才能进行赋值
		data:{"oldupwd":$("#oldpwd").val()},
		success:function(result){
		returnValue=result;
		},
		error:function(){
			alert("请求服务器失败");
		}
	});
	return returnValue;
}

$("#updatepwdtipmsg").css("display","none");
$("#tipmsg").css("display","none");
function updatePwd(){
	var upwd=$("#oldpwd").val();
	if(upwd.length==0){
		$("#upwdmsg").html("原密码不能为空!");
		return;
	}else{		
		$("#upwdmsg").html("");
	}
	
	var temp=validateOldUpwd();
	if(temp!="true"){
		$("#upwdmsg").html("原密码输入有误，请重试!");
		return;
	}else{
		$("#upwdmsg").html("");
		
	}
	
	var npwd=$("#newpwd").val();
	if(npwd.length==0){
		$("#newpwdmsg").html("新密码不能为空!");
		return;
	}else{
		$("#newpwdmsg").html("");
	}
	
	var rnpwd=$("#rnewpwd").val();
	if(rnpwd.length==0){
		$("#rnewpwdmsg").html("确认密码不能为空!");
		return;
	}else{
		$("#rnewpwdmsg").html("");
	}
	if(npwd!=rnpwd)
	{
		$("#rnewpwdmsg").html("两次密码不一致!");
		return;
	}else{
		$("#rnewpwdmsg").html("");
	}
	//////////////////////////////////////
	$("#upwdForm").ajaxSubmit({
		url:"sysUserServlet?method=updateUpwd",
		type:"post",
		dataType:"json",
		success:function(data){
			//alert(data);
			//var obj=JSON.parse(data);
			//alert(data.returnMsg);
			if(data.returnMsg=="1")
				{
				$("#updatepwdtipmsg").html("修改密码成功！");
				
				}else
					{
					$("#updatepwdtipmsg").html("修改密码失败！");
					}
			        $("#updatepwdtipmsg").css("display","block");
		},
		error:function(){
			$("#tipmsg").css("display","block");
			$("#tipmsg").html("请求服务器失败！");
		}
	});
}
function updateUserInfo(){
	$("#userinfo").ajaxSubmit({
		url:"sysUserServlet?method=updateUserInfo",
		type:"post",
		dataType:"json",
		success:function(data){
			//alert(data);
			//var obj=JSON.parse(data);
			//alert(data.returnMsg);
			if(data.returnMsg=="1")
				{
				$("#tipmsg").html("修改用户信息成功！");
	
				}else
					{
					$("#tipmsg").html("修改用户信息失败！");
					}
			        $("#tipmsg").css("display","block");
		},
		error:function(){
			$("#tipmsg").css("display","block");
			$("#tipmsg").html("请求服务器失败！");
		}
	});
}

</script>
</head>
<body>
<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#home" data-toggle="tab">
		
	
	
		<h5 class="lnr lnr-chart-bars">资料修改</h5>
		</a>
	</li>
	
		
		<li><a href="#ios" data-toggle="tab">
		<h5 class="lnr lnr-chart-bars">密码修改</h5>
		</a></li>
		
		
		
		<div class="candile-inner">
		
		<div id="myTabContent" class="tab-content">
		
		<div class="tab-pane fade in active" id="home">
		<br><br><br>
		<div id="tipmsg" class="alert alert-warning" style="display: none;"></div>
		<form id="userinfo" action="" method="post" class="form-horizontal">
		
			<div class="form-group">
				<div class="form-inline">
					<label class="control-label col-md-2"> 账户: </label> <input
						type="text" name="uid" id="uid" class="form-control"
						style="border: none" disabled="disabled">
				</div>
				<br>
				<div class="form-inline">
					<label class="control-label col-md-2"> 昵称: </label> <input
						type="text" name="displayname" id="displayname" class="form-control">
				</div>
				<br>
				<div class="form-inline">
					<label class="control-label col-md-2"> 头像: </label>
					
					 <a
						href="javascript:changeMyPhoto()" style="border: none"> <img
						id="myphoto" alt="个人头像" style="width: 150px; height: 150px"
						src="images/User_50px.png" class="img-thumbnail img-circle"></a>
                        
				</div>
				<br>
				<div class="form-inline">
					<label class="control-label col-md-2"> 备注(个人信息描述): </label>
					<textarea rows="5" cols="50" class="form-control" id="remark" name="remark"
						placeholder="不低于10个字"></textarea>
				</div>
			</div>
			
				<div style="position:relative;left:200px;top:20px;width:400px;height:50px">
			<a href="javascript:updateUserInfo()" class="btn btn-primary"><span
				class="glyphicon glyphicon-edit"></span> 确认修改</a>
				</div>
		</form>
		</div>
		
		
		<div class="tab-pane fade" id="ios">
		<br><br><br>
		<div id="updatepwdtipmsg" class="alert alert-warning"
			style="display: none;"></div>
		<form id="upwdForm" action="#" method="post" class="form-horizontal">
			<div class="form-group">
				<div class="form-inline">
					<label class="control-label col-md-2"> 旧密码: </label> <input
						type="password" name="oldpwd" id="oldpwd" class="form-control">
						<label id="upwdmsg" style="color:red">*</label>
				</div>
				<br>
				<div class="form-inline">
					<label class="control-label col-md-2"> 新密码: </label> <input
						type="password" name="newpwd" id="newpwd" class="form-control">
						<label id="newpwdmsg" style="color:red">*</label>
				</div>
				<br>
				<div class="form-inline">
					<label class="control-label col-md-2"> 确认密码: </label> <input
						type="password" name="rnewpwd" id="rnewpwd" class="form-control">
						<label id="rnewpwdmsg" style="color:red">*</label>
				</div>
				<br>
			</div>
			<div style="position:relative;left:200px;top:20px;width:400px;height:50px">
			<a href="javascript:updatePwd()" class="btn btn-primary"><span
				class="glyphicon glyphicon-edit"></span> 确认修改</a>
				</div>
		</form>
			
		</div>
	</div>
	</div>


	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myphotoUpload" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">更换头像</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<form id="uploadPhotoForm" method="post"
						enctype="multipart/form-data">
						<input type="file" id="myphoto" name="myphoto" accept="image/*">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button onclick="javascript:uploadPhotoSubmit()"
						id="uploadPhotoBtn_Submit" type="button" class="btn btn-primary">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
</html>