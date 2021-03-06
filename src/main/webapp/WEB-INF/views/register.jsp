<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
  <head>
    <jsp:include page="/WEB-INF/views/commons/csslinks.jsp" />
    <title>Register - Online Admission System</title>
    
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
  		<div class="col-xs-8 col-xs-offset-2 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 col-lg-4 col-lg-offset-4 loginMdl">
  			<p class="loginMdlMsg"><spring:message code="signup.msg"/></p>
  			       
				<form:form class="form-horizontal" role="form" method="post" id="form" modelAttribute="registerBean">
					 <c:if test="${not empty error}">
						<div class="alert alert-danger">
							<span class="glyphicon glyphicon-exclamation-sign row-lg-10" aria-hidden="true"> Please correct below errors</span>
								<%-- <spring:hasBindErrors name="reisterBean">
								<c:forEach var="error" items="${errors.allErrors}">
									<b><spring:message message="${error}" /></b>
									<br />
								</c:forEach>
								</spring:hasBindErrors> --%>
								
									<c:set var="phoneHasBindErrors">
										<form:errors path="phone"/>
									</c:set>
									<c:set var="emailHasBindErrors">
										<form:errors path="email"/>
									</c:set>
									<c:set var="nameHasBindErrors">
										<form:errors path="name"/>
									</c:set>
								
								
						</div>
					</c:if>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="form-group ${not empty emailHasBindErrors?"has-error":""}">
						<form:label path="email" class="control-label col-md-2">Email:
						</form:label>
						<div class="col-md-10">
							<form:input type="email" class="form-control" path="email" id="email" placeholder="Enter email" />
							<form:errors path="email" class="alert-danger"/>
						</div>
					</div>
					<div class="form-group ${not empty nameHasBindErrors?"has-error":""}">
						<form:label path="name" class="control-label col-md-2">Name:
						</form:label>
						<div class="col-md-10">
							<form:input type="text" class="form-control" path="name"	placeholder="Enter Name"></form:input>
							<form:errors path="name" class="alert-danger"/>
						</div>
					</div>
					<div class="form-group ${not empty phoneHasBindErrors?"has-error":""}">
						<form:label path="phone" class="control-label col-md-2">Mobile:
						</form:label>
						<div class="col-md-10">
							<form:input type="text" cssClass="form-control" path="phone" placeholder="Enter Mobile No." cssErrorClass="form-control"></form:input>
							<form:errors path="phone" class="alert-danger"/>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-2">
						</div>
						<div class="col-md-10">
							<button type="submit" class="btn btn-primary btn-block" onclick="return validate()">Submit</button>
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-2">
						</div>
						<div class="col-md-10">
							<a class="btn btn-success btn-block" href="<c:url value='login'/>">Already Registered? Click here</a>
						</div>
					</div>
				</form:form>

			</div>
  	</div>
  </div>
  
	<jsp:include page="/WEB-INF/views/commons/jslinks.jsp" />
	<script type="text/javascript">
	function validate(){
		alert($('#email').val());
		return false;
	}
	
	</script>
  </body>
</html>
