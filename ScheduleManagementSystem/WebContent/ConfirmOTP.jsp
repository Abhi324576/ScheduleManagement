<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/styleEmail.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm OTP</title>
</head>
<body>
	<%
		String email = request.getParameter("email");
	%>
	<form class="form" action="ConfirmOTP?email=<%=email%>" method="post">
		<h2>Confirm OTP</h2>
		<p type="Enter OTP:">
			<input placeholder="Enter OTP" name="userOTP" required=""></input>
		</p>
		<button type="submit">Confirm OTP</button>

	</form>
</body>
</html>