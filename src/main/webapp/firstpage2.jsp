<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="images/2.png"  >
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>管理系统主页</title>
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
            <h1>管理系统主页 | Management System Home Page</h1>
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
            <div class="small-box bg-danger" >
              <div class="inner">
                <h3></h3>
                <p>信息快速录入<br>Information Entry</p><br>
              </div>
              <div class="icon">
                <i class="ion ion-person-add"></i>
              </div>
              <a href="userpage.jsp" class="small-box-footer">
               快捷按钮 <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
        
        
          <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-primary">
              <div class="inner">
                <h3></h3>
                <p>HR人员分布地图<br>Personnel Distribution Map </p><br>
              </div>
              <div class="icon">
                <i class="fa fa-map"></i>
              </div>
              <a href="map.jsp" class="small-box-footer">
                       快捷按钮<i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
          
          
          <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-info">
              <div class="inner">
                <h3></h3>
                <p>部门分布图<br>
               Statistical Charts</p>
               <br>
              </div>
              <div class="icon">
                <i class="ion ion-pie-graph"></i>
              </div>
              <a href="charts.jsp" class="small-box-footer">
                    快捷按钮 <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
          
          <div class="col-lg-3 col-6">
            <!-- small card -->
            <div class="small-box bg-success">
              <div class="inner">
                <h3></h3>
                <p>岗位统计图<br>Statistical Charts</p>
                <br>
              </div>
              <div class="icon">
                <i class="ion ion-stats-bars"></i>
              </div>
              <a href="charts2.jsp" class="small-box-footer">
                快捷按钮 <i class="fa fa-arrow-circle-right"></i>
              </a>
            </div>
          </div>
          <!-- ./col -->
        </div>
        <!-- /.row -->

        <!-- =========================================================== -->

 <!-- 系统通知框 -->
           <!--  <div class="card card-info -card card-Danger Outline">
              <div class="card-header">
                <h3 class="card-title">系统通知 | System Notification </h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-widget="remove">
                    <i class="fa fa-times"></i>
                  </button>
                </div>
              </div>
              /.card-header
              <div class="card-body p-0">
                <ul class="products-list product-list-in-card pl-2 pr-2">
                  <li class="item">
                    <div class="product-img">
                      <img src="images/2.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title"> 关于HRPooling人力资源管理系统2.0版本试用的有关通知 
                        <span class="badge badge-info float-right">@2018.7.20</span></a>
                      <span class="product-description">
                        普通员工信息管理，外协人员信息管理，外包人员信息管理，实习生信息管理以及数据字典信息管理的功能实现。
                      </span>
                    </div>
                  </li>
             
                 /.item
                  <li class="item">
                    <div class="product-img">
                      <img src="images/2.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">关于HRPooling人力资源管理系统1.0版本试用的有关通知
                        <span class="badge badge-info float-right">@2018.7.15</span></a>
                      <span class="product-description">
                               统计图表，项目UI优化，软件测试以及BUG修复。
                      </span>
                    </div>
                  </li>
                  /.item
                </ul>
              </div>
              /.card-body
              <div class="card-footer text-center">
                <a href="javascript:void(0)" class="uppercase">浏览更多通知</a>
              </div>
              /.card-footer
            </div>
            /.card
          </div>
          /.col
        </div>
        /.row
      </div> -->
      



 <div class="col-md-13">
           <div class="card card-danger -card card-outline">
              <div class="card-header">
                <h3 class="card-title">系统通知 | System Notification </h3>
              <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                  </button>
                  <!-- <button type="button" class="btn btn-tool" data-widget="remove">
                    <i class="fa fa-times"></i>
                  </button> -->
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="carousel-item active">
                    <!-- 1400*300 -->
                      <img class="d-block w-100" src="images/33333.jpg" alt="First slide" style="width: 1400px; height: 300px">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="images/XXX3.png" alt="Second slide" style="width: 1400px; height: 300px">
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="images/background4.jpg" alt="Third slide" style="width: 1400px; height: 300px">
                    </div>
                  </div>
                  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->


<!--HR人员分布地图框-->
<!--空白框-->
 <!-- Default box -->
     <!--  <div class="card card-danger -card card-outline">
        <div class="card-header">
          <h3 class="card-title">HR人员分布地图 | HR Personnel Distribution Chart</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
           <button type="button" class="btn btn-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="card-body">
         </div> -->
        <!-- /.row -->
        <!-- =========================================================== -->
        <!-- </div>	 -->
        
        

