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
</head>
<body>

<p>
		<a href="employeeHome.jsp" target="_main">Home</a>  <!-- need to be changed -->
	</p>
	<p>
		<a href="Eview.jsp" target="main">View Events </a>
	</p>
	<p>
		<a href="siteUnderMaintainance.jsp" target="main">List users</a>    <!-- need to be created -->
	</p>
	<p>&nbsp;</p>

</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>