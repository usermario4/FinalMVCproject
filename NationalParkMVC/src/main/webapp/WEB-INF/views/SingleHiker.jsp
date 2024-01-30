<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="<c:url value="/adminlte/https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"/>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<c:url value="/adminlte/plugins/fontawesome-free/css/all.min.css"/>">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="<c:url value="/adminlte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css"/>">
  <!-- iCheck -->
  <link rel="stylesheet" href="<c:url value="/adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css"/>">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<c:url value="/adminlte/plugins/jqvmap/jqvmap.min.css"/>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<c:url value="/adminlte/dist/css/adminlte.min.css"/>">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<c:url value="/adminlte/plugins/overlayScrollbars/css/OverlayScrollbars.min.css"/>">
</head>
<body>
  DETALII Trail <br/>
  <table style="display: flex; flex-direction: column; max-width: 300px; margin: 0 auto;">
    <tr>
      <td>Trail Name</td>
      <td>${trail.name}</td>
    </tr>
    <tr>
      <td>Distance</td>
      <td>${trail.distance}</td>
    </tr>
    <tr>
      <td> Number of Safe Houses</td>
      <td>${trail.safe_house}</td>
    </tr>
  </table>
  <a href="<c:url value='/trails/all' />">
    <button class="brand-text font-weight-light text-white" type="button" style="border-radius:10px; background-color: #007bff;width: 100px; padding: 10px; margin-top:10px; margin-left:20px;">Back</button>
  </a>

  <!-- SCRIPTS -->
  <!-- jQuery -->
  <script src="<c:url value="/adminlte/plugins/jquery/jquery.min.js"/>"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="<c:url value="/adminlte/plugins/jquery-ui/jquery-ui.min.js"/>"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <script>
    $.widget.bridge('uibutton', $.ui.button)
  </script>
  <!-- Bootstrap 4 -->
  <script src="<c:url value="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
  <!-- ChartJS -->
  <script src="<c:url value="/adminlte/plugins/chart.js/Chart.min.js"/>"></script>
  <!-- Sparkline -->
  <script src="<c:url value="/adminlte/plugins/sparklines/sparkline.js"/>"></script>
  <!-- JQVMap -->
  <script src="<c:url value="/adminlte/plugins/jqvmap/jquery.vmap.min.js"/>"></script>
  <script src="<c:url value="/adminlte/plugins/jqvmap/maps/jquery.vmap.usa.js"/>"></script>
  <!-- jQuery Knob Chart -->
  <script src="<c:url value="/adminlte/plugins/jquery-knob/jquery.knob.min.js"/>"></script>
  <!-- daterangepicker -->
  <script src="<c:url value="/adminlte/plugins/moment/moment.min.js"/>"></script>
  <script src="<c:url value="/adminlte/plugins/daterangepicker/daterangepicker.js"/>"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="<c:url value="/adminlte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"/>"></script>
  <!-- Summernote -->
  <script src="<c:url value="/adminlte/plugins/summernote/summernote-bs4.min.js"/>"></script>
  <!-- overlayScrollbars -->
  <script src="<c:url value="/adminlte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"/>"></script>
  <!-- AdminLTE App -->
  <script src="<c:url value="/adminlte/dist/js/adminlte.js"/>"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="<c:url value="/adminlte/dist/js/demo.js"/>"></script>
  <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
  <script src="<c:url value="/adminlte/dist/js/pages/dashboard.js"/>"></script>
</body>
</html>
