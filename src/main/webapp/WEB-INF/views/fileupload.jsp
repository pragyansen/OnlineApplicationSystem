<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
 
<head>
    <title>Photo & Signature Upload - Online Admission System</title>
    
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
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
  	
  	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">
    <div class="row form-container">
        <div class="success">
            <c:forEach var="fileName" items="${fileNames}">
                File  <strong>${fileName}</strong> uploaded successfully<br/>
            </c:forEach>        	
    	</div>
    
        <h2>  Photo & Signature Upload</h2>
        <form:form method="POST" modelAttribute="multifile" enctype="multipart/form-data" class="form-horizontal" action="fileupload?${_csrf.parameterName}=${_csrf.token}">
            <div class="col-xs-6 col-md-3 style="padding-bottom:20px">
                <form:input type="file" path="photo.file" id="photo.file" class="form-control input-sm" style="min-height:42px"/>
                <div class="has-error">
                    <form:errors path="photo.file" class="help-inline"/>
                </div>
            </div>    
            <div class="col-xs-6 col-md-3" style="padding-bottom:20px">
                 <form:input type="file" path="sign.file" class="form-control input-sm" style="min-height:42px"/>
                <div class="has-error">
                    <form:errors path="sign.file" class="help-inline"/>
                </div>
            </div>
            <div class="col-xs-5 col-md-2">
                <div class="form-actions floatRight">
                    <input type="submit" value="Upload" class="btn btn-primary btn-block">
                </div>
            </div>
            <div class="col-xs-6 col-md-3">
            <button type="button" class="btn btn-success btn-block" onclick="window.location.href='../dashboard/' ">Back to Dashboard</button>
        	</div>
        	
        </form:form>
        
    </div>
    
    <div class="row">
	    <div class="col-xs-5 col-md-3 paddedbox"><img src="getFile/getImage/photo" alt="car_image"/></div>
	    <div class="col-xs-5 col-md-3 paddedbox"><img src="getFile/getImage/sign" alt="car_image"/></div>
    </div>
    </div>
    </div>
</body>
</html>