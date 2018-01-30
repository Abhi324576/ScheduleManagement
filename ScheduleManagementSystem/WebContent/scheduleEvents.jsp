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
<link href="style.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.style1 {
	font-family: Comic Sans MS;
	color: white;
	background-color: hsl(120, 60%, 70%);
}

.style12 {
	color: blue;
	font-size: 18px;
}

body {
	background-image: url("images/meetings.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	background-attachment: fixed;
	margin-left: 1cm;
	margin-top: 0.5cm;
}

.style22 {
	color: white;
}

.style23 {
	font-family: Comic Sans MS;
	font-size: 22px;
	font-color: blue;
}

a:visited {
	color: white;
	text-decoration: none;
}

.style25 {
	color: blue;
	font-size: 14px;
	font-weight: bold;
}

a:link {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
	color: #BE0404;
}

a:active {
	text-decoration: none;
	color: #BE0404;
}
</style>
</head>
<body>

	<div id="wrapper">
		<div id="wrapperi">
			<div id="wrapperj">
				<div style="backgroundcolor: red">
					<h1 align="center" class="style1" id="header">SCHEDULE YOUR
						MEETING</h1>
				</div>
				<div id="footer">
					<div id="footer">
						<div align="left" class="style12">
							<p align="left" class="style25">&nbsp;</p>

							<ul class="style22">

								<li class="style23"><span class="style22"><a
										href="internalMeeting.jsp">Internal Meeting </a></span></li>

								<li class="style23"><span class="style22"><a
										href="internalMeeting.jsp">External Meeting </a></span></li>

								<li class="style23"><span class="style22"><a
										href="internalMeeting.jsp">SPORTS Events </a></span></li>

								<li class="style23"><span class="style22"><a
										href="internalMeeting.jsp">CULTURAL Events </a></span></li>

								<li class="style23"><span class="style22"><a
										href="internalMeeting.jsp">Other Events </a></span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>