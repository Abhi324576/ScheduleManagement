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
<script type="text/javascript">
	function abc() {
		window.history.back();
	}
</script>
</head>
<body>
	<center>
		<h1 align="center" style="color: red;">Site Under Maintainance</h1>
		<br>
		<h1 align="center" style="color: red;">Sorry For Inconvinience</h1>
		<button onclick="abc()">Back</button>
	</center>
</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>