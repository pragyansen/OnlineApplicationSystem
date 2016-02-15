<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
  <head>
    <jsp:include page="/WEB-INF/views/commons/csslinks.jsp" />

<style>
	.error {
		padding: 15px;
		margin-bottom: 20px;
		border: 1px solid transparent;
		border-radius: 4px;
		color: #a94442;
		background-color: #f2dede;
		border-color: #ebccd1;
	}
	
	.msg {
		padding: 15px;
		margin-bottom: 20px;
		border: 1px solid transparent;
		border-radius: 4px;
		color: #31708f;
		background-color: #d9edf7;
		border-color: #bce8f1;
	}
</style>
</head>
  <body class="hold-transition login-page"  onload='document.loginForm.username.focus();'>
    <div class="login-box">
      <div class="login-logo">
        <a href="resources/index2.html"><b><spring:message code="login.appname.first"/></b><spring:message code="login.appname.second"/></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg"><spring:message code="login.msg"/></p>
        
        <c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
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
            <div class="col-xs-8">
              <div class="checkbox icheck">
                <label>
                  <input type="checkbox" name="rememberme"> <spring:message code="login.chk.rememberme"/>
                </label>
                
              </div>
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat"><spring:message code="login.button.msg"/></button>
            </div><!-- /.col -->
          </div>
        </form>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

	<jsp:include page="/WEB-INF/views/commons/jslinks.jsp" />
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
