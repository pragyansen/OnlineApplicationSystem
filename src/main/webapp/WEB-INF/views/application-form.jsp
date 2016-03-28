<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<title>Application Form - Online Admission System</title>
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Bootstrap 3.3.2 -->
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="../resources/bootstrap/css/style.css" rel="stylesheet" type="text/css" />
	
  	<style>
 	table, th, td {
  	   border: 2px solid black;
 	}
	
	.row{
		margin-top : 10px;
	}
 	</style>

</head>

<body>
	<div class="noMargin noPadding">

		<jsp:include page="header.jsp" />

	</div>

	<div class="col-xs-12 col-md-8 col-md-offset-2 h4 loginMdl">

		<h2 class="text-center">Application Form</h2>
		<br>
		
		<div class="col-xs-9">
			<div class="row"><div class="col-xs-4">Name</div><div class="col-xs-7">: ${personalDetails.getName()}</div></div>
			<div class="row"><div class="col-xs-4">Father's name</div><div class="col-xs-7">: ${personalDetails.getFatherName()}</div></div>
			<div class="row"><div class="col-xs-4">Mother's name</div><div class="col-xs-7">: ${personalDetails.getMotherName()}</div></div>
			<div class="row"><div class="col-xs-4">Gender</div><div class="col-xs-7">: ${personalDetails.getGender()}</div></div>
			<div class="row"><div class="col-xs-4">Date-of-birth</div><div class="col-xs-7">: ${personalDetails.getDob()}</div></div>
			<div class="row"><div class="col-xs-4">Age</div><div class="col-xs-7">: ${personalDetails.getAge()}</div></div>
			<div class="row"><div class="col-xs-4">Physically Challenged</div><div class="col-xs-7">: ${personalDetails.getHandicap()}</div></div>
			<div class="row"><div class="col-xs-4">Cast</div><div class="col-xs-7">: ${personalDetails.getStudentCast()}</div></div>
			<div class="row"><div class="col-xs-4">Address Line 1</div><div class="col-xs-7">: ${personalDetails.getAdl1()}</div></div>
			<div class="row"><div class="col-xs-4">Address Line 2</div><div class="col-xs-7">: ${personalDetails.getAdl2()}</div></div>
			<div class="row"><div class="col-xs-4">Address Line 3</div><div class="col-xs-7">: ${personalDetails.getAdl3()}</div></div>
			<div class="row"><div class="col-xs-4">Pin</div><div class="col-xs-7">: ${personalDetails.getPin()}</div></div>
			<div class="row"><div class="col-xs-4">District</div><div class="col-xs-7">: ${personalDetails.getDistrict()}</div></div>
			<div class="row"><div class="col-xs-4">State</div><div class="col-xs-7">: ${personalDetails.getState()}</div></div>
		</div>
		
		<div class="col-xs-2">		
			<img style="max-width:100%" src="getFile/getImage/photo"/>
		</div>
		
		<div class="col-xs-11" style="margin-top:30px">
			<div class="col-xs-12">Educational Details</div>
			<div class="col-xs-12 text-center table-responsive">
				 <table class="table table-condensed" style="width:100%">
				  <tr>
				  	<th>Class</th>
				  	<th>Institution</th>
				  	<th>Board</th>
				  	<th>Year of passing</th>
				  	<th>Marks Obtained</th>
				  	<th>Total Marks</th>
				  	<th>Percentage</th>
				  </tr>
				  <tr>
				    <td>Class 10</td>
				    <td>${educationalDetails.getInstitution10()}</td>
				    <td>${educationalDetails.getBoard10()}</td>
				    <td>${educationalDetails.getYearOfPassing10()}</td>
				    <td>${educationalDetails.getMarks10()}</td>
				    <td>${educationalDetails.getTotalMarks10()}</td>
				    <td>${educationalDetails.getPercentage10()}</td>
				  </tr>
				  <tr>
				    <td>Class 12</td>
				    <td>${educationalDetails.getInstitution12()}</td>
				    <td>${educationalDetails.getBoard12()}</td>
				    <td>${educationalDetails.getYearOfPassing12()}</td>
				    <td>${educationalDetails.getMarks12()}</td>
				    <td>${educationalDetails.getTotalMarks12()}</td>
				    <td>${educationalDetails.getPercentage12()}</td>
				  </tr>
				</table> 
			</div>
			
			<div class="col-xs-12" style="margin-top:30px">Marks obtained in class 12 exam</div>
			<div class="col-xs-12 text-center table-responsive">
				 <table class="table table-condensed" style="width:100%">
				  <tr>
				  	<th>Subject</th>
				  	<td>${educationalDetails.getSubject1code()}</td>
				  	<td>${educationalDetails.getSubject2code()}</td>
				  	<td>${educationalDetails.getSubject3code()}</td>
				  	<td>${educationalDetails.getSubject4code()}</td>
				  	<td>${educationalDetails.getSubject5code()}</td>
				  </tr>
				  <tr>
				  	<th>Total Marks</th>
				  	<td>${educationalDetails.getSubject1total()}</td>
				  	<td>${educationalDetails.getSubject2total()}</td>
				  	<td>${educationalDetails.getSubject3total()}</td>
				  	<td>${educationalDetails.getSubject4total()}</td>
				  	<td>${educationalDetails.getSubject5total()}</td>
				  </tr>
				  <tr>
				  	<th>Marks Obtained</th>
				  	<td>${educationalDetails.getSubject1marks()}</td>
				  	<td>${educationalDetails.getSubject2marks()}</td>
				  	<td>${educationalDetails.getSubject3marks()}</td>
				  	<td>${educationalDetails.getSubject4marks()}</td>
				  	<td>${educationalDetails.getSubject5marks()}</td>
				  </tr>
				</table> 
			</div>
			
			<div class="row"><div class="col-xs-12" style="margin-top:30px">Courses Picked : ${courseDetails.pickedCourses()}</div></div>
			
			<div class="row"><div class="col-xs-12" style="margin-top:30px">
				Declaration : The above information is accurate to the best of my knowledge.
			</div></div>
			
			<div class="row"><div class="col-xs-12"  style="margin-top:20px">
				Digital Signature : <img style="max-width:100%" src="getFile/getImage/sign"/>
			</div></div>
			
			<div class="col-xs-12 col-md-4 hidden-print"  style="margin-top:30px">
				<button class="btn btn-block btn-primary" onclick="myFunction()">Print Application Form</button>
			</div>
			
			<div class="col-xs-12 col-md-4 hidden-print"  style="margin-top:30px">
				<button type="button" class="btn btn-block btn-success" onclick="window.location.href='../dashboard/' ">Cancel</button>
			</div>
			
		</div>

	</div>
	
	<script>
	
		function myFunction() {
		    window.print();
		}
	
		</script>

</body>


</html>