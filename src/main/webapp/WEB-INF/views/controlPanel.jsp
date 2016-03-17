<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<title>Online Admission System</title>
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Bootstrap 3.3.2 -->
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- 	Date Picker -->
	<link href="../resources/bootstrap/css/datepicker3.css" rel="stylesheet" type="text/css" />
	<link href="../resources/bootstrap/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="col-xs-12 col-md-12 col-sm-12 col-lg-12 noMargin noPadding" id="mainContainer">
		<div class="col-xs-12 col-md-12 col-sm-12 col-lg-12 header">
			<div class="col-xs-9">
				<a href="resources/index2.html" class="customanchor"> <span
					class="glyphicon glyphicon-education" aria-hidden="true"></span> <b><spring:message
							code="login.appname.first" /></b> <spring:message
						code="login.appname.second" />
				</a>
			</div>
			<div class="col-xs-3 h4 noPadding"  style="text-align:right">
				<a href="../login?logout">Log Out</a>
			</div>
  		</div>
  		<div class=" col-xs-12 alert alert-success adminTotalStudentDiv">
				<span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span>
				Total Student Register <b>555</b>
		</div>
				
  		<div class="col-md-6 col-sm-12 col-xs-12 col-lg-6 chartContainer">
  			Student Status Report
			<div style="height: 100%" id="statusChart"></div>
  		</div>
		
  		
  		<div class="col-md-6 col-sm-12 col-xs-12 col-lg-6 chartContainer">
  			Subject Status Report
			<div style="height: 100%" id="subjectChart"></div>
  		</div>
	</div>
	<!-- jQuery 2.1.3 -->
	<script	src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script	src="../resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- 	DatePicker -->
	<script	src="../resources/bootstrap/js/bootstrap-datepicker.js" type="text/javascript"></script>
	<!-- 	Moris Chart -->
	<script src="../resources/bootstrap/js/raphael-min.js" type="text/javascript"></script>
	<script src="../resources/bootstrap/js/morris-0.4.1.min.js" type="text/javascript"></script>
	<script src="../resources/bootstrap/js/adminapp.js" type="text/javascript"></script>
</body>
</html>