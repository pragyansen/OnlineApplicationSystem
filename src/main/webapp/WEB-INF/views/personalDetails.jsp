<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<title>Personal Details - Online Admission System</title>
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Bootstrap 3.3.2 -->
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<!-- 	Date Picker -->
	<link href="../resources/bootstrap/css/datepicker3.css" rel="stylesheet" type="text/css" />
	<link href="../resources/bootstrap/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="col-xs-12 noMargin noPadding">
		
		<jsp:include page="header.jsp"/>
		
		<div class="col-xs-12 col-md-8 col-md-offset-2 formModel">
		<form:form class="form-horizontal" role="form" method="post" id="personalDetailsform" modelAttribute="personalBean">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<div class="form-group col-xs-12 noPadding">
				<form:label path="name" class="control-form:label col-md-3">Name&nbsp;&nbsp;</form:label>
				<div class="col-md-7">
					<form:input path="name" type="text" class="form-control" readonly="true" />
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="fatherName" class="control-form:label col-md-3">
					Father's Name<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<form:input id="fatherName" path="fatherName" type="text" class="form-control"	placeholder="Father's Name" />
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="motherName" class="control-form:label col-md-3">
					Mother's Name<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<form:input id="motherName" path="motherName" type="text" class="form-control"	placeholder="Mother's Name" />
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="gender" class="control-form:label col-md-3">
					Gender<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<label class="radio-inline"> <form:radiobutton path="gender" name="gender" value="M" />Male</label>
					<label class="radio-inline"> <form:radiobutton path="gender" name="gender" value="F" />Female</label>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding has-feedback">
				<form:label path="dob" class="control-form:label col-md-3">
					Date of Birth<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-3">
					<div class="input-group date" id="dobDatePicker">
						<form:input id="dob" path="dob" type="text" class="form-control" readonly="true" />
						<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
						</span>
					</div>
				</div>	
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="age" class="control-form:label col-md-3">Age&nbsp;&nbsp;</form:label>
				<div class="col-md-2">
					<form:input id="age" path="age" type="text" class="form-control" readonly="true"/>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="handicap" class="control-form:label col-md-3">
					Physically Challenged<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<label class="radio-inline"> <form:radiobutton path="handicap" value="Y" />Yes</label>
					 <label class="radio-inline"> <form:radiobutton path="handicap" value="N" />No</label>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="studentCast" class="control-form:label col-md-3">
					Cast<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<label class="radio-inline"> <form:radiobutton path="studentCast" value="ST" />ST </label>
					<label class="radio-inline"> <form:radiobutton path="studentCast" value="SC" />SC </label>
					<label class="radio-inline"> <form:radiobutton path="studentCast" value="OBC" />OBC </label>
					<label class="radio-inline"> <form:radiobutton path="studentCast" value="GEN" />GEN </label>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="adl1" class="control-form:label col-md-3">
					Address Line 1<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<form:input id="adl1" path="adl1" type="text" class="form-control" placeholder="Apartment Number" />
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="adl2" class="control-form:label col-md-3">
					Address Line 2&nbsp;&nbsp;
				</form:label>
				<div class="col-md-7">
					<form:input path="adl2" type="text" class="form-control"	placeholder="Street"/>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="adl3"  class="control-form:label col-md-3">
					Address Line 3&nbsp;&nbsp;
				</form:label>
				<div class="col-md-7">
					<form:input path="adl3" type="text" class="form-control"	placeholder="Locality"/>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="pin" class="control-form:label col-md-3">
					PIN<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<form:input id="pin" path="pin" type="number" class="form-control" onkeypress="return isNumberKey(event)" placeholder="Postal Code"/>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="district" class="control-form:label col-md-3">
					District<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<form:input id="district" path="district" type="text" class="form-control"	placeholder="District"/>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<form:label path="state" class="control-form:label col-md-3">
					State<span style="color: red;"> *</span>
				</form:label>
				<div class="col-md-7">
					<form:input path="state" type="text" class="form-control"	placeholder="State"/>
				</div>
			</div>
			<div class="form-group col-xs-12">
					<div class="col-xs-5 col-md-3 col-md-offset-3">
						<button type="submit" class="btn btn-primary btn-block" onclick="return validate()">Submit</button>
					</div>
					<div class="col-xs-5 col-md-3">
						<button type="button" class="btn btn-success btn-block" onclick="window.location.href='../dashboard/' ">Cancel</button>
					</div>
				</div>
		</form:form>

		</div>

	</div>
	<!-- jQuery 2.1.3 -->
	<script	src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script	src="../resources/plugins/jQueryUI/jquery-ui.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
	<script	src="../resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<!-- 	DatePicker -->
	<script	src="../resources/bootstrap/js/bootstrap-datepicker.js" type="text/javascript"></script>
	<script src="../resources/bootstrap/js/personalDetailsapp.js" type="text/javascript"></script>
</body>
</html>