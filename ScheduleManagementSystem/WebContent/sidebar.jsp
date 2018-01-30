<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
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
<style type="text/css">
<!--
body {
	align: center;
	font-size: 20px;
	font-family: Georgia;
	background-color: #99CC66;
}
-->
</style>

</head>
<body>

	<div class="jumbotron">
		<h1 style="font-family: Comic Sans MS; color: grey" align="center">Welcome
			To Schedule Events</h1>

	</div>
	<p align="center" style="font-family: Comic Sans MS">
		<a href="adminHome.jsp" target="_blank">Home</a>
	</p>
	<p align="center" style="font-family: Comic Sans MS">
		<a href="scheduleEvents.jsp" target="main">Schedule Events</a>
	</p>
	<p align="center" style="font-family: Comic Sans MS">
		<a href="view.jsp" target="main">View Events </a>
	</p>
	<p align="center" style="font-family: Comic Sans MS">
		<a href="cancelEvent.jsp" target="main">Cancel Events</a>
	</p>
	<p align="center" style="font-family: Comic Sans MS">
		<a href="updateEvent.jsp" target="main">Update Events</a>
	</p>
	<p>&nbsp;</p>

</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>