<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>

<head>
<title>Admin Control Panel</title>

<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
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
			<div class="col-xs-3 h4" style="text-align: right">
				<a href="../login?logout">Log Out</a>
			</div>
		</div>

		<div
			class="col-xs-10 col-xs-offset-1 col-md-8 col-md-offset-2 loginMdl">

			<div class="row">
				<div
					class="col-xs-12 text-center loginMdlMsg">
					Admin Control Panel</div>
			</div>
			

			
			</div>
		</div>
		
		
</body>
</html>