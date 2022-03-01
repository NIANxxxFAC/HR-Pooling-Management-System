<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="bootstrap_table/bootstrap-table.css" />

<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="jquery/jquery.form.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="bootstrap_table/bootstrap-table.js"></script>
<script type="text/javascript"
	src="bootstrap_table/locale/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript" src="bootbox/bootbox.min.js"></script>
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript">
$(function() {
	console.log(123);
	//alert("2222");
initFindJobbingSelectList();
});
function initFindJobbingSelectList(){//初始化查询的下拉列表
		//alert("1111");
		$.ajax({
			url : "jobbingEmployeeServlet?method=getInitJobbingList",
			type : "post",
			dataType:"json",
			success : function(result) {
				//var obj = JSON.parse(result);
				//alert(result);
				//alert(JSON.stringify(result));
				var str_sex = "<option value='-1'>请选择...</option>";
				$.each(result.sexList, function(index, row) {
					str_sex += "<option value='"+row.sex+"'>" + row.sex1
							+ "</option>"
				});
				$("#text_sex").html(str_sex);
				
				var str_countary= "<option value='-1'>请选择...</option>";
				$.each(result.countaryList, function(index, row) {
					str_countary += "<option value='"+row.value+"'>" + row.display
					+ "</option>"
					});
				
				$("#text_countary").html(str_countary);
				var str_display = "<option value='-1'>请选择...</option>";
				$.each(result.displayList, function(index, row) {
					str_display += "<option value='"+row.value+"'>" + row.display
					+ "</option>"
					});
				$("#text_display").html(str_display);
				
				var str_nationality = "<option value='-1'>请选择...</option>";
				$.each(result.nationalityList, function(index, row) {
					str_nationality += "<option value='"+row.value+"'>" + row.display
					+ "</option>"
					});
				$("#text_nationality").html(str_nationality);
				
			},
			error : function() {
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
		$("#tipmsg").css("display", "none");
		$("#tipmsg").html("");
	}
	function entryJobbingInfo(){
		bootbox.confirm({
		    title: "确认提示",
		    message: "是否真的添加次普通员工信息？",
		    buttons: {
		        cancel: {
		            label: '<i class="fa fa-times"></i> 取消'
		        },
		        confirm: {
		            label: '<i class="fa fa-check"></i> 确定'
		        }
		    },
		    callback: function (result) {
		       if(result==true){
		    	   $("#insertJobbingEmployeeForm").ajaxSubmit({
		   			url : "jobbingEmployeeServlet?method=insertJobbingEmployeeInfo",
		   			type : "post",
		   			dataType:"json",
		   			success : function(result) {
		   				
		   				if(result==true){
		   					$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("添加普通员工信息成功！");
		   				}else
		   					{
		   					$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("添加普通员工信息失败，请重试！");
		   					}
		   				
		   			},
		   			error : function() {
		   				$("#tipmsg").css("display", "block");
		   				$("#tipmsg").html("请求服务器失败，请检查网络");
		   			}
		   		});
		       }
		    }
		});
	}
</script>
<title>Insert title here</title>
</head>
<body>
<div class="panel panel-default" style="margin-left: 10px">
<div class="panel-heading">
<h4>普通员工信息</h4>
</div>
<div class="panel-body">
<div id="tipmsg" class="alert alert-warning" style="display: none;"></div>
<form id="insertJobbingEmployeeForm" action="#" method="post" class="form-horizontal">
<!-- 第一层 -->
<div class="panel panel-default">
<div class="panel-heading">
<h4>基本信息</h4>
</div>
<div class="panel-body">
<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
员工编号:</span>
<input id="empno" name="empno" type="text" class="form-control" placeholder="请输入分配的员工编号" >
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
姓名:</span>
<input id="namecn" name="namecn" type="text" class="form-control" placeholder="请输入姓名">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
性别:</span><select id="text_sex" name="text_sex" class="form-control">
<option value="-1">请选择...</option>
	<!-- <option value="0">女</option>
	<option value="1">男</option> -->
	</select>
<!-- <input type="text" class="form-control"> -->
</div>
</div>
<br>
<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
Email:</span>
<input type="text" id="email" name="email" class="form-control" placeholder="请输入Email" >
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
电话:</span>
<input type="text" id="tel" name="tel" class="form-control" placeholder="请输入电话号码">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
QQ:</span>
<input type="text" id="qq" name="qq" class="form-control" placeholder="请输入QQ号">
</div>
</div>
<br>
<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-5 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
联系地址：</span>
<input type="text" id="address" name="address" class="form-control" placeholder="请输入联系地址">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-4 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
邮编:</span>
<input type="text" id="postcode" name="postcode" class="form-control" placeholder="请输入邮编">
</div>
</div>
<br>
<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" >
国籍 :</span><select id="text_countary" name="text_countary" class="form-control">
	<option value="-1">请选择...</option>
	<!-- <option value="0">中国</option>
	<option value="1">美国</option>
	<option value="2">德国</option>
	<option value="3">日本</option>
	<option value="4">韩国</option>
	<option value="5">英国</option>
	<option value="4">俄罗斯</option>
	<option value="5">其他</option> -->
	</select>
<!-- <input type="text" class="form-control" placeholder="请输入Email" > -->
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" >
户籍地 :</span>
<input type="text" id="birthplace" name="birthplace" class="form-control" placeholder="请输入户籍地">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" >
生日 :</span>
<input type="date" id="birth" name="birth" class="form-control">
</div>
</div>
<br>
<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-4 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
身份证号:</span>
<input type="text" id="personid" name="personid" class="form-control" placeholder="请输入身份证号">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
民族:</span>
<select id="text_nationality" name="text_nationality" class="form-control">
<option value="-1">请选择...</option>
	<!-- <option value="0">汉</option>
	<option value="1">回</option>
	<option value="2">满</option>
	<option value="3">其他</option> -->
	</select>
<!-- <input type="text" class="form-control" placeholder="请输入邮编"> -->
</div>
</div>
<br>
</div>
</div>
<!-- 第二层 -->
<div class="panel panel-default">
<div class="panel-heading">
<h4>附加信息</h4>
</div>
<div class="panel-body">
<div class="row form-inline">
&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
外协形式:</span>
<select id="text_jointype" name="text_jointype" class="form-control">
	<option value="-1">请选择...</option>
	<!-- <option value="0">大专</option>
	<option value="1">本科</option>
	<option value="2">硕士</option>
	<option value="3">博士</option>
	<option value="4">其他</option>  -->
	</select>
<!-- <input type="text" class="form-control" placeholder="请输入身份证号"> -->
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
入职日期:</span>
 <input type="date" id="joindate" name="joindate" class="form-control"> 
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
所属公司:</span>
<input type="text" id="bank" name="bank" class="form-control" placeholder="请输入工资卡开户行">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</div>
<br>
<div class="row form-inline">
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
所在项目:</span>
<input type="text" id="project" name="project" class="form-control" placeholder="请输入所在项目">
</div>
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
紧急联系人:</span>
<input type="text" id="urgent" name="urgent" class="form-control" placeholder="请输入工资卡账户">
</div>
</div>
</div>
</div>

<!-- 第三层 -->
<div align="center">
<a href="javascript:void(0)" class="btn btn-success lnr lnr-char-bars" onclick="entryjobbingInfo()" style="width: 100px">保存</a>
<input type="reset" value="重置" style="width: 100px"
							class="btn btn-warning">
</div>
</form>
</div>
</div>
</body>
</html>