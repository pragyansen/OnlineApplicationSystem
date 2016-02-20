<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
  <head>
    <jsp:include page="/WEB-INF/views/commons/csslinks.jsp" />
    
</head>
  <body onload='document.loginForm.username.focus();'>
  <div class="col-xs-12 noMargin noPadding">
  	<div class="col-xs-12 header">
  		<a href="resources/index2.html" class="customanchor">
  			<span class="glyphicon glyphicon-education" aria-hidden="true"></span>
  			<b><spring:message code="login.appname.first"/></b>
  			<spring:message code="login.appname.second"/>
  		</a>
  	</div>
  	
  	<div class="col-xs-12 noPadding">
  		<div class="col-md-8 col-md-offset-2 col-lg-3 col-lg-offset-8 loginMdl">
  			<p class="loginMdlMsg"><spring:message code="signup.msg"/></p>
  			       
				<form:form class="form-horizontal" role="form" method="post" id="form" modelAttribute="registerBean">
					 <c:if test="${not empty error}">
						<div class="alert alert-danger">
							<span class="glyphicon glyphicon-exclamation-sign row-lg-10" aria-hidden="true"><form:errors path="email"/></span>
							<span class="glyphicon glyphicon-exclamation-sign row-lg-10" aria-hidden="true"><form:errors path="name"/></span>
							<span class="glyphicon glyphicon-exclamation-sign row-lg-10" aria-hidden="true"><form:errors path="phone"/></span>
						</div>
					</c:if>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="form-group">
						<form:label path="email" class="control-label col-md-2 noPadding">Email:
						</form:label>
						<div class="col-md-10">
							<form:input type="email" class="form-control" path="email"	placeholder="Enter email" />
						</div>
					</div>
					<div class="form-group">
						<form:label path="name" class="control-label col-md-2 noPadding">Name:
						</form:label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="name"	placeholder="Enter Name">
						</div>
					</div>
					<div class="form-group">
						<form:label path="phone" class="control-label col-md-2 noPadding">Mobile:
						</form:label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="phone" placeholder="Enter Mobile No.">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-2 col-md-3">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
						<div class="col-md-offset-2 col-md-3 col-lg-4 col-lg-offset-1">
							<a class="btn btn-success" href="<c:url value='login'/>">Already Registerd? Click here</a>
						</div>
					</div>
				</form:form>

			</div>
  	</div>
  </div>
  
	<jsp:include page="/WEB-INF/views/commons/jslinks.jsp" />
  </body>
</html>
