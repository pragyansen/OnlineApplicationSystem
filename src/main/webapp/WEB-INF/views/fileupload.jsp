<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
 
<head>
    <title>Photo & Signature Upload</title>
    
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
	<style type="text/css">
			
		.noPadding {
			padding: 0px;
		}
		
		.noMargin {
			margin: 0px;
		}
		
		a, a:hover {
			text-decoration : none;
			color: inherit;
		}
		
		
		.mainContainer {
			
		}
		
		.header {
			color: White;
			font-size: 30px;
			min-height: 75px;
			background-color: #0070BA;
			padding-top: 15px;
			padding-left: 20px;
		}
		
		.loginMdl {
			margin-top: 20px;
		/* 	border: 2px solid white; */
			border-radius: 15px;
			background-color: #DDDDDD;
			padding-top: 20px;
			padding-bottom: 20px;
		}
		
		.loginMdlMsg {
			font-size: 20px;
			font-weight: bold;
			text-align: center;
		}
		
		
		.formModel{
			background-color: #DDDDDD;
			padding-top: 25px;
			padding-bottom: 20px;
		}
		
		.dashboard-box{
			min-height : 120px;
			margin-top : 50px;
			text-align : center;
			padding-top : 35px;
			padding-left : 10px;
			padding-right : 10px;
			font-size: 20px;
			border-radius: 10px;
		}
		
		.dashboard-infoBox{
			min-height : 80px;
			margin-top : 50px;
			text-align : left;
			padding-top : 20px;
			font-size: 18px;
			color: #444444;
			border-radius: 5px;
		}
		
	</style>
	
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
  	
  	<div class="col-xs-10 col-xs-offset-1 loginMdl">
    <div class="form-container">
        <div class="success">
            <c:forEach var="fileName" items="${fileNames}">
                File  <strong>${fileName}</strong> uploaded successfully<br/>
            </c:forEach>
            <br/>
        <div class="btn btn-success"><a href="../dashboard/">Back to Dashboard</a></div>
    </div>
    
        <h2>Photo & Signature Upload</h2>
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
    </div>
    
    
    <img src="http://localhost:8080/online-application/getFile/getImage/photo" alt="car_image"/>
    <img src="http://localhost:8080/online-application/getFile/getImage/sign" alt="car_image"/>
    </div>
    </div>
</body>
</html>