<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="shortcut icon" type="image/x-icon" href="image/favicon.ico"> -->
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
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
	initFindSelectList();
	//findNormalSalary();
	findStudentSalary()
});
function initFindSelectList(){//初始化查询的下拉列表
//	alert("1111");
	$.ajax({
		url : "normalEmployeeServlet?method=getInitList",
		type : "post",
		dataType:"json",
		success : function(result) {
			//alert(result);
			var str_job="<option value='-1'>请选择...</option>";
			$.each(result.jobList,function(index,row){
				str_job+="<option value='"+row.id+"'>"+row.titlecn+"</option>"
			});
			var str_dept="<option value='-1'>请选择...</option>";
			$.each(result.deptList,function(index,row){
				str_dept+="<option value='"+row.id+"'>"+row.deptName+"</option>"
			});
			$("#normal_job").html(str_job);
			$("#normal_dept").html(str_dept);
		},
		error : function() {
			$("#tipmsg").css("display", "block");
			$("#tipmsg").html("请求服务器失败，请检查网络");
		}
	});
}
function findNormalSalaryRefresh(){
	$('#table').bootstrapTable("refresh");
}
function findStudentSalary(){
	$('#table').bootstrapTable({
		url : "outerEmployeeServlet?method=findOuterSalaryInfo",
		striped : true,
		pagination : true,
		clickToSelect : true,
		sortable : true, //是否启用排序
		sortOrder : "asc", //排序方式
		pageNumber : 1, //初始化加载第一页，默认第一页
		pageSize : 3, //每页的记录行数（*）
		pageList : [ 5, 10, 25, 50 ], //可供选择的每页的行数（*）
		toolbar : '#toolbar', //工具按钮用哪个容器
		search : true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
		showColumns : true, //是否显示所有的列
		showRefresh : true, //是否显示刷新按钮
		 sidePagination:"server",       //分页方式:cliess客户端分页，server服务器端分页
		 queryParams:function(params){
			 var obj={
					pageSize:params.limit,  //每页几条记录(对象之间用逗号隔开)
					page:params.offset / params.limit,
					name:$("#normal_name").val(),
					empno:$("#normal_empno").val()
			 };
			 return obj;
		 },
		columns : [ {
			field : "id",
			checkbox : true
		},  {
			field : 'empno',
			title : '员工编号',
			align : "center"
		}, {
			field : 'namecn',
			title : '姓名',
			align : "center"
		},{
			field : 'deptName',
			title : '所在部门',
			align : "center"
		},{
			field : 'titlecn',
			title : '岗位',
			align : "center"
		}, {
			field : 'sex',
			title : '性别',
			align : "center",
			formatter:function(value,row,index){
				if(row.sex==0)
					value="女";
				if(row.sex==1)
					value="男";
				return value;
				}
		}, {
			field : 'base',
			title : '基本工资',
			align : "center"
		}, {
			field : 'job',
			title : '岗位工资',
			align : "center"
		}, {
			field : 'traffic',
			title : '交通补贴',
			align : "center"
		}, {
			field : 'communicate',
			title : '通讯补贴',
			align : "center"
		}, {
			field : 'ednownent',
			title : '养老保险基数',
			align : "center"
		}, {
			field : 'medical',
			title : '医疗保险',
			align : "center"
		}, {
			field : 'unemployment',
			title : '失业保险',
			align : "center"
		}, {
			field : 'pafhc',
			title : '住房公积金',
			align : "center"
		}]
	});
}
/* function myFormatter(value, row, index) {
	var a = "<a href='javascript:updateEmp_normalByEmpno()' title='编辑'><span class='btn btn-success'>修改</span></a>"
	var b = "<a href='javascript:deleteEmp_normalByEmpno(\"" + row.empno
			+ "\")' title='删除'><span class='btn btn-warning'>删除</span></a>"
	return a + '&nbsp;&nbsp;&nbsp;' + b;
} */

