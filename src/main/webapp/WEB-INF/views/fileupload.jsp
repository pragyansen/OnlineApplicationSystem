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
 
 <jsp:include page="header.jsp"/>
  	
  	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">
    <div class="row form-container">
        
    
        <div class = "col-xs-12 text-center"><h2>Photo & Signature Upload</h2></div>
        <form:form method="POST" modelAttribute="multifile" enctype="multipart/form-data" class="form-horizontal" action="fileupload?${_csrf.parameterName}=${_csrf.token}">
	        <div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2">    
	            <div class="col-md-6" style="margin-top:10px">
	                <form:input type="file" path="photo.file" id="photo.file" class="form-control input-sm" style="min-height:42px"/>
	                <div class="has-error">
	                    <form:errors path="photo.file" class="help-inline"/>
	                </div>
	            </div>    
	            <div class="col-md-6" style="margin-top:10px">
	                 <form:input type="file" path="sign.file" class="form-control input-sm" style="min-height:42px"/>
	                <div class="has-error">
	                    <form:errors path="sign.file" class="help-inline"/>
	                </div>
	            </div>
            </div>
            <div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2">
	            <div class="col-md-4 col-md-offset-2" style="margin-top:10px">
	                <div class="form-actions floatRight">
	                    <input type="submit" value="Upload" class="btn btn-primary btn-block">
	                </div>
	            </div>
	            <div class="col-md-4" style="margin-top:10px">
	            <button type="button" class="btn btn-success btn-block" onclick="window.location.href='../dashboard/' ">Cancel</button>
	        	</div>
        	</div>
        	
        	<div class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 success" style="padding-top:30px">
            <c:forEach var="fileName" items="${fileNames}">
                File  <strong>${fileName}</strong> uploaded successfully<br/>
            </c:forEach>        	
    	</div>
        	
        </form:form>
        
    </div>
    
    <div class="row">
	    <div class="col-xs-5 col-md-3 col-md-offset-3 paddedbox"><img src="getFile/getImage/photo" alt="car_image"/></div>
	    <div class="col-xs-5 col-md-3 paddedbox"><img src="getFile/getImage/sign" alt="car_image"/></div>
    </div>
    </div>
    </div>
</body>
</html>