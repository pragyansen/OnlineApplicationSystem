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
<div class="noMargin noPadding">
	
	<div class="col-xs-12 header">
		<div class="col-xs-9">
			<a href="resources/index2.html" class="customanchor"> <span
				class="glyphicon glyphicon-education" aria-hidden="true"></span> <b><spring:message
						code="login.appname.first" /></b> <spring:message
					code="login.appname.second" />
			</a>
		</div>
		<div class="col-xs-3 h4"  style="text-align:right">
			<a href="../login?logout">Log Out</a>
		</div>
  	</div>
  	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2">
	  	
	  	<div class="row">
		  	<div class = "col-xs-12 bg-success dashboard-infoBox">Once you apply for a course, it's status will appear here</div>
		  	
	  	</div>
	  		  	
	  	<div class="row">
		  	<div class="col-xs-12 col-md-4">
		  	<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box"><a href="../dashboard/personalDetails">A. Enter Basic Details</a></div>
		  	</div>
		  	<div class="col-xs-12 col-md-4">
		  	<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box"><a href="">B. Enter Educational Details</a></div>
		  	</div>
		  	<div class="col-xs-12 col-md-4">
		  	<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box"><a href="">C. Apply for a Course</a></div>
		  	</div>
	  	</div>
	  	
	  	<div class="row">
		  	<div class = "col-xs-12 col-md-10 col-md-offset-1 bg-info dashboard-infoBox">
		  		<span style="color:red">Important :</span> A and B will be disabled after you apply for your first course.
			</div>
		  	
	  	</div>
	  	
  	</div>
</div>

<!-- jQuery 2.1.3 -->
	<script	src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script	src="../resources/plugins/jQueryUI/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script	src="../resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>