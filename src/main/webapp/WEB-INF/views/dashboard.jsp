<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>
<jsp:include page="/WEB-INF/views/commons/csslinks.jsp" />
<title>Student Dashboard</title>

<style type="text/css">
.header{
	color: White;
	font-size: 30px;
	min-height: 75px;
	min-width: 600px;
	background-color: #0070BA;
	padding-top: 15px;
	padding-left: 20px;
}

.noPadding{
	padding: 0px;
}

.noMargin{
	margin: 0px;
}

.box{
min-height : 150px;
margin-top : 50px;
text-align : center;
padding-top : 50px;
font-size: 20px;
}

.infoArea{
min-height : 100px;
margin-top : 50px;
text-align : left;
padding-top : 30px;
font-size: 20px;
color: #444444;
background-color: RGBA(30, 194, 44, 0.52);
}

.notesArea{
min-height : 80px;
margin-top : 50px;
text-align : left;
padding-top : 20px;
font-size: 18px;
color: #444444;
background-color: #DDDDDD;
}
.row{
min-width: 600px;
}

</style>
</head>
<body>
<div class="noMargin noPadding">
	
	<div class="col-xs-12 header">
  		<p>Online Application</p>
  	</div>
  	
  	<div class="col-xs-8 col-xs-offset-2">
	  	
	  	<div class="row">
		  	<div class = "col-xs-12 infoArea">Once you apply for a course, it's status will appear here</div>
		  	
	  	</div>
	  		  	
	  	<div class="row">
		  	<div class="col-xs-4">
		  	<div class = "col-xs-10 col-xs-offset-1 box btn btn-primary">A. Enter Basic<p>Details</div>
		  	</div>
		  	<div class="col-xs-4">
		  	<div class = "col-xs-10 col-xs-offset-1 box btn btn-primary">B. Enter Educational<p>Details</div>
		  	</div>
		  	<div class="col-xs-4">
		  	<div class = "col-xs-10 col-xs-offset-1 box btn btn-primary">C. Apply for a Course</div>
		  	</div>
	  	</div>
	  	
	  	<div class="row">
		  	<div class = "col-xs-10 col-xs-offset-1 notesArea">
		  		<span style="color:red">Important :</span> A and B will be disabled after you apply for your first course.
			</div>
		  	
	  	</div>
	  	
  	</div>
</div>
</body>
</html>