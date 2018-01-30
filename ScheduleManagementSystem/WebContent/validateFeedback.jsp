<%@page import="dao.feedbackDao"%>
<jsp:useBean id="feed" class="dto.feedbackDto"></jsp:useBean>
<jsp:setProperty property="*" name="feed"/>
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
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
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>