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
	initFindNormalSelectList();
});
function initFindNormalSelectList(){//初始化查询的下拉列表
		//alert("1111");
		$.ajax({
			url : "normalEmployeeServlet?method=getInitNormalList",
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
	function entryNormalInfo(){
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
		    	   $("#insertNormalEmployeeForm").ajaxSubmit({
		   			url : "normalEmployeeServlet?method=insertNormalEmployeeInfo",
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

<!-- @nxl标题 -->

    <!-- Content Header (Page header) -->
     <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h2>普通员工信息录入 | Ordinary Employees Information Entry</h2>
          </div>
          <!-- <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
              <li class="breadcrumb-item active">实习生信息管理</li>
              <li class="breadcrumb-item active"><a href="searchTraInfo.jsp">实习生信息查询</li>
            </ol>
          </div> -->
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <br>
    <!-- Main content -->
    <section class="content">




<div class="panel-body">
<div id="tipmsg" class="alert alert-warning" style="display: none;"></div>
<form id="insertNormalEmployeeForm" action="#" method="post" class="form-horizontal">
<!-- 第一层 -->
<div class="panel panel-default">
<div class="panel-heading">
<h4>基本信息</h4>
</div>
<div class="panel-body" align="center">
<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
员工编号</span>
<input id="empno" name="empno" type="text" class="form-control" placeholder="请输入分配的员工编号" >
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
姓名</span>
<input id="namecn" name="namecn" type="text" class="form-control" placeholder="请输入姓名">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
性别</span><select id="text_sex" name="text_sex" class="form-control">
<option value="-1">请选择...</option>
	<!-- <option value="0">女</option>
	<option value="1">男</option> -->
	</select>
<!-- <input type="text" class="form-control"> -->
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white" >
国籍 </span><select id="text_countary" name="text_countary" class="form-control">
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
</div>

</div>
<br>


<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
&nbsp;&nbsp;Email&nbsp;&nbsp;</span>
<input type="text" id="email" name="email" class="form-control" placeholder="请输入Email" >
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
电话</span>
<input type="text" id="tel" name="tel" class="form-control" placeholder="请输入电话号码">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
&nbsp;&nbsp;QQ&nbsp;&nbsp;</span>
<input type="text" id="qq" name="qq" class="form-control" placeholder="请输入QQ号">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
&nbsp;邮编&nbsp;&nbsp;</span>
<input type="text" id="postcode" name="postcode" class="form-control" placeholder="请输入邮编">
</div>

</div>
<br>




<div class="row form-inline">
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white" >
生日</span>
<input type="date" id="birth" name="birth" class="form-control">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
身份证号</span>
<input type="text" id="personid" name="personid" class="form-control" placeholder="请输入身份证号">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
民族</span>
<select id="text_nationality" name="text_nationality" class="form-control">
<option value="-1">请选择...</option>
	<!-- <option value="0">汉</option>
	<option value="1">回</option>
	<option value="2">满</option>
	<option value="3">其他</option> -->
	</select>
<!-- <input type="text" class="form-control" placeholder="请输入邮编"> -->
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white" >
户籍地 </span>
<input type="text" id="birthplace" name="birthplace" class="form-control" placeholder="请输入户籍地">
</div>

</div>
<br>

<div class="row form-inline">
&nbsp;&nbsp;<div class="input-group form-inline col-sm-11 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
联系地址</span>
<input type="text" id="address" name="address" class="form-control" placeholder="请输入联系地址">
</div>

</div>
<br>
</div>
</div>
<!-- 第二层 -->
<div class="panel panel-default" align="center">
<div class="panel-heading">
<h4>附加信息</h4>
</div>
<div class="panel-body">
<div class="row form-inline">
&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
学历</span>
<select id="text_display" name="text_display" class="form-control">
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
<span class="input-group-addon" style="background-color: #0099CC;color:white">
入职日期</span>
 <input type="date" id="joindate" name="joindate" class="form-control"> 
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
工资卡开户行</span>
<input type="text" id="bank" name="bank" class="form-control" placeholder="请输入工资卡开户行">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
工资卡账户</span>
<input type="text" id="bankno" name="bankno" class="form-control" placeholder="请输入工资卡账户">
</div>
</div>
<br>

<div class="input-group form-inline col-sm-12 ">
&nbsp;
<span class="input-group-addon" style="background-color: #0099CC;color:white">
职业证书</span>
<input type="text" id="jobcertify" name="jobcertify" class="form-control" placeholder="请输入所获证书">
<br>
</div>
</div>
</div>
</div>

<!-- 第三层 -->
<div align="center">
<a href="javascript:void(0)" class="btn btn-success lnr lnr-char-bars" onclick="entryNormalInfo()" style="width: 100px">保存</a>
<input type="reset" value="重置" style="width: 100px"
							class="btn btn-warning">
</div>
</form>
</div>
</div>
</body>
</html>