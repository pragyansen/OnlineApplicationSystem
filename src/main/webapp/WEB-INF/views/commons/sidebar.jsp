<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,org.springframework.security.core.GrantedAuthority,org.springframework.security.core.authority.SimpleGrantedAuthority,org.springframework.security.core.context.SecurityContextHolder" %>
<aside class="main-sidebar" style="z-index: 99">

        <section class="sidebar">
          <ul class="sidebar-menu">
            <li class="header">MENU</li>
            <!-- Optionally, you can add icons to the links -->
            <li><a href="home"><span>Update DB</span></a></li>
            <!-- <li><a href="#"><span>View Sessions</span></a></li> -->
            <li><a href="history"><span>History</span></a></li>
            <%
            Collection<? extends GrantedAuthority> authorities = SecurityContextHolder.getContext().getAuthentication().getAuthorities();
    		boolean authorized = authorities.contains(new SimpleGrantedAuthority("ROLE_ADMIN"));
    		if(authorized){ %>
            <li><a href="addQuery"><span>Add Query</span></a></li>
    			
    	<%	} else{ %>
    		<li><a href="#"><span>Add Query</span></a></li>
    	<%}
             %>
          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>