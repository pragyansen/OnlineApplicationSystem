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

</head>

<body>
	<div class="noMargin noPadding">

		<jsp:include page="header.jsp" />

	</div>

	<div class="col-xs-10 col-xs-offset-1 loginMdl">

		<h2 class="text-center">Application Form</h2>
		<br>
		
		<div class="col-md-9">
			<div class="col-md-4">Name</div><div class="col-md-7">: ${personalDetails.getName()}</div>
			<div class="col-md-4">Father's name</div><div class="col-md-7">: ${personalDetails.getFatherName()}</div>
			<div class="col-md-4">Mother's name</div><div class="col-md-7">: ${personalDetails.getMotherName()}</div>
			<div class="col-md-4">Gender</div><div class="col-md-7">: ${personalDetails.getGender()}</div>
			<div class="col-md-4">Date-of-birth</div><div class="col-md-7">: ${personalDetails.getDob()}</div>
			<div class="col-md-4">Age</div><div class="col-md-7">: ${personalDetails.getAge()}</div>
			<div class="col-md-4">Physically Challenged</div><div class="col-md-7">: ${personalDetails.getHandicap()}</div>
			<div class="col-md-4">Cast</div><div class="col-md-7">: ${personalDetails.getStudentCast()}</div>
			<div class="col-md-4">Address</div><div class="col-md-7">: ${personalDetails.getAdl1()}</div>
											   <div class="col-md-7 col-md-offset-4">: ${personalDetails.getAdl2()}</div>
											   <div class="col-md-7 col-md-offset-4">: ${personalDetails.getAdl3()}</div>
			<div class="col-md-4">Pin</div><div class="col-md-7">: ${personalDetails.getPin()}</div>
			<div class="col-md-4">District</div><div class="col-md-7">: ${personalDetails.getDistrict()}</div>
			<div class="col-md-4">State</div><div class="col-md-7">: ${personalDetails.getState()}</div>
		</div>
		<div class="col-md-2">
		
			<img style="max-width:100%" src="getFile/getImage/photo"/>
		</div>

	</div>

</body>


</html>