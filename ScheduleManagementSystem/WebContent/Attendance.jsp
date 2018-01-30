<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background: #59ABE3;
}

h2 {
	margin: 3px 0;
	padding: 2cm;
	font-family: Comic Sans MS;
	color: #78788c;
	border-bottom: 3px solid #78788c
}

input {
	font-family: Comic Sans MS;
}

button:hover {
	background: #78788c;
	color: #fff
}

.form-group {
	color: black;
	font-family: Comic Sans MS;
	font-size: 25px;
}
</style>
</head>
<body>
	<div class="text-center">

		<h2>Attending Event or not click on YES or NO button</h2>
		
		<div class="container">
		<% 
			String eventId = request.getParameter("eventId");
		%>
			<form action="AttendanceCheck?eventId=<%=eventId%>" method="Post">
				<div class="form-group">
					<label for="inputdefault">Event ID</label> <input
						class="form-control" id="eventId" type="text">
				</div>
				<div class="form-group">
					<input type="radio"  data-toggle="collapse"
						data-target="#demo" value="yes" name="ATD" required><h1 style="color:Green" >Attending</h1>  
				<input type="radio"  data-toggle="collapse"
						data-target="#demo1" value="no" name="ATD" required><h1 style="color:Red">Not Attending</h1> <br> <br>
					<br>
					<input type="submit" class="btn-btn-success"value="Submit">
					<div id="demo" class="collapse">THANKYOU FOR YOUR REPLY</div>
				</div>
				</form>
		</div>
	</div>

</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>