<!--开发人员框-->
<!--空白框-->
 <!-- Default box -->
      <div class="card card-info collapsed-card card-outline">
        <div class="card-header">
          <h3 class="card-title">开发人员 | Developer</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fa fa-minus"></i></button>
           <!-- <button type="button" class="btn btn-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>-->
          </div>
        </div>
        <div class="card-body">
        	<!--@标签框！！！！-->
        	 <section class="content">
      <div class="container-fluid">
   <!--<h5 class="mb-2">Info Box</h5>-->
        <div class="row">
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
             <img src="images/25F62AF7F7DF882BF71D533BB7B45CFF.png" style="width: 60px; height: 60px" >
              <div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;念熙来</span>
                <span class="info-box-text">@Nian Xilai </span>
                 
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <img src="images/20180717163316.jpg" style="width: 60px; height: 60px" >
              <div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;李晓哲</span>
                <span class="info-box-text">@Li Xiaozhe</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
             <img src="images/20180718084258.jpg" style="width: 60px; height: 60px" >
              <div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;陈宇豪</span>
                <span class="info-box-text">@Chen Yuhao</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <img src="images/D5C4F20DE2D9B6CBF4FF8A7F4313B91E.png" style="width: 60px; height: 60px" >             
              	<div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;闫旭东</span>
                <span class="info-box-text">  @Yan Xudong</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
          <!-- /.col -->
          <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <img src="images/User_50px.png" style="width: 60px; height: 60px" >
              <div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;虚位以待</span>
                <span class="info-box-text">@Waiting for You</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
           <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <img src="images/User_50px.png" style="width: 60px; height: 60px" >
              <div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;虚位以待</span>
                <span class="info-box-text">@Waiting for You</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
           <!-- /.col -->
            <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <img src="images/User_50px.png" style="width: 60px; height: 60px" >
              <div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;虚位以待</span>
                <span class="info-box-text">@Waiting for You</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
           <!-- /.col -->
           <div class="col-md-3 col-sm-6 col-12">
            <div class="info-box">
              <img src="images/User_50px.png" style="width: 60px; height: 60px" >
              <div class="info-box-content">
                <span class="info-box-text">&nbsp;&nbsp;&nbsp;&nbsp;虚位以待</span>
                <span class="info-box-text">@Waiting for You</span>
              </div>
              <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
          </div>
           <!-- /.col -->
           
        </div>
        <!-- /.row -->

        <!-- =========================================================== -->
        	
        	
        <!--	 Start creating your amazing application!-->
        </div>
        <!-- /.card-body -->
       <!-- <div class="card-footer">
          Footer
        </div>-->
        <!-- /.card-footer-->
      </div>
      <!-- /.card -->
      </div>
      
      
      
     
      
          
  
      
      
            <!-- 项目信息框 -->
            <div class="card card-info collapsed-card card-outline">
              <div class="card-header">
                <h3 class="card-title">项目信息 | Project Information </h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                  </button>
                  <!-- <button type="button" class="btn btn-tool" data-widget="remove">
                    <i class="fa fa-times"></i>
                  </button> -->
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <ul class="products-list product-list-in-card pl-2 pr-2">
                  <li class="item">
                    <div class="product-img">
                      <img src="images/Document_50px.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title"> 普通员工信息管理 | Information Management of Ordinary Employees 
                        <span class="badge badge-info float-right">@Li Xiaozhe</span></a>
                      <span class="product-description">
                        包含普通员工信息查询，普通员工信息录入，普通员工薪资管理三个模块。
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="images/Document_50px.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">外协人员信息管理 | Information Management of Outsourcing Personnel
                        <span class="badge badge-info float-right">@Chen Yuhao</span></a>
                      <span class="product-description">
                        包含外协人员信息查询，外协人员信息录入，外协人员薪资管理三个模块。
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="images/Document_50px.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">
                        外包人员信息管理 | Information Management of Outsourced Personnel  <span class="badge badge-info float-right">
                       @Yan Xudong
                      </span>
                      </a>
                      <span class="product-description">
                       包含外包人员信息查询，外包人员信息录入，外包人员薪资管理三个模块。
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="images/Document_50px.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">实习生信息管理 | Information Management of Trainee
                        <span class="badge badge-info float-right">@Nian Xilai</span></a>
                      <span class="product-description">
                        包含实习生信息查询，实习生信息录入，实习生薪资管理三个模块。
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                 <!-- /.item -->
                  <li class="item">
                    <div class="product-img">
                      <img src="images/Document_50px.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">数据字典信息管理 | Information Management of Data Dictionary 
                        <span class="badge badge-info float-right">@Li Xiaozhe</span></a>
                      <span class="product-description">
                        系统字段查询、修改、插入与删除功能。
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                </ul>
              </div>
              <!-- /.card-body -->
              <div class="card-footer text-center">
                <a href="javascript:void(0)" class="uppercase">浏览更多信息</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      
      
      
      
       <!-- 版本信息框 -->
            <div class="card card-info collapsed-card card-outline">
              <div class="card-header">
                <h3 class="card-title">版本信息 | Edition Information </h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse">
                    <i class="fa fa-minus"></i>
                  </button>
                  <!-- <button type="button" class="btn btn-tool" data-widget="remove">
                    <i class="fa fa-times"></i>
                  </button> -->
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <ul class="products-list product-list-in-card pl-2 pr-2">
                
                  <li class="item">
                    <div class="product-img">
                      <img src="images/2.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title">HRPooling人力资源管理系统 | HRPooling MS V2.0 
                        <span class="badge badge-info float-right">@2018.7.20</span></a>
                      <span class="product-description">
                        统计图表，项目UI优化，软件测试以及BUG修复。
                      </span>
                    </div>
                  </li>
                  <!-- /.item -->
                    <li class="item">
                    <div class="product-img">
                      <img src="images/2.png" alt="Product Image" class="img-size-50">
                    </div>
                    <div class="product-info">
                      <a href="javascript:void(0)" class="product-title"> HRPooling人力资源管理系统 | HRPooling MS V1.0 
                        <span class="badge badge-info float-right">@2018.7.15</span></a>
                      <span class="product-description">
                        普通员工信息管理，外协人员信息管理，外包人员信息管理，实习生信息管理以及数据字典信息管理的功能实现。
                      </span>
                    </div>
                  </li>
             
                 <!-- /.item -->
                </ul>
              </div>
              <!-- /.card-body -->
              <div class="card-footer text-center">
                <a href="javascript:void(0)" class="uppercase">浏览更多信息</a>
              </div>
              <!-- /.card-footer -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      
      
      
      
      
      
      
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