function updateSalary(){
	var result=$("#table").bootstrapTable("getSelections", function (row) {
		//alert("aaaa");
          return row;
	});
	 $("#text_empno").val(result[0].empno);
     $("#text_name").val(result[0].namecn);
     $("#normal_base").val(result[0].base);
     $("#text_job").val(result[0].job);
     $("#normal_traffic").val(result[0].traffic);
     $("#normal_communicate").val(result[0].communicate);
     $("#normal_ednownent").val(result[0].ednownent);
     $("#normal_medical").val(result[0].medical);
     $("#normal_unemployment").val(result[0].unemployment);
     $("#normal_pafhc").val(result[0].pafhc);
	$("#myModal").modal("show");
}
function updateSalaryOuterInfo(){
	bootbox.confirm({
	    title: "确认提示",
	    message: "是否真的修改所选普通员工薪资？",
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
	    	   $("#updateOuterSalaryForm").ajaxSubmit({
	   			url : "outerEmployeeServlet?method=updateOuterSalary",
	   			type : "post",
	   			dataType:"json",
	   			success : function(result) {
	   				if(result==true){
	   					$('#table').bootstrapTable("refresh");
	   					$("#tipmsg").css("display", "block");
		   				$("#tipmsg").html("修改普通员工薪资成功！");
	   				}else
	   					{
	   					$("#tipmsg").css("display", "block");
		   				$("#tipmsg").html("修改普通员工薪资失败，请重试！");
	   					}
		   				//window.location.href="searchStaffInfo.jsp";
	   					$("#myModal").modal("hide");
	   				
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
</head>




<!-- @nxl标题 -->

    <!-- Content Header (Page header) -->
     <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h2>外包人员薪资管理 | Outsourcing Personnel Salary Management</h2>
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
<div class="panel panel-default">
<div class="panel-heading">
<h4>检索条件</h4>
</div>
<div class="panel-body" align="center">
<div id="tipmsg" class="alert alert-warning" style="display: none;"></div>
<div class="row form-inline">
<form id="updateNormalEmployeeForm" action="#" method="post" class="form-horizontal">
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
姓名</span>
<input type="text" id="normal_name" name="normal_name" class="form-control" placeholder="请输入姓名">
</div>&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
员工编号</span>
<input type="text" id="normal_empno" name="normal_empno" class="form-control" placeholder="请输入员工编号" >
</div>&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
部门</span>
<!-- <input type="text" class="form-control"> -->
<select id="normal_dept"  class="form-control">
	<option value="-1">请选择...</option>
	</select>
</div>&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #0099CC;color:white">
岗位</span>
<!-- <input type="text" class="form-control"> -->
<select id="normal_job" class="form-control">
	<option value="-1">请选择...</option>
	</select>
</div>
</form>
</div>
<br>
<div align="right">
<!-- <a href="javascript:findNormalSalary()" class="btn btn-default"><span
				class="glyphicon glyphicon-search"></span>检索</a> -->
<a href="javascript:findNormalSalaryRefresh()" class="btn btn-default"><span
				class="glyphicon glyphicon-search"></span>检索</a>
				&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</div>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<h4>检索结果</h4>
</div>
<div class="panel-body">
<table id="table">
</table>
<div id="toolbar">
		<div class="btn-group">
			<a href="javascript:updateSalary()" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span>维护员工薪资数据</a>
			<!-- <a class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>修改</a>
			<a href="javascript:deleteSelectEmpByEmpno()" class="btn btn-default"><span
				class="glyphicon glyphicon-remove"></span>删除</a>-->
		</div>
	</div>
</div>
</div>
</div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改员工薪资</h4>
            </div>
             <div class="modal-body" align="center">
              <div id="addnormalSalarytipmsg" class="alert alert-warning" style="display: none"></div>
              <form id="updateOuterSalaryForm" action="#" method="post" class="form-horizontal">
              
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">员工编号</span>
		<input type="text" id="text_empno" name="text_empno" class="form-control" style="border: none" readonly="readonly"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">&nbsp;&nbsp;&nbsp;&nbsp;姓名&nbsp;&nbsp;&nbsp;</span>
		<input type="text" id="text_name" name="text_name" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">基本工资</span>
		<input type="text" id="normal_base" name="normal_base" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">岗位工资</span>
		<input type="text" id="text_job" name="text_job" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">		
		<span class="input-group-addon" style="background-color: #0099CC;color:white">交通补贴</span>
		<input type="text" id="normal_traffic" name="normal_traffic" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">通讯补贴</span>
		<input type="text" id="normal_communicate" name="normal_communicate" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">养老保险</span>
		<input type="text" id="normal_ednownent" name="normal_ednownent" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">		
		<span class="input-group-addon" style="background-color: #0099CC;color:white">医疗保险</span>
		<input type="text" id="normal_medical" name="normal_medical" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">失业保险</span>
		<input type="text" id="normal_unemployment" name="normal_unemployment" class="form-control"/></div>
					&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">住房积金</span>
		<input type="text" id="normal_pafhc" name="normal_pafhc" class="form-control"/></div>				
				
			</form>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateSalaryOuterInfo()">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
</html>