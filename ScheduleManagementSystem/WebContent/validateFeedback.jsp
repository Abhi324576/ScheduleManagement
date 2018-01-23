<%@page import="dao.feedbackDao"%>
<jsp:useBean id="feed" class="dto.feedbackDto"></jsp:useBean>
<jsp:setProperty property="*" name="feed"/>

<%
	feedbackDao fdao = new feedbackDao();
	boolean value = fdao.feedback(feed);
	if(value)
	{
		out.write("<script>alert('Your Feedback Sucessfully Registered');</script>");
	}
	else
	{
		out.write("<script>alert('Your Feedback Was Sucessfully');</script>");
	}
%>