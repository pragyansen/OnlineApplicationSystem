<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<header class="main-header" style="z-index: 100"> <!-- Logo --> <a
			href="home" class="logo"><b>DB</b>Tool</a>

		<!-- Header Navbar --> <nav class="navbar navbar-static-top"
			role="navigation"> <!-- Sidebar toggle button--> <a href="#"
			class="sidebar-toggle" data-toggle="offcanvas" role="button"> <span
			class="sr-only">Toggle navigation</span>
		</a> <!-- Navbar Right Menu -->
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
			<li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" onclick="demo()">
                  <i class="fa fa-question-circle fa-1x">Help</i>
                </a>
              </li>
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <i class="fa fa-user fa-1x">Hello, </i>
                </a>
                <ul class="dropdown-menu" style="width: 20px">
                	<li class="header"><a href="<c:url value="j_spring_security_logout" />">
						<span class="hidden-xs"><i class="fa fa-sign-out fa-1x">Log Out</i></span>
					</a> </li>
				</li>
                </ul>
              </li>
			</ul>
		</div>
		</nav> 
		</header>