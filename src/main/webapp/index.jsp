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
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>



<!-- <style type="text/css">
.div_a{ width:100%; height:100px; text-align:center}
</style> -->



<body class="hold-transition sidebar-mini">
	<div class="wrapper">



		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" title="导航栏"><i class="fa fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="index.jsp" class="nav-link">主页</a></li>

			</ul>

			<!-- SEARCH FORM -->
			<form class="form-inline ml-3">
				<div class="input-group input-group-sm">
					<input class="form-control form-control-navbar" type="search"
						placeholder="搜索" aria-label="Search">
					<div class="input-group-append">
						<button class="btn btn-navbar" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</form>



			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#" title="开发人员"> <i class="fa fa-id-card"></i>
						<span class="badge badge-danger navbar-badge">4</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
					<a href="#" span class="dropdown-item dropdown-header">开发人员</a>
					</a>
						<div class="dropdown-divider"></div>
						<!-- @nxl用户1！！！！！ -->
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="images/25F62AF7F7DF882BF71D533BB7B45CFF.png" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										念熙来 <span class="float-right text-sm text-warning"><i
											class="fa fa-star"></i></span>
									</h3>
									<p class="text-sm">@Nian Xilai</p>
									<p class="text-sm text-muted">
								    <i class="fa fa-envelope "></i> nianxilai@yeah.net
									</p>
								</div>
							</div> <!-- Message End -->	
						</a>
						<div class="dropdown-divider"></div>
					
					
					
					
					<!-- @nxl用户2！！！！！ -->
						<a href="#" class="dropdown-item"><!-- Message Start -->
							<div class="media">
								<img src="images/20180717163316.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
										<h3 class="dropdown-item-title">
										 李晓哲<span class="float-right text-sm text-warning"><i
											class="fa fa-star"></i></span>
									</h3>
									<p class="text-sm">@Li Xiaozhe</p>
									<p class="text-sm text-muted">
										<i class="fa fa-envelope "></i> lixiaozhe@qq.com
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						
						
						
						
						
						<!-- @nxl用户3！！！！！ -->
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="images/20180718084258.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
									陈宇豪<span class="float-right text-sm text-warning"><i
											class="fa fa-star"></i></span>
									</h3>
									<p class="text-sm">@Chen Yuhao </p>
									<p class="text-sm text-muted">
										<i class="fa fa-envelope "></i> chenyuhao@qq.com
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						
						
						
						
						<!-- @nxl用户4！！！！！ -->
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="images/D5C4F20DE2D9B6CBF4FF8A7F4313B91E.png" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										闫旭东 <span class="float-right text-sm text-warning"><i
											class="fa fa-star"></i></span>
									</h3>
									<p class="text-sm">@Yan Xudong</p>
									<p class="text-sm text-muted">
										<i class="fa fa-envelope "></i> yanxudong@qq.com
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">Developer </a>
					</div></li>
					
					
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#" title="项目信息"> <i class="fa fa-archive "></i> <span
						class="badge badge-warning navbar-badge"></span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" >
						<span class="dropdown-item dropdown-header" >项目信息</span>
						<div class="dropdown-divider"></div>
						
						<a href="#" class="dropdown-item"> <i
							class="fa fa-file mr-2"></i> 普通员工信息管理 <span
							class="float-right text-muted text-sm">@Li Xiaozhe</span>
						</a>
						<div class="dropdown-divider"></div>
						
						<a href="#" class="dropdown-item"> <i class="fa fa-file mr-2"></i>
							外协人员信息管理 <span class="float-right text-muted text-sm">@Chen Yuhao</span>
						</a>
						<div class="dropdown-divider"></div>
						
						<a href="#" class="dropdown-item"> <i class="fa fa-file mr-2"></i>
							外包人员信息管理 <span class="float-right text-muted text-sm">@Yan Xudong</span>
						</a>
						<div class="dropdown-divider"></div>
						
						<a href="#" class="dropdown-item"> <i class="fa fa-file mr-2"></i>
							实习生信息管理 <span class="float-right text-muted text-sm">@Nian Xilai</span>
						</a>
						<div class="dropdown-divider"></div>
						
						<a href="#" class="dropdown-item"> <i class="fa fa-file mr-2"></i>
							数据字典信息管理 <span class="float-right text-muted text-sm">@Li Xiaozhe</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">Project Information</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"><i
						class="fa fa-th-large"></i></a></li>
			</ul>
		</nav>
		<!-- /.navbar -->



		    <!-- Main Sidebar Container -->
		    <aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
		<!-- 	<div class="col-lg-9 col-9">
			<a href="index.jsp" class="brand-link"> 
			<img src="images/1.png" style="width: 50px; height: 50px" > 
			 <div class="col-lg-3 col-6">
			 <span class="brand-text font-weight-light">iSOFTSTONE</span></a>
			</div> -->
