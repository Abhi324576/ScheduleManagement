<%@page import="dao.CancelDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="event" class="dto.Events"></jsp:useBean>
<jsp:setProperty property="*" name="event"/>
<%
CancelDao cd=new CancelDao();
boolean valid=cd.delete(event);
if(valid)
{
	out.write("<script>alert('Deleted Successfully');</script>");
}
else
{
	out.write("<script>alert('Something Went Wrong');</script>");
}
%>