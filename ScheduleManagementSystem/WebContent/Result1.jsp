<%@page import="dao.MailDao"%>
<jsp:useBean id="mail" class="dto.MailDto"></jsp:useBean>
<jsp:setProperty property="*" name="mail"></jsp:setProperty>
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
<%
	MailDao m = new MailDao();
	int k = m.sendMail(mail);
	if (k == 0) {
		out.write("<script>alert('Message Has Been Sent Successfully')</script>");
		RequestDispatcher rd = request.getRequestDispatcher("EmailForm1.jsp");
		rd.include(request, response);
	}
	else{
		out.write("<script>alert('Something Went Wrong')</script>");
		RequestDispatcher rd = request.getRequestDispatcher("siteUnderMaintainance.jsp");
		rd.include(request, response);
	}
%>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%>
 --%>