<!-- </div> -->

  <!-- Brand Logo -->
    <a href="index.jsp" class="brand-link">
      <img src="images/1.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-4"
           >
      <span class="brand-text font-weight-light">&nbsp;&nbsp;iSoftStone | HR MIS</span>
    </a>


<!-- @nxl侧边滑轨 -->
<!-- Sidebar -->
    <div class="sidebar">

	       	<!--@nxl user info!!!!!!!!!!!!!!!!!!!!!!!!-->
				<!-- Sidebar user panel (optional) -->
				<div class="user-panel mt-1 pb-3 mb-3 ">
					<div align="center">
						<br> &nbsp;<a href="javascript:showPhotoUploadModal()">
						<c:if test="${!empty sessionScope.myphoto}">
						<img id="personPhoto" src="${ sessionScope.myphoto}"
							style="width: 50px; height: 50px" class="img img-circle"> </a><br>
							</c:if>
								<c:if test="${empty sessionScope.myphoto}">
								<img id="personPhoto" src="images/User_50px.png"
								style="width: 50px; height: 50px" class="img img-circle"> </a><br>
							</c:if>
						<!-- <a href="#" class="d-block">&nbsp;&nbsp;&nbsp;&nbsp;部门：综合事业部</a> -->
						<!-- <a href="personinfo.jsp" class="d-block" target="mainFrame"> -->
						<span class="name-caret" style="color:white">${sessionScope.uname}</span>
						<p id="displayname" align="center"  style="color:white"></p>
						
						<!-- <a href="pages/examples/profile.html" class="brand-link" title="个人中心">
                        <img src="images/Male User_50px2.png" ></a> -->
                       
                        <a href="editPersonInfo.jsp" target="mainFrame" class="brand-link" title="修改资料">
                        <img src=" images/Male User_50px.png"></a>
                        <a href="pages/examples/lockscreen.html" class="brand-link" title="锁定账户">
                        <img src="images/Lock_50px2.png"></a>
                        <a href="loginServlet" class="brand-link" title="注销登陆">
                        <img src="images/Exit_50px.png"></a>
				</div>
              <!-- @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


