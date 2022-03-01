<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript">
function login(){
	document.getElementById("f1").submit();
}
</script>
<title>登录页面</title>
<style type="text/css">
.center{
	position:fixed;
	top:50%;
	left:50%;
	-webkit-transform:translateX(-50%) translateY(-50%);
}</style>
</head>
<body>
	
	<div class="center-block center" style="width: 400px;">
		<div class="panel panel-default">
			<div class="panel-heading"
				style="background-image: url(images/login_bg.jpg)">
				<div align="center">
					<img alt="" src="images/login_cat.jpg"
						style="width: 100px; height: 100px" class="img img-circle">
				</div>
			</div>
		<form id="f1" action="loginServlet" method="post">
		<div class="panel-body">
			<div class="input-group">
				<label class="input-group-addon"> <span
					class="glyphicon glyphicon-user"></span></label> <input
					class="form-control" type="text" placeholder="用户名" id="uname"
					name="uname">
			</div>
			<br>
			<div class="input-group">
				<label class="input-group-addon"><span
					class="glyphicon glyphicon-lock"></span></label> <input
					class="form-control" type="password" placeholder="密码" id="upwd"
					name="upwd">
			</div>
			<br>
			<div>
				<a href="javascript:login()" class="btn btn-success form-control">登录</a>
			</div>
			<input type="checkbox" id="rememberme" name="rememberme"
				style="width: 20px; height: 20px">记住我
		</div>
		</form>
		<div class="panel-footer">
		${sessionScope.Loginerror}
		<br>
			<div align="center">人力资源管理系统</div>
		</div>
		</div>
	</div>
	
</body>
</html>