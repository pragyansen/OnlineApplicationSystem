<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
  <head>
    <jsp:include page="/WEB-INF/views/commons/csslinks.jsp" />
    <link href="resources/plugins/iCheck/all.css" rel="stylesheet" type="text/css" />
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
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
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
            <div class="col-md-4 form-group">
              <button type="submit" class="btn btn-primary btn-block btn-flat"><spring:message code="login.button.msg"/></button>
            </div>
            <div class="col-md-12 form-group">
              <a type="button" class="btn btn-success btn-block btn-flat" href="<c:url value='register' />">Sign up if you are a new user</a>
            </div>
            <div class="col-md-12 form-group">
              <button type="button" class="btn btn-info btn-block btn-flat" id="forgrtPassBtn">Forgot Password ? </button>
            </div>
            <div class="col-md-12 noPadding" id="forgrtPassDiv">
	        <div class="col-md-12 form-group">
	            <input type="text" class="form-control" placeholder="Enter email or mobile no."/>
          	</div>
          	<div class="col-md-6 form-group">
              <button type="button" class="btn btn-primary btn-block btn-flat" id="forgrtPassBtn">Submit</button>
            </div>
            </div>
          </div>
        </form>	
		
  		</div>
  	</div>
  	
  </div>
  
	<jsp:include page="/WEB-INF/views/commons/jslinks.jsp" />
	<script	src="resources/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
	    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>
