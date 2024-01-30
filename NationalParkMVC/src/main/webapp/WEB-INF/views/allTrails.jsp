<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<base href="${pageContext.request.contextPath}/">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="<c:url value='/adminlte/https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback'/>">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="<c:url value='/adminlte/plugins/fontawesome-free/css/all.min.css'/>">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Tempusdominus Bootstrap 4 -->
<link rel="stylesheet"
	href="<c:url value='/adminlte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css'/>">
<!-- iCheck -->
<link rel="stylesheet"
	href="<c:url value='/adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css'/>">
<!-- JQVMap -->
<link rel="stylesheet"
	href="<c:url value='/adminlte/plugins/jqvmap/jqvmap.min.css'/>">
<!-- Theme style -->
<link rel="stylesheet"
	href="<c:url value='/adminlte/dist/css/adminlte.min.css'/>">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="<c:url value='/adminlte/plugins/overlayScrollbars/css/OverlayScrollbars.min.css'/>">

</head>

<body class="hold-transition sidebar-mini layout-fixed">

	<div class="wrapper">
		<!-- Preloader -->


		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
			</ul>
			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="index3.html" class="brand-link"> <span
				class="brand-text font-weight-light">National Park Project</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user panel (optional) -->

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Menu <i class="right fas fa-angle-left"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a
									href="<c:url value='./hikers/all' />" class="nav-link active">
										<i class="far fa-circle nav-icon"></i>
										<p>Hikers</p>
								</a></li>
								<li class="nav-item"><a
									href="<c:url value='/trails/all' />" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>Trails</p>
								</a></li>
								<li class="nav-item"><a href="${pageContext.request.contextPath}/events/all" class="nav-link active">
								 <i class="far fa-circle nav-icon"></i>
										<p>Events</p>
								</a></li>
							</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Trails</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<div class="row"></div>
					<!-- /.row -->
					<!-- Main row -->
					<div class="row">
						<!-- Left col -->
						<section class="col-lg-7 connectedSortable">
							<div class="card-tools">
								<table>
									<thead>
										<tr>
											<th style="border: 1px solid black;">ID</th>
											<th style="border: 1px solid black;">Name</th>
											<th style="border: 1px solid black;">Distance</th>
											<th style="border: 1px solid black;">Safe House</th>
											<th style="border: 1px solid black;">Actions</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="trail" items="${trail}" varStatus="idx">
											<tr
												${idx.index % 2 == 0 ? "style='background-color:grey;color:white'" : ""}>

												<td style="border: 1px solid black;"><c:out
														value="${trail.trail_id}" /></td>
												<td style="border: 1px solid black;"><c:out
														value="${trail.name}" /></td>
												<td style="border: 1px solid black;"><c:out
														value="${trail.distance}" /></td>
												<td style="border: 1px solid black;"><c:out
														value="${trail.safe_house}" /></td>

												<td>
													<table>
														<tr>
															<td><a
																href="<c:url value='/trails/${trail.trail_id}' />">DETAILS</a></td>
															<td style="border-left: 1px solid white;"><a
																href="<c:url value='/trails/edit/${trail.trail_id}' />">EDIT</a></td>
															<td style="border-left: 1px solid white;"><a
																href="<c:url value='/trails/delete/${trail.trail_id}' />">DELETE</a></td>
														</tr>
													</table>
												</td>

											</tr>
										</c:forEach>
									</tbody>
								</table>
								<a href="<c:url value='/trails/create' />">
									<button type="button">Create Trail</button>
								</a>
								<!-- SCRIPTS -->
								<!-- jQuery -->
								<script
									src="<c:url value='/adminlte/plugins/jquery/jquery.min.js' />"></script>
								<!-- jQuery UI 1.11.4 -->
								<script
									src="<c:url value='/adminlte/plugins/jquery-ui/jquery-ui.min.js' />"></script>
								<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
								<script>
									$.widget.bridge('uibutton', $.ui.button)
								</script>
								<!-- Bootstrap 4 -->
								<script
									src="<c:url value='/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js' />"></script>
								<!-- ChartJS -->
								<script
									src="<c:url value='/adminlte/plugins/chart.js/Chart.min.js' />"></script>
								<!-- Sparkline -->
								<script
									src="<c:url value='/adminlte/plugins/sparklines/sparkline.js' />"></script>
								<!-- JQVMap -->
								<script
									src="<c:url value='/adminlte/plugins/jqvmap/jquery.vmap.min.js' />"></script>
								<script
									src="<c:url value='/adminlte/plugins/jqvmap/maps/jquery.vmap.usa.js' />"></script>
								<!-- jQuery Knob Chart -->
								<script
									src="<c:url value='/adminlte/plugins/jquery-knob/jquery.knob.min.js' />"></script>
								<!-- daterangepicker -->
								<script
									src="<c:url value='/adminlte/plugins/moment/moment.min.js' />"></script>
								<script
									src="<c:url value='/adminlte/plugins/daterangepicker/daterangepicker.js' />"></script>
								<!-- Tempusdominus Bootstrap 4 -->
								<script
									src="<c:url value='/adminlte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js' />"></script>
								<!-- Summernote -->
								<script
									src="<c:url value='/adminlte/plugins/summernote/summernote-bs4.min.js' />"></script>
								<!-- overlayScrollbars -->
								<script
									src="<c:url value='/adminlte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js' />"></script>
								<!-- AdminLTE App -->
								<script src="<c:url value='/adminlte/dist/js/adminlte.js' />"></script>
								<!-- AdminLTE for demo purposes -->
								<script src="<c:url value='/adminlte/dist/js/demo.js' />"></script>
								<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
								<script
									src="<c:url value='/adminlte/dist/js/pages/dashboard.js' />"></script>
							</div>
						</section>
					</div>
				</div>
			</section>
		</div>
	</div>
</body>
</html>
