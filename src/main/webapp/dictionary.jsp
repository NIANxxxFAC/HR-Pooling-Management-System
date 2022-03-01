<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>数据字典</title>
<meta name="viewport"
	content="width=device-width,height=device-height,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="bootstrap/css/bootstrap.min.css" rel='stylesheet' type='text/css'/>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootbox/bootbox.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="myjs/dictionary.js"></script>
<!-- <script type="text/javascript">
function deleteDicType(){
	$("#tipmsg").css("display", "none"); 
	$("#deletedictype").modal("show");     
}
</script>
 -->
</head>
<body>
<div id="tipmsg" class="alert alert-warning" style="display:none;"></div>
<div class="candile-inner" style="margin-left: 10px">
<div class="form-inline">
<h2 class="lnr lnr-chart-bars">数据字典管理 | Data Dictionary Management </h2>
<hr>
<label >数据字典类型：</label>
<select id="sysdictype" class="form-control" placeholder="请选择" onchange="findDicTypeValue()" style="width: 150px">

</select>
<a href="javascript:void(0)" class="btn btn-warning lnr lnr-char-bars" onclick="deleteDicType()">删除数据字典信息</a>
<div class="pull-right">
<a href="javascript:void(0)" class="btn btn-primary lnr lnr-char-bars" onclick="showDictype()">录入数据字典信息</a>
<a href="javascript:void(0)" class="btn btn-success lnr lnr-chart-bars" onclick="showAddValueInfo(0,0)"> 录入数据字典值</a>
</div></div>
<hr>
<table style="text-align:center" class="table table-bordered table-hover table-striped">
<tr>
<td>ID</td>
<td>字典类型</td>
<td>字典名称</td>
<td>字典值</td>
<td>操作</td>
</tr>
<tbody id="tbody">
</tbody>
</table>
</div>
<!-- <div class="well">
<div class="row form-inline">
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
员工编号</span>
<input type="text" class="form-control">
</div>&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
员工编号</span>
<input type="text" class="form-control">
</div>&nbsp;&nbsp;
<div class="input-group form-inline col-sm-3 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
员工编号</span>
<input type="text" class="form-control">
</div>
&nbsp;&nbsp;
<div class="input-group form-inline col-sm-2 ">
<span class="input-group-addon" style="background-color: #ff6666;color:white">
员工编号</span>
<input type="text" class="form-control">
</div>

</div>
</div> -->
<!-- 添加信息模式窗口 -->

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="addDicValueLabel">添加数据字典值信息</h4>
            </div>
            <div class="modal-body">
              <div id="adddictypevaluetipmsg" class="alert alert-warning" style="display: none;"></div>
					<div class="input-group">
			<label class="input-group-addon">&nbsp;&nbsp;&nbsp;数据字典类型</label>
		<select id="addsysdictypevalue" class="form-control"
				placeholder="请选择">
			</select>
			</div>
		<br>
					<div class="input-group">
			<label class="input-group-addon">&nbsp;&nbsp;&nbsp;数据字典值名</label>
		<input type="text" id="txt_dictypevaluename" class="form-control" placeholder="请输入字典值名称"/>
		<input type="hidden" id="id" value=""/> <!--  隐藏表单域 -->
			</div>
		<br>
					<div class="input-group">
			<label class="input-group-addon">数据字典值数据</label>
		<input type="text" id="txt_dictypevalue" class="form-control" placeholder="请输入字典值数据"/>
			</div>
		<br>
			<div class="input-group">
			<label class="input-group-addon">数据字典值说明</label>
		<textarea id="txt_remarkvalue" rows="5" cols="50" class="form-control" placeholder="请填写数据字典值数据说明"></textarea>
			</div>
			</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addDicTypeValueSubmit()">确认提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>	
<!--添加数据字典类型窗口 -->	
<div class="modal fade" id="dictype" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="addDicTypeLabel">添加数据字典类型</h4>
            </div>
            <div class="modal-body">
            <div id="adddictypetipmsg" class="alert alert-warning" style="display: none;"></div>
			<div class="input-group">
			<label class="input-group-addon">数据字典类型</label>
		<input type="text" id="txt_dictypename" class="form-control" placeholder="请输入字典类型"/>
			</div>
		<br>
			<div class="input-group">
			<label class="input-group-addon">类型备注说明</label>
		<textarea id="txt_dictyperemark" rows="5" cols="50" class="form-control" placeholder="请填写备注说明"></textarea>
			</div>
		
</div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="dictypeModalSubmit()">确认提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>	
	
<!-- 删除数据字典类型模态框 -->
<div class="modal fade" id="deletedictype" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">删除数据字典类型</h4>
            </div>
            <div class="modal-body">
            <table style="text-align:center" class="table table-bordered table-hover table-striped">
			<tr>
			<td><input onclick="selectALL()" type="checkbox" id="selectAll" style="width:20px;height:20px"></td>
			<td>ID</td>
			<td>字典类型</td>
			</tr>
			<tbody id="deletetbody">
			</tbody>
			</table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="deleteDicTypeModalSubmit()">确认删除</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>	
	
</body>

</html>