<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/2.png"  >
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="plugins/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/adminlte.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
<!-- Morris chart -->
<link rel="stylesheet" href="plugins/morris/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker-bs3.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
<!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<!--<body class="hold-transition sidebar-mini">
-->

<!--  @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<!-- <script src="jquery/jquery-3.2.1.min.js"></script> -->
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<!--<body class="hold-transition sidebar-mini">-->
	<div class="wrapper">




<!-- @nxl标题 -->
<!-- Content Wrapper. Contains page content -->
  <!--<div class="content-wrapper">-->
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>信息快速录入 | Fast Information Entry </h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <!--<li class="breadcrumb-item"><a href="#">主页</a></li>-->
              <li class="breadcrumb-item active">HRPooling人力资源管理系统-Group7</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">




     
<!--@nxl 第一排图标框-->
 <!-- Small Box (Stat card) -->
       <!-- <h5 class="mb-2 mt-4">Small Box</h5>-->
        <div class="row">
           <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-primary">
              <div class="inner">
                <h3></h3>
                <p>普通员工信息录入<br>Information Entry</p><br>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="normalEntryInfo.jsp" class="small-box-footer">
               快捷按钮 <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          
          
          <div class="col-lg-9 col-9">
            <div class="callout callout-info">
                  <h5>普通员工信息录入 | Ordinary Employees Information Entry</h5>
                  <p><br>使用Excel表格批量导入或逐条信息输入。<br>
                  There is a problem that we need to fix. A wonderful serenity has taken possession of my entire
                    soul,
                    like these sweet mornings of spring which I enjoy with my whole heart.</p>
             
                
                </div></div></div>
         
     
         
          <div class="row">
          <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3></h3>
                <p>外协人员信息录入<br>Information Entry</p><br>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="#" class="small-box-footer">
               快捷按钮 <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
            <div class="col-lg-9 col-9">
            <div class="callout callout-success">
                  <h5>外协人员信息录入 | Cooperator Information Entry</h5>

                   <p><br>使用Excel表格批量导入或逐条信息输入。<br>There is a problem that we need to fix. A wonderful serenity has taken possession of my entire
                    soul,
                    like these sweet mornings of spring which I enjoy with my whole heart.</p>
             
               
                
                </div></div></div>
         
          
          
           <div class="row">
           <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3></h3>
                <p>外包人员信息录入</p>Information Entry<br>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <br>
              <a href="#" class="small-box-footer">
               快捷按钮 <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
             <div class="col-lg-9 col-9">
            <div class="callout callout-info">
                  <h5>外包人员信息录入 | Outsourcing Personnel Information Entry</h5>

                  <p><br>使用Excel表格批量导入或逐条信息输入。<br>There is a problem that we need to fix. A wonderful serenity has taken possession of my entire
                    soul,
                    like these sweet mornings of spring which I enjoy with my whole heart.</p>
             
               
                
                </div></div></div>
         
          
          
           <div class="row">
           <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-danger">
              <div class="inner">
                <h3></h3>
                <p>实习生信息录入<br>Information Entry</p><br>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="traEntryInfo2.jsp" class="small-box-footer">
               快捷按钮 <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
           <div class="col-lg-9 col-9">
            <div class="callout callout-danger">
                  <h5>实习生信息录入 | Trainee Information Entry</h5>

                  <p><br>使用Excel表格批量导入或逐条信息输入。<br>There is a problem that we need to fix. A wonderful serenity has taken possession of my entire
                    soul,
                    like these sweet mornings of spring which I enjoy with my whole heart.</p>
             
               
                
                </div></div></div>
         
        <!-- /.row -->

        <!-- =========================================================== -->

 
      



      
      
      
      
      
      <!-- Calendar -->
          <!--   <div class="card bg-success-gradient">
              <div class="card-header no-border">

                <h3 class="card-title">
                  <i class="fa fa-calendar"></i>
                  Calendar
                </h3>
                tools card
                <div class="card-tools">
                  button with a dropdown
                  <div class="btn-group">
                    <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
                      <i class="fa fa-bars"></i></button>
                    <div class="dropdown-menu float-right" role="menu">
                      <a href="#" class="dropdown-item">Add new event</a>
                      <a href="#" class="dropdown-item">Clear events</a>
                      <div class="dropdown-divider"></div>
                      <a href="#" class="dropdown-item">View calendar</a>
                    </div>
                  </div>
                  <button type="button" class="btn btn-success btn-sm" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-success btn-sm" data-widget="remove">
                    <i class="fa fa-times"></i>
                  </button>
                </div>
                /. tools
              </div>
              /.card-header
              <div class="card-body p-0">
                The calendar
    </section> -->
    <!-- /.content -->
<!--   </div> -->







                

    <!-- jQuery -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
    $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
	<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Morris.js charts -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script src="plugins/morris/morris.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- daterangepicker -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>
    <script src="plugins/daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="plugins/datepicker/bootstrap-datepicker.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="dist/js/pages/dashboard.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	
	
<!-- 模态框（Modal） -->
<div class="modal fade" id="myphotoUpload" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">更换头像</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
            <form id="uploadPhotoForm" action="sysUserServlet?method=uploadPhoto" method="post" enctype="multipart/form-data">
            <input type="file" id="myphoto" name="myphoto" accept="image/*">
            </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button id="uploadPhotoBtn_Submit" type="button" class="btn btn-primary">提交更改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
	
	
</body>
<script type="text/javascript" src="myjs/index.js"></script>
</html>
