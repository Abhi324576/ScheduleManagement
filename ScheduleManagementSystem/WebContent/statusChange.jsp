<%@page import="dao.StatusChangeDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <jsp:useBean id="register" class="dto.RegisterDto"></jsp:useBean>
 <jsp:setProperty property="*" name="register"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
StatusChangeDao rd=new StatusChangeDao(); 
rd.approve(register);
response.sendRedirect("approve.jsp");
%>
</body>
</html>