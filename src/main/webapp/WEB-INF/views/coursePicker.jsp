<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
	<title>Apply for a Course - Online Admission System</title>
	<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Bootstrap 3.3.2 -->
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="../resources/bootstrap/css/style.css" rel="stylesheet" type="text/css" />
	
		<!-- jQuery 2.1.3 -->
	<script	src="../resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script	src="../resources/plugins/jQueryUI/jquery-ui.min.js"></script>
	
			
	<title>Pick a Course : Online Admission System</title>

</head>

<body>
	<div class="noMargin noPadding">

		<jsp:include page="header.jsp"/>
		
	</div>
	
	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">

			<h2 id="label1" style="text-align:center">Course Selection</h2>
			<br>
			<h4 style="margin:15px">Based on your qualification, you are eligible for the following courses:</h4>
			
			<form:form method="post" modelAttribute="courseDetails">

				<c:forEach var="v" varStatus="vs" items="${courseList}">
					<form:label path="courseCodes[${vs.index}]" class="control-form:label col-md-3 sr-only">Subject</form:label>
					<div class="col-md-7 h4 bg-info">
						<form:checkbox class="courses" style="margin:10px" path="courseCodes[${vs.index}]" value="${courseList[vs.index].courseCode}" label="${courseList[vs.index].courseName}"/>
					</div>
				
			</c:forEach>
			
			<div class="form-group col-xs-12">
				<div class="col-md-3">
					<button type="submit" class="btn btn-primary btn-block" style="margin-top:20px" onclick="return validate()">Submit</button>
				</div>
				<div class="col-md-3">
					<button type="button" class="btn btn-success btn-block" style="margin-top:20px" onclick="window.location.href='../dashboard/' ">Cancel</button>
				</div>
			</div>
				
			</form:form>
			
		</div>
		
		<script>
		function validate()
		{
			var courses = document.getElementsByClassName("courses");
			var len = courses.length;
			var flag = false;
			for(var i = 0 ; i < len ; i++)
			{
				if(courses[i].checked == true)
					flag = true;
			}
			if(flag==false)
				alert('Pick at least one course');
			return flag;
		}
		</script>		

</body>


</html>