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
	<link href="../resources/bootstrap/css/style.css" rel="stylesheet" type="text/css" />
	<!-- 	Dropdown menu -->
	<link href="../resources/bootstrap/css/dropdown.css" rel="stylesheet" type="text/css" />

	<script src="<c:url value="../resources/bootstrap/js/coursePicker.js" />"></script>
	
	
<title>Pick a Course : Online Admission System</title>

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
			<div class="col-xs-3 h4" style="text-align: right">
				<a href="../login?logout">Log Out</a>
			</div>
		</div>
	</div>
	
	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">
		<div class="col-xs-3">
			<div class="dropdown">
				<button onclick="myFunction()" class="dropbtn">1. Select a
					Stream</button>
				<div id="myDropdown" class="dropdown-content">
					<a href="javascript:arts()">Arts</a> <a
						href="javascript:commerce()">Commerce</a> <a
						href="javascript:science()">Science</a>
				</div>
			</div>
		</div>

		<div class="col-xs-3" id="arts" style="display: none">
			<div class="dropdown">
				<button onclick="myFunction()" class="dropbtn">2. Select a
					Subject</button>
				<div id="myDropdown" class="dropdown-content">
					<a href="#">Bengali</a> <a
						href="#">English</a>
				</div>
			</div>
		</div>
		
		<div class="col-xs-3" id="commerce" style="display: none">
			<div class="dropdown">
				<button onclick="myFunction()" class="dropbtn">2. Select a
					Subject</button>
				<div id="myDropdown" class="dropdown-content">
					<a href="#">Accountancy</a> <a
						href="#">BEBM</a>
				</div>
			</div>
		</div>
		
		<div class="col-xs-3" id="science" style="display: none">
			<div class="dropdown">
				<button onclick="myFunction()" class="dropbtn">2. Select a
					Subject</button>
				<div id="myDropdown" class="dropdown-content">
					<a href="#">Chemistry</a> <a
						href="#">Computer Science</a> <a
						href="#">Maths</a> <a
						href="#">Physics</a>
				</div>
			</div>
		</div>

	</div>
</body>


</html>