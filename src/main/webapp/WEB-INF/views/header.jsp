<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
	
</head>
<body>
	<div class="col-xs-12 header">
		<div class="col-xs-9">
			<a href="../dashboard/" class="customanchor"> <span
				class="glyphicon glyphicon-education" aria-hidden="true"></span> <b><spring:message
						code="login.appname.first" /></b> <spring:message
					code="login.appname.second" />
			</a>
		</div>
		<div class="col-xs-3 h4"  style="text-align:right">
			<a href="../login?logout">Log Out</a>
		</div>
  	</div>
</body>
</html>