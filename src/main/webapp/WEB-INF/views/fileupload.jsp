<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
 
<head>
    <title>Spring 4 MVC File Multi Upload Example</title>
    
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- Bootstrap 3.3.2 -->
	<link href="../resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="../resources/bootstrap/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body> 
 <div class="noMargin noPadding">
 
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
  	
    <div class="form-container">
        <div class="success">
            <c:forEach var="fileName" items="${fileNames}">
                File  <strong>${fileName}</strong> uploaded successfully<br/>
            </c:forEach>
            <br/>
        <a href="<c:url value='/dashboard/' />">Home</a>
    </div>
    
        <h1>Spring 4 MVC Multi File Upload Example </h1>
        <form:form method="POST" modelAttribute="multifile" enctype="multipart/form-data" class="form-horizontal" action="fileUpload?${_csrf.parameterName}=${_csrf.token}">
            <c:forEach var="v" varStatus="vs" items="${multifile.files}">
                <form:input type="file" path="files[${vs.index}].file" id="files[${vs.index}].file" class="form-control input-sm"/>
                <div class="has-error">
                    <form:errors path="files[${vs.index}].file" class="help-inline"/>
                </div>
            </c:forEach>
            <br/>
            <div class="row">
                <div class="form-actions floatRight">
                    <input type="submit" value="Upload" class="btn btn-primary btn-sm">
                </div>
            </div>
        </form:form>
         
        <br/>
        <a href="<c:url value='/welcome' />">Home</a>
    </div>
    
    
    <img src="http://localhost:8080/online-application/getFile/getImage/photo" alt="car_image"/>
    <img src="http://localhost:8080/online-application/getFile/getImage/sign" alt="car_image"/>
    </div>
</body>
</html>