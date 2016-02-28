<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Spring 4 MVC File Multi Upload Example</title>
    <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet" type="text/css"></link>
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet" type="text/css"></link>
</head>
<body> 
 
    <div class="form-container">
        <div class="success">
            <c:forEach var="fileName" items="${fileNames}">
                File  <strong>${fileName}</strong> uploaded successfully<br/>
            </c:forEach>
            <br/>
        <a href="<c:url value='/welcome' />">Home</a>
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
</body>
</html>