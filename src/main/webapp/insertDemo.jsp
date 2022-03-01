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
</head>


<body>

<!-- @信息查询部分标题 -->

    <!-- Content Header (Page header) -->
    <section class="content-header label label-default" style="background-color:#333333;color:white">
      <div class="container-fluid " >
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>普通员工信息查询</h1>
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





<!-- @nxl基本信息 -->
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">基本信息</h3>
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
      
      
      
      <!-- @nxl附加信息 -->
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">附加信息</h3>
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



  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

<!-- ./wrapper -->






<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
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
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>



</body>
</html>