<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Hiker</title>

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
	<style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        form {
            max-width: 400px;
            width: 100%;
        }

        input {
            width: 100%;
            box-sizing: border-box;
            margin-bottom: 10px;
        }
        h1{
        margin-right:20px;
        }
         .back-button {
            margin-top: 10px;
            margin-left:100px;
            
        }
    </style>
</head>
<body>
	<h1>Edit Hiker</h1>
	

	<form:form method="post"
		action="${pageContext.request.contextPath}/hikers/edit"
		modelAttribute="hiker">
		<form:input path="hiker_ID" readOnly="true" type="text" name="id"
			class="form-control" placeholder="ID" />

		<label for="full_name">Full Name</label>
		<form:input path="full_name" type="text" required="required" />
		
		<label for="age">Age</label>
		<form:input path="age" type="number" required="required" />

		<label for="CNP">CNP</label>
		<form:input path="CNP" type="text" required="required" />

		<label for="entry_date">Entry Date</label>
		<form:input path="entry_date" type="date" required="required" />

		<label for="exit_date">Exit Date</label>
		<form:input path="exit_date" type="date" required="required" />

		<label for="trail_name">Trail Name</label>
		<form:input path="trail_name" type="text" required="required" />

		<label for="phone_number">Phone Number</label>
		<form:input path="phone_number" type="text" required="required" />

		<input type="submit" value="Save" />
		<br />

	</form:form>
	<a href="${pageContext.request.contextPath}/hikers/all" class="back-button">
        <button type="button">Back to All Hikers</button>
	
	<!-- jQuery -->
	<script src="<c:url value='/adminlte/plugins/jquery/jquery.min.js' />"></script>
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
	<script src="<c:url value='/adminlte/plugins/chart.js/Chart.min.js' />"></script>
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
	<script src="<c:url value='/adminlte/plugins/moment/moment.min.js' />"></script>
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
	<script src="<c:url value='/adminlte/dist/js/pages/dashboard.js' />"></script>

</body>
</html>