<%-- 
					<div class="info">
						<br>
						<!-- <a href="#" class="d-block">&nbsp;&nbsp;&nbsp;&nbsp;部门：综合事业部</a> -->
						<!-- <a href="personinfo.jsp" class="d-block" target="mainFrame"> -->
						<p id="displayname"></p><br>
				<span class="name-caret"> ${sessionScope.uname} </span>
            <a href="#" class="d-block"> </a>
					</div>
				</div>
 --%>




				<!-- Sidebar Menu -->

				<!--nav-bar @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
                        with font-awesome or any other icon font library -->



						<!--普通员工信息管理 @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
						<li class="nav-item has-treeview menu-close"><a href="#"
							class="nav-link active"> <i class="nav-icon fa fa-th"></i>
								<p>
									普通员工信息管理 <i class="right fa fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">

								<li class="nav-item"><a href="searchStaffInfo.jsp" class="nav-link"  target="mainFrame">
										<i class="fa fa-circle-o nav-icon"></i>
										<p>普通员工信息查询</p>
								</a></li>


								<li class="nav-item"><a href="normalEntryInfo.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>普通员工信息录入</p>
								</a></li>


								<li class="nav-item"><a href="normalSalary.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>普通员工薪资管理</p>
								</a></li>
							</ul></li>
						<!--@nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->








						<!--外协人员信息管理 @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
						<li class="nav-item has-treeview menu-close"><a href="#"
							class="nav-link active"> <i class="nav-icon fa fa-th"></i>
								<p>
									外协人员信息管理 <i class="right fa fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">


								<li class="nav-item"><a href="searchWxInfo.jsp" class="nav-link" target="mainFrame">
										<i class="fa fa-circle-o nav-icon"></i>
										<p>外协人员信息查询</p>
								</a></li>


								<li class="nav-item"><a href="wxEntryInfo2.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>外协人员信息录入</p>
								</a></li>


								<li class="nav-item"><a href="wxSalary2.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>外协人员薪资管理</p>
								</a></li>


							</ul></li>
						<!--@nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->





						<!--外包人员信息管理 @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
						<li class="nav-item has-treeview menu-close"><a href="#"
							class="nav-link active"> <i class="nav-icon fa fa-th"></i>
								<p>
									外包人员信息管理 <i class="right fa fa-angle-left"></i>
								</p>
						     </a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="searchWbInfo2.jsp" class="nav-link"  target="mainFrame">
										<i class="fa fa-circle-o nav-icon"></i>
										<p>外包人员信息查询</p>
								</a></li>


								<li class="nav-item"><a href="wbEntryInfo2.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>外包人员信息录入</p>
								</a></li>


								<li class="nav-item"><a href="wbSalary2.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>外包人员薪资管理</p>
								</a></li>
							</ul></li>
						<!--@nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->


						<!--实习生信息管理 @nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
						<li class="nav-item has-treeview menu-close"><a href="#"
							class="nav-link active"> <i class="nav-icon fa fa-th"></i>
								<p>
									实习生信息管理 <i class="right fa fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">


								<li class="nav-item"><a href="searchTraInfo2.jsp" target="mainFrame"
							 class="nav-link">
										<i class="fa fa-circle-o nav-icon"></i>
										<p>实习生信息查询</p>
								</a></li>


								<li class="nav-item"><a href="traEntryInfo2.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>实习生信息录入</p>
								</a></li>


								<li class="nav-item"><a href="traSalary2.jsp" class="nav-link" target="mainFrame"> <i
										class="fa fa-circle-o nav-icon"></i>
										<p>实习生薪资管理</p>
								</a></li>


							</ul></li>


						<li class="nav-item"><a href="dictionary.jsp"
							target="mainFrame" class="nav-link active"> <i
								class="nav-icon fa fa-file"></i>
								<p>数据字典信息管理</p>
						</a></li>

						<!--@nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->





						<!-- <li class="nav-header">More+</li> -->
						<!-- <li class="nav-item">
            <a href="dictionary.jsp" class="nav-link">
              <a href="dictionary.jsp" target="mainFrame" class="nav-link"> <i class="nav-icon fa fa-file"></i>数据字典信息管理</a>
             </li> -->
             
             
			<!--@nxl!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
						</a>
						</li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>




		<!-- @nxl 老师修改的代码！！！！！！白框 -->
		
		    <div class="content-wrapper" style="background-color: white"> &nbsp;&nbsp;&nbsp;&nbsp;
	    	<iframe name="mainFrame" src="firstpage2.jsp" border="0" align="center" frameborder="0" style="width: 97%; height:1700px"> </iframe> 
	    	
       <!--   <div class="div_a">
        <iframe name="mainFrame" src="firstpage2.jsp" style="width: 90%; height:1500px" scrolling="no" border="0" marginwidth="0" style="border:none;" frameborder="1"> </iframe> -->



		</div>



	<!-- 	Content Wrapper. Contains page content
    <div class="content-wrapper">
    Content Header (Page header)
      /.content-header
      <div class="col-lg-10 col-md-10 col-sm-10">
          内嵌框架
	 <iframe name="mainFrame" src="firstpage.jsp" border="0" frameborder="0"
	 style="width: 121%; height: 600px"> </iframe>
     <br> <br> <br> <br>
	 </div>
     /.content
     </div> -->



		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<strong><center>Copyright &copy; Practical Training 2018 HRPooling人力资源管理系统v1.0</center> </a></strong>
			<div class="float-right d-none d-sm-inline-block"></div>
		</footer>



		 <!-- Control Sidebar -->
         <aside class="control-sidebar control-sidebar-dark">
         <!-- Control sidebar content goes here -->
         </aside>
         <!-- /.control-sidebar -->
         </div>
	     <!-- ./wrapper -->


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
