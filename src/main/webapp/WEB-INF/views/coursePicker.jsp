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

		<jsp:include page="header.jsp"/>
		
	</div>
	
	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">
		<div class="col-xs-3">
			<form:form method="post" modelAttribute="educationalDetails">
				<form:checkboxes items="${courseList}" itemValue="courseCode" itemLabel="courseName" path="board10"/>
			
			</form:form>
		</div>

		
		
		
		
		

	</div>
</body>


</html>