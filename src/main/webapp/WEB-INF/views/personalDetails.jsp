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
	<div class="col-xs-12 noMargin noPadding">
		<div class="col-xs-12 header">
			<a href="resources/index2.html" class="customanchor"> <span
				class="glyphicon glyphicon-education" aria-hidden="true"></span> <b><spring:message
						code="login.appname.first" /></b> <spring:message
					code="login.appname.second" />
			</a>
		</div>
		<div class="col-xs-12 formModel">
		<form class="form-horizontal" role="form" method="post" id="personalDetailsform">
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">Name&nbsp;&nbsp;</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	value="Subhendu Pal" readonly></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Father's Name<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="Father's Name"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Mother's Name<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="Mother's Name"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Gender<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<label class="radio-inline"> <input type="radio"
						name="gender" value="M">Male
					</label> <label class="radio-inline"> <input type="radio"
						name="gender" value="F">Female
					</label>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding has-feedback">
				<label class="control-label col-md-3">
					Date of Birth<span style="color: red;"> *</span>
				</label>
				<div class="col-md-3">
					<div class="input-group date" id="dobDatePicker">
						<input type="text" class="form-control" id="dob" readonly="readonly" />
						<span class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
						</span>
					</div>
				</div>	
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">Age&nbsp;&nbsp;</label>
				<div class="col-md-2">
					<input type="text" class="form-control"	value="0" id="age" readonly="readonly"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Physically Challenged<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<label class="radio-inline"> <input type="radio"
						name="phc" value="Y">Yes
					</label> <label class="radio-inline"> <input type="radio"
						name="phc" value="N">No
					</label>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Cast<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<label class="radio-inline"> <input type="radio"
						name="cast" value="ST">ST
					</label> <label class="radio-inline"> <input type="radio"
						name="cast" value="SC">SC
					</label>
					<label class="radio-inline"> <input type="radio"
						name="cast" value="OBC">OBC
					</label> <label class="radio-inline"> <input type="radio"
						name="cast" value="GEN">GEN
					</label>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Address Line 1<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="Appertment Number"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Address Line 2&nbsp;&nbsp;
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="Street"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					Address Line 3&nbsp;&nbsp;
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="Locality"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					PIN<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="Postal Code"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					District<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="District"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<label class="control-label col-md-3">
					State<span style="color: red;"> *</span>
				</label>
				<div class="col-md-7">
					<input type="text" class="form-control"	placeholder="State"></input>
				</div>
			</div>
			<div class="form-group col-xs-12 noPadding">
				<div class="col-md-2 col-md-offset-3">
					<button type="submit" class="btn btn-primary btn-block">Submit</button>
				</div>
			</div>
		</form>

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