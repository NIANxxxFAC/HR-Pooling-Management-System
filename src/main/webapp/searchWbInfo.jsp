<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <link rel="stylesheet" href="bootstrap_table/bootstrap-table.css" />
  <script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="bootstrap_table/bootstrap-table.js"></script>
  <script type="text/javascript" src="bootstrap_table/locale/bootstrap-table-zh-CN.min.js"></script>
  
  <script type="text/javascript">
  $(function(){
	 $('#example2').bootstrapTable({
		url:"outerEmployeeServlet?method=findOuterEmployeeInfo", 
		striped:true,
	 	pagination:true,
	 	clickToSelect:true,
	 	sortable: true,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
	 	 pageNumber:1,                       //初始化加载第一页，默认第一页
         pageSize: 5,                       //每页的记录行数（*）
         pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
	 	 toolbar: '#toolbar',                //工具按钮用哪个容器
	 	search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
	 	showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表
		columns:[{
			field:"",
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
		}
		]
	 });
  });
</script>
</head>


<body>

<!-- @信息查询部分标题 -->

    <!-- Content Header (Page header) -->
    <section class="content-header label label-default" style="background-color:#333333;color:white">
      <div class="container-fluid " >
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>外包人员信息查询</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">主页</a></li>
              <li class="breadcrumb-item active">实习生信息管理</li>
              <li class="breadcrumb-item active">实习生信息查询</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <br>
    <!-- Main content -->
    <section class="content">





<!-- @nxl搜索条件 -->
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">检索条件</h3>
          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="card-body">
                <div class="row">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <div class="col-3">
                    <label>选项框</label>
                    <select class="form-control">
                      <option>option 1</option>
                      <option>option 2</option>
                      <option>option 3</option>
                      <option>option 4</option>
                      <option>option 5</option>
                    </select>
                  </div>
                  <div class="col-3">
                  <label>选项框</label>
                    <select class="form-control">
                      <option>option 1</option>
                      <option>option 2</option>
                      <option>option 3</option>
                      <option>option 4</option>
                      <option>option 5</option>
                    </select>
                  </div>
                   <div class="col-3">
                  <label>选项框</label>
                    <select class="form-control">
                      <option>option 1</option>
                      <option>option 2</option>
                      <option>option 3</option>
                      <option>option 4</option>
                      <option>option 5</option>
                    </select>
                  </div>
                  </div>

               <!-- @nxl 输入框............. -->
                 <div class="row">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <div class="col-3">
                    <label>输入框</label>
                    <input type="text" class="form-control" placeholder="默认内容 ...">
                  </div>
                   <div class="col-3">
                    <label>输入框</label>
                    <input type="text" class="form-control" placeholder="默认内容 ...">
                  </div>
                   <div class="col-3">
                    <label>输入框</label>
                    <input type="text" class="form-control" placeholder="默认内容 ...">
                  </div>
                  </div>
                  
        </div>
        <!-- /.card-body -->
     <!--    <div class="card-footer">
         
        </div>
        /.card-footer -->
      </div>
      <!-- /.card -->
      
      
      
      <!-- @nxl搜索结果........ -->
       <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">检索结果</h3>
          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="card-body">
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
              <!-- <thead>
              <tr>
                <th data-field="empno"><center>员工编号</center></th>
                <th data-field="namecn"><center>姓名</center></th>
                <th data-field="sex"><center>性别</center></th>
                <th data-field="sendbor"><center>外派公司</center></th>
                <th data-field="personid"><center>身份证号</center></th>
                <th data-field="tel"><center>电话号码</center></th>
                <th data-field="qq"><center>QQ号</center></th>
                <th data-field="email"><center>邮箱</center></th>
              </tr>
              </thead> -->
              </table>
            <!-- /.card-body -->
          </div>
        </div>
        <!-- /.card-body -->
      <!--   <div class="card-footer">
          
        </div>
        /.card-footer -->
      </div>
      <!-- /.card -->
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->



  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

<!-- ./wrapper -->







<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap4.min.js"></script>
<!-- SlimScroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- page script -->
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
<a class="btn btn-success">添加</a>
<a class="btn btn-warning">删除</a>
</div>

</body>
</html>