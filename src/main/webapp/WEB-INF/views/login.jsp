<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html ng-app="loginApp">
  <head>
    <jsp:include page="/WEB-INF/views/commons/csslinks.jsp" />
    <jsp:include page="/WEB-INF/views/commons/jslinks.jsp" />
</head>
  <body onload='document.loginForm.username.focus();'>
  <div class="col-xs-12 noMargin noPadding" ng-controller="loginControler">
  	<div class="col-xs-12 header">
  		<a href="resources/index2.html" class="customanchor">
  			<span class="glyphicon glyphicon-education" aria-hidden="true"></span>
  			<b><spring:message code="login.appname.first"/></b>
  			<spring:message code="login.appname.second"/>
  		</a>
  	</div>
  	<div class="col-xs-12 noPadding"  ng-show="signInFlag">
  		<div class="col-md-6 col-md-offset-3 loginMdl">
        <p class="loginMdlMsg"><spring:message code="login.msg"/></p>
        
        <c:if test="${not empty error}">
			<div class="alert alert-danger">
				<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
				${error}
			</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="alert alert-info">
				<span class="glyphicon glyphicon-ok-circle" aria-hidden="true"></span>
				${msg}
			</div>
		</c:if>
		
	    <form name="loginForm" action="<c:url value='j_spring_security_check' />" method="post">
           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          <div class="form-group has-feedback">
            <input type="text" class="form-control" placeholder="<spring:message code="login.input.user"/>" name="username">
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" placeholder="<spring:message code="login.input.pass"/>" name="password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-md-8">
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox" name="rememberme"> <spring:message code="login.chk.rememberme"/>
                </label>
                
              </div>
            </div>
            <div class="col-md-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat"><spring:message code="login.button.msg"/></button>
            </div>
            <div class="col-md-12">
              <button type="button" class="btn btn-success btn-block btn-flat" ng-click="showSignUpMdl()">Sign up if you are a new user</button>
            </div>
          </div>
        </form>	
		
  		</div>
  	</div>
  	<div class="col-xs-12 noPadding"  ng-show="!signInFlag">
  		<div class="col-md-8 col-md-offset-2 loginMdl">
  			<p class="loginMdlMsg"><spring:message code="signup.msg"/></p>
				<form class="form-horizontal" role="form">
					<div class="form-group">
						<label class="control-label col-md-2 noPadding">Email:</label>
						<div class="col-md-10">
							<input type="email" class="form-control" name="email"	placeholder="Enter email">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 noPadding">Name:</label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="name"	placeholder="Enter Name">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-2 noPadding">Mobile:</label>
						<div class="col-md-10">
							<input type="text" class="form-control" name="mobile"	placeholder="Enter Mobile No.">
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-2 col-md-3">
							<button type="submit" class="btn btn-success">Submit</button>
						</div>
						<div class="col-md-offset-2 col-md-3">
							<button type="submit" class="btn btn-success" ng-click="showSignIn()">Already Register</button>
						</div>
					</div>
				</form>

			</div>
  	</div>
  </div>
  
	
  </body>
</html>
