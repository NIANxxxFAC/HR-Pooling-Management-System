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



<!--  @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
<!-- <script src="jquery/jquery-3.2.1.min.js"></script> -->
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	createChart1();
	createChart2();
	//createChart1();
	//createChart1();
});

function createChart1(){
	$.ajax({
		url:"chartsServlet?method=getEmpDeptCount",
		type:"post",
		dataType:"json",
		success:function(result){
			//alert(JSON.stringify(result));
			var chart1=echarts.init(document.getElementById("chart1"));
			option = {
				    title : {
				        text: '统计公司部门人数',
				        x:'center'
				    },
				    tooltip : {
				        trigger: 'item',
				        formatter: "{a} <br/>{b} : {c} ({d}%)"
				    },
				    legend: {
				        orient: 'vertical',
				        left: 'left',
				        data: result.nameList
				    },
				    series : [
				        {
				            name: '访问来源',
				            type: 'pie',
				            radius : '60%',
				            center: ['60%', '50%'],
				            data:result.list,
				            itemStyle: {
				                emphasis: {
				                    shadowBlur: 10,
				                    shadowOffsetX: 0,
				                    shadowColor: 'rgba(0, 0, 0, 0.5)'
				                }
				            }
				        }
				    ]
				};
			chart1.setOption(option);

		},
		error:function(){
			alert("请求服务器失败！");
		}
	});
}

function createChart2(){
	$.ajax({
		url:"chartsServlet?method=getEmpCount",
		type:"post",
		dataType:"json",
		success:function(result2){
			//alert(JSON.stringify(result.));
			var chart2=echarts.init(document.getElementById("chart2"));
			option2 = {
				    color: ['#3398DB'],
				    tooltip : {
				        trigger: 'axis',
				        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
				            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
				        }
				    },
				    grid: {
				        left: '3%',
				        right: '4%',
				        bottom: '3%',
				        containLabel: true
				    },
				    xAxis : [
				        {
				            type : 'category',
				            data : result2.nameList,
				            axisTick: {
				                alignWithLabel: true
				            }
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'岗位人数',
				            type:'bar',
				            barWidth: '60%',
				            data:result2.valueList
				        }
				    ]
				};
			chart2.setOption(option2);

		},
		error:function(){
			alert("请求服务器失败！");
		}
	});
}
</script>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">


<!-- @nxl标题 -->
<!-- Content Wrapper. Contains page content -->
  <!--<div class="content-wrapper">-->
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>统计图表 | Statistical Charts</h1>
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



 <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
  <!-- AREA CHART -->
         <!--    <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">部门分布图</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                 蓝色框！！！！！！！！！！！
                 <div id="chart1" style="height:500px"></div>
                </div>
              </div>
              /.card-body
            </div> -->
            <!-- /.card -->
            
            

            <!-- DONUT CHART -->
          <!--   <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">111</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
              </div>
              <div class="card-body"> -->
               <!--红色框！！！！！！！！！--> 
            <!--   </div> -->
              <!-- /.card-body -->
            <!-- </div> -->
            <!-- /.card -->
           </div>
        
        
        	
        	
        	
        	
        <!-- /.col (LEFT) -->
          <div class="col-md-12">
            <!-- LINE CHART -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">岗位统计图 | Position Statistical Chart </h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <!-- <button type="button" class="btn btn-tool" data-widget="remove"><i class="fa fa-times"></i></button> -->
                </div>
              </div>
              <div class="card-body">
                <div class="chart">
                  <!--@浅蓝色框！！！！！！！！！！！！！-->
                    <div id="chart2" style="height:500px"></div>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->







            <!-- BAR CHART -->
          <!--   <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Bar Chart</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                </div>
              </div>
              <div class="card-body">
                <div class="chart"> -->
                  <!--绿色框！！！！！！！！！！！！！！！！-->
             <!--      
                </div>
              </div> -->
              <!-- /.card-body -->
          <!--   </div> -->
            <!-- /.card -->

        <!--   </div> -->
          <!-- /.col (RIGHT) -->
      <!--   </div> -->
        <!-- /.row -->
      <!-- </div> --><!-- /.container-fluid -->
    <!-- </section> -->
    <!-- /.content -->
 <!--  </div> -->
  



	<script type="text/javascript" src="echarts/echarts.min.js"></script>
    <!-- jQuery -->
    <!-- <script src="plugins/jquery/jquery.min.js"></script> -->
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
	<!-- ChartJS 1.0.1 -->
    <script src="plugins/chartjs-old/Chart.min.js"></script>
	
	
	
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
