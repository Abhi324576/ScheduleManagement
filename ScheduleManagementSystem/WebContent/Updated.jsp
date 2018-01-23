<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dto.Events"%>
<%@page import="dao.UpdateDao"%>
<jsp:useBean id="event" class="dto.Events"></jsp:useBean>
<jsp:setProperty property="*" name="event" />


<%
UpdateDao ud = new UpdateDao();
boolean valid=ud.insert(event);
if(valid)
{
	out.write("<script>alert('Events Updated Successfully')</script>");
	RequestDispatcher rd=request.getRequestDispatcher("view.jsp");  
	rd.include(request, response);  
}
else
{
	out.write("<script>alert('Something Went Wrong')</script>");	
	RequestDispatcher rd=request.getRequestDispatcher("updateEvent.jsp");  
	rd.include(request, response);  
}

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>