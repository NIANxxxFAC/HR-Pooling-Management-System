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
		initFindSelectList();
		findEmployeeNormal(); 
		init();
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
				$("#text_job").html(str_job);
				$("#text_dept").html(str_dept);
			},
			error : function() {
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
	}
	
	function init() {
		
		$.ajax({
			url : "normalEmployeeServlet?method=findNormalEmployeeSexAndEduhitory&id="+Math.random(),
			type : "post",
			dataType:"json",
			success : function(result) {
				//var obj = JSON.parse(result);
				//alert(result);
				//alert(JSON.stringify(result));
			/* 	var str_sex = "<option value='-1'>请选择...</option>";
				$.each(result.sexList, function(index, row) {
					str_sex += "<option value='"+row.sex+"'>" + row.sex1
							+ "</option>"
				});
				$("#normal_sex").html(str_sex); */
				var str_display = "<option value='-1'>请选择...</option>";
				$.each(result.displayList, function(index, row) {
					str_display += "<option value='"+row.value+"'>" + row.display
					+ "</option>"
					});
				$("#normal_display").html(str_display);
			},
			error : function() {
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
		$("#tipmsg").css("display", "none");
		$("#tipmsg").html("");
	}

	function refreshTable(){
		$('#example2').bootstrapTable("refresh");
	}
	function findEmployeeNormal() {
		//alert("ppppp");
		$('#example2').bootstrapTable({
			url : "outerEmployeeServlet?method=findOuterEmployeeInfo",
			striped : true,
			pagination : true,
			clickToSelect : true,
			sortable : true, //是否启用排序
			sortOrder : "asc", //排序方式
			async:false,
			uniqueId:"empno",
			pageNumber : 1, //初始化加载第一页，默认第一页
			pageSize : 5, //每页的记录行数（*）
			pageList : [ 5, 10, 25, 50 ], //可供选择的每页的行数（*）
			toolbar : '#toolbar', //工具按钮用哪个容器
			search : true, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
			showColumns : true, //是否显示所有的列
			showRefresh : true, //是否显示刷新按钮
			/*  showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
			 cardView: false,                    //是否显示详细视图
			 detailView: false,                   //是否显示父子表 */
			 sidePagination:"server",       //分页方式:cliess客户端分页，server服务器端分页
			 queryParams:function(params){
				 var obj={
						pageSize:params.limit,  //每页几条记录(对象之间用逗号隔开)
						page:params.offset / params.limit,
						//empno:$("#search_empno").val(),
						empno:$("#search_empno").val(),
						personid:$("#search_personid").val(),
						name:$("#search_name").val()
				 };
				 return obj;
			 },
			 columns:[{
					field:" ",
					checkbox:true
				},{
					field:'empno',
					title:'员工编号',
					align:"center"
				},{
					field:'namecn',
					title:'姓名',
					align:"center"
				},{
					field:'sex',
					title:'性别',
					align:"center"
				},{
					field:'sendbor',
					title:'外派公司',
					align:"center"
					
				},{
					field:'personid',
					title:'身份证号码',
					align:"center"
				},{
					field:'tel',
					title:'电话号码',
					align:"center"
				},{
					field:'qq',
					title:'QQ号',
					align:"center"
				},{
					field:'email',
					title:'邮箱',
					align:"center"
				},{
					field:'id',
					title:'编辑',
					align:"center",
					formatter:myFormatter
				}
				]
			 });
		  }

function myFormatter(value, row, index) {
		var a = "<a href='javascript:updateEmp_outerByEmpno(\""+row.empno+"\")' title='编辑'><span class='btn btn-success'>修改</span></a>"
		var b = "<a href='javascript:deleteEmp_outerByEmpno(\"" + row.empno
				+ "\")' title='删除'><span class='btn btn-warning'>删除</span></a>"
		return a + '&nbsp;&nbsp;&nbsp;' + b;
	}
	function emailFormatter(value, row, index) {
		return "<a href='mailto:+"+value+"'>" + value + "</a>";
	}
	function updateEmp_outerByEmpno(empno){
		//init();
	//alert("bbb");
		var result=$("#example2").bootstrapTable("getRowByUniqueId",empno);
		//alert(result[0].sex);
		$("#normal_empno").val(empno);
		$("#normal_name").val(result.namecn);
		$("#normal_sex option:contains('"+result.sex+"')").prop("selected",true);
		$("#normal_sendbor").val(result.sendbor);
		//$("#normal_display option[value='"+result.value+"']").prop("selected",true);
		$("#normal_personid").val(result.personid);
		$("#normal_tel").val(result.tel);
		$("#normal_qq").val(result.qq);
		//$("#normal_level option:contains('"+result.display+"')").prop("selected",true);
		$("#normal_email").val(result.email);
		//searchEmployeeNormalByEmpno();
		//searchEmployeeNormalByEmpno(empno);
	//	alert("wwww");
		$("#outerEmployee").modal("show");
	}
	/* function searchEmployeeNormalByEmpno(empno){
		
		//alert(empno);
		$.ajax({
			url : "normalEmployeeServlet?method=searchEmployeeNormalByEmpno",
			type : "post",
			data : {
				"empno" : empno
			},
				dataType:"json", 
				success : function(result){
					alert(JSON.stringify(result));
				$("#normal_empno").val(result[0].empno);
				$("#normal_name").val(result[0].namecn);
				$("#normal_sex option[value='"+result[0].sex+"']").prop("selected",true);
				$("#normal_display option[value='"+result[0].value+"']").prop("selected",true);
				$("#normal_personid").val(result[0].personid);
				$("#normal_tel").val(result[0].tel);
				$("#normal_qq").val(result[0].qq);
				$("#normal_email").val(result[0].email);
				$("#normal_bank").val(result[0].bank);
			},
			error : function() {
				$("#tipmsg").css("display", "block");
				$("#tipmsg").html("请求服务器失败，请检查网络");
			}
		});
	} */
	
	function updateOuterEmployeeInfoByempno(){
	//	alert("1111111");
		bootbox.confirm({
		    title: "确认提示",
		    message: "是否真的修改本行外包员工信息？",
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
		    	   $("#updateOuterEmployeeForm").ajaxSubmit({
		   			url : "outerEmployeeServlet?method=updateOuterEmployeeInfoByEmpno",
		   			type : "post",
		   			dataType:"json",
		   			success : function(result) {
		   				if(result==true){
		   					$('#example2').bootstrapTable("refresh");
		   					$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("修改外包员工信息成功！");
		   				}else
		   					{
		   					$("#tipmsg").css("display", "block");
			   				$("#tipmsg").html("修改外包员工信息失败，请重试！");
		   					}
			   				//window.location.href="searchStaffInfo.jsp";
		   					$("#outerEmployee").modal("hide");
		   				
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
	
	function deleteEmp_outerByEmpno(empno) {
		//alert("sss");
		bootbox.confirm({
					message : "是否真的删除所选记录？",
					buttons : {
						cancel : {
							label : '取消',
							className : 'btn-danger'
						},
						confirm : {
							label : '确认删除',
							className : 'btn-success'
						}
					},
					callback : function(result) {
						if (result == true) {
							$.ajax({
										url : "outerEmployeeServlet?method=deleteOuterEmployeeByEmpno",
										type : "post",
										data : {
											"empno" : empno
										},
										success : function(result) {
											if (result == "true") {
												$('#example2').bootstrapTable(
														"refresh");
												$("#tipmsg").html("删除记录成功");
											} else
												$("#tipmsg").html("删除记录失败");
											$("#tipmsg")
													.css("display", "block");
										},
										error : function() {
											$("#tipmsg")
													.css("display", "block");
											$("#tipmsg").html("请求服务器失败，请检查网络");
										}
									});
							$('#tipmsg').show().delay(3000).fadeOut();
						}
					}
				});
	}

	function deleteSelectEmpByEmpno() {
		var empnoArr = $("#example2").bootstrapTable("getSelections");
		//alert(empnoArr.length);
		if (empnoArr.length == 0) {
			bootbox.alert("请至少选择一行数据进行删除！");
		} else {
			bootbox
					.confirm({
						message : "是否真的删除所选记录？",
						buttons : {
							cancel : {
								label : '取消',
								className : 'btn-danger'
							},
							confirm : {
								label : '确认删除',
								className : 'btn-success'
							}
						},
						callback : function(result) {
							if (result == true) {
								var str = [];
								$.each(empnoArr, function(index, row) {
									str.push(row.empno);
								});
								$.ajax({
											url : "outerEmployeeServlet?method=deleteOuterEmployeeByEmpno",
											type : "post",
											data : {
												"empno" : str.join(",")
											},
											success : function(result) {
												if (result == "true") {
													$('#example2').bootstrapTable("refresh");
													$("#tipmsg").html("删除记录成功");
												} else
													$("#tipmsg").html("删除记录失败");
												$("#tipmsg").css("display","block");
											},
											error : function() {
												$("#tipmsg").css("display","block");
												$("#tipmsg").html("请求服务器失败，请检查网络");
											}
										});
							}
						}
					});
		}
	}
	
	function insertEmpByEmpno(){
		$("#insertOuterEmployee").modal("show");
	}
	function insertOuterEmployeeInfo(){
		bootbox.confirm({
			message : "是否真的添加外派员工记录？",
			buttons : {
				cancel : {
					label : '取消',
					className : 'btn-danger'
				},
				confirm : {
					label : '确认添加',
					className : 'btn-success'
				}
			},
		callback: function (result) {
   		if(result==true){
	  		 $("#insertOuterEmployeeForm").ajaxSubmit({
			url : "outerEmployeeServlet?method=insertOuterEmpInfo",
			type : "post",
			dataType:"json",
			success : function(result) {
				if(result==true){
					$('#example2').bootstrapTable("refresh");
					$("#tipmsg").css("display", "block");
   				$("#tipmsg").html("添加外派员工信息成功！");
				}else
					{
					$("#tipmsg").css("display", "block");
   				$("#tipmsg").html("添加外派员工信息失败，请重试！");
					}
   				//window.location.href="searchStaffInfo.jsp";
					$("#insertOuterEmployee").modal("hide");
				
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
	
	
	function importExcelDBModal(){
		$("#importExcelToDBModal").modal("show");
	}
	
	function submit_ImportExcelForm(){
		$("#importExcelForm").ajaxSubmit({
			url:"normalEmployeeServlet?method=importExcelToDB",
			type:"post",
			success:function(result){	
				if(result=="true"){
				//alert("ooo"+result);
				$('#example2').bootstrapTable("refresh");
				$("#tipmsg").css("display", "block");
   				$("#tipmsg").html("导入Excel信息成功！");
				}
				else{
					//alert("error");
					$("#tipmsg").css("display", "block");
	   				$("#tipmsg").html("导入Excel信息失败，请重试！");
				}
				$("#importExcelToDBModal").modal("hide");
			},
			error:function(){
				alert("请求服务器失败！")
			}
		});
	}
</script>
</head>


<body>

	<!-- @nxl标题 -->

    <!-- Content Header (Page header) -->
     <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-10">
            <h2>外包人员信息查询 | Outsourcing Personnel Information Service </h2>
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
	<!-- Main content -->
<!-- @nxl搜索条件 --> <!-- Default box -->


<div class="panel-body">
<div id="tipmsg" class="alert alert-warning" style="display: none;"></div>
<!-- <form id="insertNormalEmployeeForm" action="#" method="post" class="form-horizontal"> -->
<!-- 第一层 -->
<div class="panel panel-default">
<div class="panel-heading">
<h4>检索条件</h4>
</div>
<div class="panel-body" align="center">
<div class="row form-inline">

        <div class="input-group form-inline col-sm-3 ">
        <span class="input-group-addon" style="background-color: #0099CC;color:white">
              岗位</span>
	    <select	id="text_job" class="form-control">
		<option value="-1">请选择...</option>
	    </select>
		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				
		<div class="input-group form-inline col-sm-3 ">
        <span class="input-group-addon" style="background-color: #0099CC;color:white">
               部门</span><select id="text_dept" class="form-control">
		<option value="-1">请选择...</option>
		</select>
		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
				
		<div class="input-group form-inline col-sm-2 ">
        <span class="input-group-addon" style="background-color: #0099CC;color:white">
              性别</span><select id="text_sex" class="form-control">
		<option value="-1">请选择...</option>
	    <option value="0">女</option>
		<option value="1">男</option>
	    </select>
		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		
				<div class="input-group form-inline col-sm-2 ">
        <span class="input-group-addon" style="background-color: #0099CC;color:white">
              状态</span><select	id="text_sex" class="form-control">
		<option value="-1">请选择...</option>
		<option value="0">离职</option>
		<option value="1">在职</option>
		</select>
	    </div>
		</div>
		<br>
		
		<!-- @nxl 输入框............. -->
		
		 <div class="row form-inline">
		 <div class="input-group form-inline col-sm-3">
       <span class="input-group-addon" style="background-color: #0099CC;color:white">
             员工编号</span><input type="text" id="search_empno" name="search_empno" class="form-control" placeholder="请输入员工编号">
	   </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   
	   
	  <div class="input-group form-inline col-sm-3">
       <span class="input-group-addon" style="background-color: #0099CC;color:white">
             身份证</span> <input type="text" id="search_personid" name="search_personid" class="form-control" placeholder="请输入身份证号"> 
	   </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	   
	   
	  
	   <div class="input-group form-inline col-sm-2 ">
       <span class="input-group-addon" style="background-color: #0099CC;color:white">
             &nbsp;姓名&nbsp;&nbsp;&nbsp;</span> <input type="text" id="search_name" name="search_name" class="form-control" placeholder="请输入姓名">
	   </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				
			
		 <div class="input-group form-inline col-sm-2">
       <span class="input-group-addon" style="background-color: #0099CC;color:white">
             开户行</span><input type="text" class="form-control" placeholder="请输入开户行"> 
		</div>
		</div>
		
		<br>
		<div align="right">
        <a href="javascript:refreshTable()" class="btn btn-default"><span
				class="glyphicon glyphicon-search"></span>搜索</a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</div>
		</div>
		</div>
		<!-- /.card-body -->
		<!--    <div class="card-footer">
         
        </div>
        /.card-footer -->
	</div>
	
	
	<!-- /.card --> <!-- @nxl附加信息........ --> <!-- Default box -->
	<div class="panel panel-default">
   <div class="panel-heading">
   <h4>检索结果</h4>
   </div>
   <div class="panel-body">
   <table id="example2" class="table table-bordered table-hover">
   </table>
   <!--  <div id="toolbar"> -->
		<div class="btn-group">
				<!-- <table id="example2" class="table table-bordered table-hover"> -->
					<!--  data-toggle="table" data-url="normalEmployeeServlet?method=findNormalEmployeeInfo" -->
					<!-- <thead>
                <tr>
                  <th data-field="empno"><center>员工编号</center></th>
                  <th data-field="namecn"><center>姓名</center></th>
                  <th data-field="sex"><center>性别</center></th>
                  <th data-field="eduhistory"><center>学历</center></th>
                  <th data-field="personid"><center>身份证号</center></th>
                  <th data-field="tel"><center>电话号码</center></th>
                  <th data-field="qq"><center>QQ号</center></th>
                  <th data-field="email"><center>邮箱</center></th>
                </tr>
                </thead> -->
				<!-- </table> -->
				<!-- /.card-body -->
			<!-- </div> -->
		</div>
		</div>
		</div>
		<!-- /.card-body -->
		<!--  <div class="card-footer">
          
        </div>
        /.card-footer -->
	<!-- </div> -->
	<!-- /.card --> <!-- </section> -->
	<!-- /.content -->

	<!-- /.content-wrapper -->



	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark"> <!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->

	<!-- ./wrapper -->






	
	<script>
		/*   $(function () {
		 $("#example1").DataTable();
		 $('#example2').DataTable({
		 "paging": true,
		 "lengthChange": false,
		 "searching": false,
		 "ordering": true,
		 "info": true,
		 "autoWidth": false
		 });
		 }); */
	</script>
	<div id="toolbar">
		<div class="btn-group">
			<a href="javascript:insertEmpByEmpno()" class="btn btn-default"><span class="glyphicon glyphicon-save"></span>添加</a>
			<a class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>修改</a>
			<a href="javascript:deleteSelectEmpByEmpno()" class="btn btn-default"><span
				class="glyphicon glyphicon-remove"></span>删除</a>
			<a href="javascript:importExcelDBModal()" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>导入Excel数据</a>
			<a href="normalEmployeeServlet?method=downEmployeeListTemplate&fileName=员工信息表.xlsx" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span>下载导入模板</a>
		</div>
	</div>
	
	
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="importExcelToDBModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">导入Excel数据</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">
					<form id="importExcelForm" enctype="multipart/form-data" method="post">
						<input type="file" id="myExcel" name="myExcel" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel"/>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button onclick="javascript:submit_ImportExcelForm()"
						id="importExcel_Btn_Submit" type="button" class="btn btn-primary">确认导入</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	
	
	<!-- 修改员工信息模态框 -->
<div class="modal fade" id="outerEmployee" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="updatenormalemployee">修改外派员工信息</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body" align="center">
              <div id="adddictypevaluetipmsg" class="alert alert-warning" style="display: none"></div>
              <form id="updateOuterEmployeeForm" action="#" method="post" class="form-horizontal">
					
					<!-- <div class="input-group form-inine">
			<label class="control-label col-md-3"> 员工编号: </label>
		<input type="text" id="normal_empno" name="normal_empno" class="form-control" style="border: none" readonly="readonly"/>
			</div> -->
			&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">员工编号</span>
		<input type="text" id="normal_empno" name="normal_empno" class="form-control" style="border: none" readonly="readonly"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">&nbsp;&nbsp;&nbsp;&nbsp;姓名&nbsp;&nbsp;&nbsp;</span>
		<input type="text" id="normal_name" name="normal_name" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">&nbsp;&nbsp;&nbsp;&nbsp;性别&nbsp;&nbsp;&nbsp;</span>
		<select id="normal_sex" name="normal_sex" class="form-control">
		<option value="-1">请选择</option>
		<option value="1">男</option>
		<option value="0">女</option>
		</select></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">外派公司</span>
		<input type="text" id="normal_sendbor" name="normal_sendbor" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">身份证号</span>
		<input type="text" id="normal_personid" name="normal_personid" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">电话号码</span>
		<input type="text" id="normal_tel" name="normal_tel" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">&nbsp;&nbsp;QQ号&nbsp;&nbsp;&nbsp;</span>
		<input type="text" id="normal_qq" name="normal_qq" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">电子邮箱</span>
		<input type="text" id="normal_email" name="normal_email" class="form-control"/></div>
			</form>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="updateOuterEmployeeInfoByempno()">确认修改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<!-- 添加员工信息模态框 -->
<div class="modal fade" id="insertOuterEmployee" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="insertnormalemployee">添加外派员工信息</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>
            <div class="modal-body" align="center">
              <div id="adddictypevaluetipmsg" class="alert alert-warning" style="display: none"></div>
              <form id="insertOuterEmployeeForm" action="#" method="post" class="form-horizontal">
					
				&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">员工编号</span>
		<input type="text" id="normal_empno" name="normal_empno" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">&nbsp;&nbsp;&nbsp;&nbsp;姓名&nbsp;&nbsp;&nbsp;</span>
		<input type="text" id="normal_name" name="normal_name" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">&nbsp;&nbsp;&nbsp;&nbsp;性别&nbsp;&nbsp;&nbsp;</span>
		<select id="normal_sex" name="normal_sex" class="form-control">
		<option value="-1">请选择</option>
		<option value="1">男</option>
		<option value="0">女</option>
		</select></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">外派公司</span>
		<input type="text" id="normal_sendbor" name="normal_sendbor" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">身份证号</span>
		<input type="text" id="normal_personid" name="normal_personid" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">电话号码</span>
		<input type="text" id="normal_tel" name="normal_tel" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">&nbsp;&nbsp;QQ号&nbsp;&nbsp;&nbsp;</span>
		<input type="text" id="normal_qq" name="normal_qq" class="form-control"/></div>
		&nbsp;&nbsp;<div class="input-group form-inline col-sm-10 ">
		<span class="input-group-addon" style="background-color: #0099CC;color:white">电子邮箱</span>
		<input type="text" id="normal_email" name="normal_email" class="form-control"/></div>		
			</form>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="insertOuterEmployeeInfo()">确认添加</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>		
</body>
</html>