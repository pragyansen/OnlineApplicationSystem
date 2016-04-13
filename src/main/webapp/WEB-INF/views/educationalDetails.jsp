<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<title>Educational Details - Online Admission System</title>
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
		<form:form class="form-horizontal" role="form" method="post" id="educationalDetailsform" modelAttribute="educationalBean">
				
<!-- 				<div class="col-md-12"> -->
					<div class="form-group col-xs-12 h3">10 Details</div>
					<div class="form-group col-xs-12 noPadding">
						<form:label path="institution10" class="control-form:label col-md-3">
					Name of the Institution<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="institution10" path="institution10" type="text" class="form-control"
								placeholder="XYZ School, Kolkata" />
						</div>
					</div>

					<div class="form-group col-xs-12 noPadding">
						<form:label path="board10" class="control-form:label col-md-3">
					Board<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:select class="form-control" id="board10" path="board10">
								<option value="WBBSE">WBSSE</option>
								<option value="ISC">ISC</option>
								<option value="CBSE">CBSE</option>
								<option>Other</option>
							</form:select>
						</div>
					</div>
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="yearOfPassing10" class="control-form:label col-md-3">
					Year of Passing<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="yearOfPassing10" path="yearOfPassing10" type="number" onkeypress="return isNumberKey(event)" class="form-control"
								placeholder="2016" />
						</div>
					</div>					
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="Marks10" class="control-form:label col-md-3">
					Marks Obtained<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="marks10" path="Marks10" type="text" class="form-control marks-group-10"
								placeholder="400" />
						</div>
					</div>
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="totalMarks10" class="control-form:label col-md-3">
					Total Marks<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="totalMarks10" path="totalMarks10" type="text" class="form-control marks-group-10"
								placeholder="400" />
						</div>
					</div>
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="percentage10" class="control-form:label col-md-3">
					Percentage<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="percentage10" readonly="true" path="percentage10" type="text" class="form-control"
								/>
						</div>
					</div>

<!-- 				</div> -->
				
