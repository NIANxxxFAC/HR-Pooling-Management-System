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
	function entryStudentInfo(){
		bootbox.confirm({
		    title: "确认提示",
		    message: "是否真的添加此实习生信息？",
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
		   			url : "studentEmployeeServlet?method=insertStudentEmployeeInfo",
		   			type : "post",
		   			dataType:"json",
		   			success : function(result) {
		   				
		   				if(result==true){
		   					$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("添加实习生信息成功！");
		   				}else
		   					{
		   					$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("添加实习生信息失败，请重试！");
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
<!-- @nxl标题 -->

    <!-- Content Header (Page header) -->
     <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h2>实习生信息录入 | Trainee Information Entry</h2>
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
<div class="panel-body"  align="center">    <!-- align="center" -->
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
</div>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon"  style="background-color: #0099CC;color:white">
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




<div class="row form-inline" align="center">
&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
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
 &nbsp;&nbsp;QQ &nbsp;&nbsp;</span>
<input type="text" id="qq" name="qq" class="form-control" placeholder="请输入QQ号">
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
 &nbsp;邮编&nbsp;&nbsp; </span>
<input type="text" id="postcode" name="postcode" class="form-control" placeholder="请输入邮编">
</div>

</div>
<br>





<div class="row form-inline" align="center">
&nbsp;&nbsp;
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
	</select>
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon"  style="background-color: #0099CC;color:white">
户籍地</span>
<input type="text" id="birthplace" name="birthplace"  class="form-control" placeholder="请输入户籍地">
</div>

</div>
<br>



<div class="row form-inline" align="center">
<div class="input-group form-inline col-sm-11 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
联系地址</span>
<input type="text" id="address" name="address" class="form-control" placeholder="请输入联系地址">
</div>
</div>
</div>
<br>



</div>
<!-- 第二层 -->
<div class="panel panel-default">
<div class="panel-heading">
<h4>附加信息</h4>
</div>
<div class="panel-body" >
<div class="row form-inline">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 "  >
<span class="input-group-addon" style="background-color: #0099CC;color:white">
所在学校</span>
<input type="text" id="school" name="school" class="form-control" placeholder="请输入所在学校"> 
<!-- <input type="text" class="form-control" placeholder="请输入身份证号"> -->
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
年级</span>
<select id="level" name="level" class="form-control">
<option value="-1">请选择...</option>
	<option value="1">大一</option>
	<option value="2">大二</option>
	<option value="3">大三</option>
	<option value="4">大四</option>
	 <option value="0">其他</option>
	</select>
<!-- <input type="text" class="form-control" placeholder="请输入邮编"> -->
</div>


&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 "  >
<span class="input-group-addon" style="background-color: #0099CC;color:white">
结算类型</span>
<select id="paytype" name="paytype" class="form-control">
<option value="-1">请选择...</option>
	<option value="0">日结</option>
	<option value="1">月结</option>
	</select>
<!-- <input type="text" id="school" name="school" class="form-control" placeholder="请输入毕业学校">  -->
<!-- <input type="text" class="form-control" placeholder="请输入身份证号"> -->
</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
薪资标准</span>
<input type="text" id="paycount" name="paycount" class="form-control" placeholder="请输入薪资标准">
<!-- <input type="text" class="form-control" placeholder="请输入邮编"> -->
</div>
</div>
<br>


<div class="row form-inline" align="center">
<div class="input-group form-inline col-sm-11 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
兴趣爱好</span>
<textarea rows="3" cols="50" id="interest" name="interest" class="form-control" placeholder="请输入兴趣爱好"></textarea>
</div>
</div>
</div>
</div>

<!-- 第三层 -->
<div align="center">
<a href="javascript:void(0)" class="btn btn-success lnr lnr-char-bars" onclick="entryStudentInfo()" style="width: 100px">保存</a>
<input type="reset" value="重置" style="width: 100px"
							class="btn btn-warning">
</div>
</form>
</div>
<!-- </div> -->
</body>
</html>