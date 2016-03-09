<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<title>Educational Details</title>
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
  		
		<div class="col-xs-12 altFormModel">
		<form:form class="form-horizontal" role="form" method="post" id="educationalDetailsform" modelAttribute="personalBean">
				<div class="col-md-6">
					<div class="form-group col-xs-12 h3">10+2 Details</div>
					<div class="form-group col-xs-12 noPadding">
						<form:label path="fatherName" class="control-form:label col-md-3">
					Name of the Institution<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-9">
							<form:input path="fatherName" type="text" class="form-control"
								placeholder="XYZ School, Kolkata" />
						</div>
					</div>

					<div class="form-group col-xs-12 noPadding">
						<form:label path="fatherName" class="control-form:label col-md-3">
					Year of Passing<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-3">
							<form:input path="fatherName" type="text" class="form-control"
								placeholder="2016" />
						</div>
					</div>

					<div class="form-group col-xs-12 h4">Enter marks obtained for
						individual subjects</div>

					<c:forEach var="i" begin="1" end="5" step="1" varStatus="status">
						<div class="form-group col-xs-12 noPadding">
							<form:label path="fatherName"
								class="control-form:label col-md-3 sr-only">
				Subject 1<span style="color: red;"> *</span>
							</form:label>
							<div class="col-xs-3">
								<select class="form-control">
									<option>Bengali</option>
									<option>English</option>
									<option>Maths</option>
									<option>Physics</option>
									<option>Chemistry</option>
								</select>
							</div>
							<div class="col-xs-3">
								<form:input path="fatherName" type="text" class="form-control"
									placeholder="80" />
							</div>
						</div>
					</c:forEach>
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="fatherName" class="control-form:label col-md-3">
					Total Marks Obtained<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-3">
							<form:input path="fatherName" type="text" class="form-control"
								placeholder="400" />
						</div>
					</div>

				</div>
				
				
				<div class="col-md-6">
					<div class="form-group col-xs-12 h3">10 Details</div>
					<div class="form-group col-xs-12 noPadding">
						<form:label path="fatherName" class="control-form:label col-md-3">
					Name of the Institution<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-9">
							<form:input path="fatherName" type="text" class="form-control"
								placeholder="XYZ School, Kolkata" />
						</div>
					</div>

					<div class="form-group col-xs-12 noPadding">
						<form:label path="fatherName" class="control-form:label col-md-3">
					Year of Passing<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-3">
							<form:input path="fatherName" type="text" class="form-control"
								placeholder="2016" />
						</div>
					</div>					
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="fatherName" class="control-form:label col-md-3">
					Total Marks Obtained<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-3">
							<form:input path="fatherName" type="text" class="form-control"
								placeholder="400" />
						</div>
					</div>

				</div>






				<div class="form-group col-xs-12 noPadding">
					<div class="col-md-2 col-md-offset-3">
						<button type="submit" class="btn btn-primary btn-block">Submit</button>
					</div>
					<div class="col-md-2 col-md-offset-1">
						<button type="button" class="btn btn-success btn-block">Back to Dashboard</button>
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