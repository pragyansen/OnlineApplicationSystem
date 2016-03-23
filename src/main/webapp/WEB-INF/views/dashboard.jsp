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

</head>
<body>
<div class="noMargin noPadding">
	
	<jsp:include page="header.jsp"/>
	
	<div id="myModal" class="modal fade" role="dialog">
	  <div class="modal-dialog">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h3 class="modal-title text-center">Course Details</h3>
	      </div>
	      <div class="modal-body">
	        ${text}
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	
	  </div>
	</div>
	
  	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">
	  	
	  	<div class="row">
		  	<div class = "col-xs-12 col-md-10 col-md-offset-1 bg-success dashboard-infoBox">
		  	Details regarding the courses you've applied for can be found
		  	<a href="" data-toggle="modal" data-target="#myModal"><span style="color:blue"> here</span></a>
		  	</div>
		  	
	  	</div>
	  		  	
	  	<div class="row">
		  	<div class="col-xs-12 col-md-6">
		  	<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box"><a href="personalDetails">A. Enter Basic Details</a></div>
		  	</div>
		  	<div class="col-xs-12 col-md-6">
		  	<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box"><a href="educationalDetails">B. Enter Educational Details</a></div>
		  	</div>
		  	<div class="col-xs-12 col-md-6">
		  	<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box"><a href="fileupload">C. Upload Photo and Signature</a></div>
		  	</div>
		  	<div class="col-xs-12 col-md-6">
		  	<div class = "col-xs-10 col-xs-offset-1 bg-primary dashboard-box"><a href="coursePicker">D. Apply for a Course</a></div>
		  	</div>
	  	</div>
	  	
	  	<div class="row">
		  	<div class = "col-xs-12 col-md-10 col-md-offset-1 bg-info dashboard-infoBox">
		  		<span style="color:red">Important :</span> A and B will be disabled after you apply for your first course.
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
</script>
		
</body>
</html>