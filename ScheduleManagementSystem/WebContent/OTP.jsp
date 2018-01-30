<%@page import="dao.OTPDao"%>
<%-- <jsp:useBean id="mail" class="dto.MailDto"></jsp:useBean>
<jsp:setProperty property="*" name="mail"></jsp:setProperty> --%>

<%
	String mail = request.getParameter("recipientEmail");
	OTPDao odao = new OTPDao();
	int k = odao.sendOTP(mail);
	if (k == 0) {
		/* out.write("<script>alert('Message Has Been Sent Successfully')</script>"); */
		RequestDispatcher rd = request.getRequestDispatcher("ConfirmOTP.jsp?email="+mail);
		rd.include(request, response);
	}
	else{
		out.write("<script>alert('Something Went Wrong')</script>");
		RequestDispatcher rd = request.getRequestDispatcher("otpForm.jsp");
		rd.include(request, response);
	}
%>
