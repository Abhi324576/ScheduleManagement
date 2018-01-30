<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
<html>
<head>
<link rel="stylesheet" href="css/styleEmail.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function abc() {
	window.history.back();
}
</script>
</head>
<body>

	<form class="form" action="Result.jsp" method="post">
		<h2>Send Email</h2>
		<p type="Recipient address:">
			<input placeholder="Enter Email Id" name="recipientEmail" required=""></input>
		</p>
		<p type="Subject">
			<input placeholder="Subject" name="subject" required=""></input>
		</p>
		<p type="Content">
			<textarea placeholder="Your Content" name="content" required=""></textarea>
		</p>
		<button type="submit">Send Email</button><br>
		<a href="adminHome.jsp">Home</a>
	</form>

</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>