<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<title>Dashboard - Online Admission System</title>
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Bootstrap 3.3.2 -->
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="../resources/bootstrap/css/style.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="bootstrap.min.css">

<style>

	/* Popover Body */
.popover-content {
    color: #000000;
    padding: 25px;
}

</style>

</head>
<body>
<div class="noMargin noPadding">
	
	<jsp:include page="header.jsp"/>
	

	
  	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">
	  	
	  	<div class="row">
		  	
			<div class="col-xs-12">
		  	<c:choose>
			  	<c:when test="${courses != null}">
					<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box-inactive">
				  	 	<span class="inactive-text">A. Enter Personal Details </span>
				  	 	<span class="glyphicon glyphicon-ok"></span></div>
				</c:when>
				
			  	<c:when test="${personalBean != null}">
			  		<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="educationalDetails">	
				  	<span class="inactive-text">A. Enter personal Details </span></a>
				  	<span class="glyphicon glyphicon-ok"></span></div>
			  	</c:when>
			  	
			  	<c:otherwise>
			  		<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="personalDetails">	
				  	A. Enter Personal Details</a></div>
			  	</c:otherwise>
			</c:choose>
			</div>
		  	
		  	<div class="col-xs-12">
		  	<c:choose>
			  	<c:when test="${courses != null}">
					<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box-inactive">
				  	 	<span class="inactive-text">B. Enter Educational Details </span>
				  	 	<span class="glyphicon glyphicon-ok"></span></div>
				</c:when>
				
			  	<c:when test="${educationalBean != null}">
			  		<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="educationalDetails">	
				  	<span class="inactive-text">B. Enter Educational Details </span></a>
				  	<span class="glyphicon glyphicon-ok"></span></div>
			  	</c:when>
			  	
			  	<c:otherwise>
			  		<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="educationalDetails">	
				  	B. Enter Educational Details</a></div>
			  	</c:otherwise>
			</c:choose>
			</div>
		  	
		  	<div class="col-xs-12">
		  	<c:choose>
			  	<c:when test="${courses != null}">
					<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box-inactive">
				  	 	<span class="inactive-text">C. Upload Photo and Signature </span>
				  	 	<span class="glyphicon glyphicon-ok"></span></div>
				</c:when>
				
			  	<c:when test="${files != null}">
			  		<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="fileupload">	
				  	<span class="inactive-text">C. Upload Photo and Signature </span></a>
				  	<span class="glyphicon glyphicon-ok"></span></div>
			  	</c:when>
			  	
			  	<c:otherwise>
			  		<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="fileupload">	
				  	C. Upload Photo and Signature</a></div>
			  	</c:otherwise>
			</c:choose>
			</div>
		  	
		  	<div class="col-xs-12">
		  	<c:choose>
			  	<c:when test="${courses != null}">
					<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box-inactive">
				  	 	<span class="inactive-text">D. Apply for a Course </span>
				  	 	<span class="glyphicon glyphicon-ok"></span></div>
				  	 	
				</c:when>
				
			  	<c:when test="${personalBean != null && educationalBean != null && files != null }">
			  		<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="coursePicker">	
				  	D. Apply for a Course</a></div>
			  	</c:when>
			</c:choose>
		  	</div>
		  	
		  	<div class="col-xs-12">
			  	<c:if test="${courses != null}">
					<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box">
				  	<a href="application-form">	
				  	E. Print Application Form</a></div>
				</c:if>
			</div>
		  	
		  	
		  	
	  	</div>
	  	
	  	<div class="row">
		  	<div class = "col-xs-12 col-md-10 col-md-offset-1 bg-info dashboard-infoBox">
		  		<span style="color:red">Important :</span> After you apply for a course, you cannot change any information.
			</div>
		  	
	  	</div>
	  	
<!-- 	  	<button onclick="myFunction()">Print this page</button> -->
	  	
	        
  	</div>
</div>

<!-- jQuery 2.1.3 -->
	<script	src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script	src="../resources/plugins/jQueryUI/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script	src="../resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script>
function myFunction() {
    window.print();
}


$(document).ready(function(){
    $('[data-toggle="popover"]').popover();
});

</script>
		
</body>
</html>