<!-- 				<div class="col-md-12"> -->
					<div class="form-group col-xs-12 h3">10+2 Details</div>
					<div class="form-group col-xs-12 noPadding">
						<form:label path="institution12" class="control-form:label col-md-3">
					Name of the Institution<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="institution12" path="institution12" type="text" class="form-control"
								placeholder="XYZ School, Kolkata" />
						</div>
					</div>

					<div class="form-group col-xs-12 noPadding">
						<form:label path="board12" class="control-form:label col-md-3">
					Board<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:select class="form-control" id="board12" path="board12">
								<option value="WBCHSE">WBCHSE</option>
								<option value="ISC">ISC</option>
								<option value="CBSE">CBSE</option>
								<option>Other</option>
							</form:select>
						</div>
					</div>

					<div class="form-group col-xs-12 noPadding">
						<form:label path="yearOfPassing12" class="control-form:label col-md-3">
					Year of Passing<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="yearOfPassing12" path="yearOfPassing12" type="number" onkeypress="return isNumberKey(event)" class="form-control"
								placeholder="2016" />
						</div>
					</div>
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="Marks12" class="control-form:label col-md-3">
					Marks Obtained<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="marks12" path="Marks12" type="text" class="form-control marks-group-12"
								placeholder="400" />
						</div>
					</div>
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="totalMarks12" class="control-form:label col-md-3">
					Total Marks<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input id="totalMarks12" path="totalMarks12" type="text" class="form-control marks-group-12"
								placeholder="400" />
						</div>
					</div>
					
					<div class="form-group col-xs-12 noPadding">
						<form:label path="percentage12" class="control-form:label col-md-3">
					Percentage<span style="color: red;"> *</span>
						</form:label>
						<div class="col-md-7">
							<form:input readonly="true" id="percentage12" path="percentage12" type="text" class="form-control"
								/>
						</div>
					</div>

					<div class="form-group col-xs-12 h4">Enter marks obtained and total marks for
						individual subjects</div>

						<div class="form-group col-xs-12 noPadding">
							<form:label path="subject1marks"
								class="control-form:label col-md-3 sr-only">
				Subject<span style="color: red;"> *</span>
							</form:label>
							<div class="col-xs-11 col-md-3">
								<form:select id="subject1code" path="subject1code" class="form-control subjects" >
									<form:option value="0" disabled="true" selected="true">Subject</form:option>
									<form:options items="${subjects}" itemValue="subjectCode" itemLabel="subjectName"/>
								</form:select>
							</div>
							<div class="col-xs-5 col-md-2">
								<form:input id="subject1marks" path="subject1marks" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Obtained" />
							</div>
							<div class="col-xs-6 col-md-2">
							<form:input id="subject1total" path="subject1total" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Out Of"/>
							</div>
						</div>
						
						<div class="form-group col-xs-12 noPadding">
							<form:label path="subject2marks"
								class="control-form:label col-md-3 sr-only">
				Subject<span style="color: red;"> *</span>
							</form:label>
							<div class="col-xs-11 col-md-3">
								<form:select path="subject2code" class="form-control subjects" >
									<form:option value="0" disabled="true" selected="true">Subject</form:option>
									<form:options items="${subjects}" itemValue="subjectCode" itemLabel="subjectName"/>
								</form:select>
							</div>
							<div class="col-xs-5 col-md-2">
								<form:input path="subject2marks" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Obtained" />
							</div>
							<div class="col-xs-6 col-md-2">
							<form:input path="subject2total" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Out Of"/>
							</div>
						</div>
						
						<div class="form-group col-xs-12 noPadding">
							<form:label path="subject3marks"
								class="control-form:label col-md-3 sr-only">
				Subject<span style="color: red;"> *</span>
							</form:label>
							<div class="col-xs-11 col-md-3">
								<form:select path="subject3code" class="form-control subjects" >
									<form:option value="0" disabled="true" selected="true">Subject</form:option>
									<form:options items="${subjects}" itemValue="subjectCode" itemLabel="subjectName"/>
								</form:select>
							</div>
							<div class="col-xs-5 col-md-2">
								<form:input path="subject3marks" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Obtained" />
							</div>
							<div class="col-xs-6 col-md-2">
							<form:input path="subject3total" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Out Of"/>
							</div>
						</div>
						
						<div class="form-group col-xs-12 noPadding">
							<form:label path="subject4marks"
								class="control-form:label col-md-3 sr-only">
				Subject<span style="color: red;"> *</span>
							</form:label>
							<div class="col-xs-11 col-md-3">
								<form:select path="subject4code" class="form-control subjects" >
									<form:option value="0" disabled="true" selected="true">Subject</form:option>
									<form:options items="${subjects}" itemValue="subjectCode" itemLabel="subjectName"/>
								</form:select>
							</div>
							<div class="col-xs-5 col-md-2">
								<form:input path="subject4marks" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Obtained" />
							</div>
							<div class="col-xs-6 col-md-2">
							<form:input path="subject4total" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Out Of"/>
							</div>
						</div>
						
						<div class="form-group col-xs-12 noPadding">
							<form:label path="subject5marks"
								class="control-form:label col-md-3 sr-only">
				Subject<span style="color: red;"> *</span>
							</form:label>
							<div class="col-xs-11 col-md-3">
								<form:select path="subject5code" class="form-control subjects" >
									<form:option value="0" disabled="true" selected="true">Subject</form:option>
									<form:options items="${subjects}" itemValue="subjectCode" itemLabel="subjectName"/>
								</form:select>
							</div>
							<div class="col-xs-5 col-md-2">
								<form:input path="subject5marks" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Obtained" />
							</div>
							<div class="col-xs-6 col-md-2">
							<form:input path="subject5total" type="number" class="form-control" onkeypress="return isNumberKey(event)"
									placeholder="Out Of"/>
							</div>
						</div>

<!-- 				</div> -->
				
				<div class="form-group col-xs-12">
					<div class="col-xs-5 col-md-3">
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
	<script src="../resources/bootstrap/js/educationalDetailsapp.js" type="text/javascript"></script>
</body>
</html>