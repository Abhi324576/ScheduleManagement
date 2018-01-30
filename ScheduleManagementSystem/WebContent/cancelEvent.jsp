<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--
.style1 {
	font-family: Comic Sans MS;
	color: #F98854;
}

.style14 {
	color: #663333;
	font-size: 20px;
	font-family: Comic Sans MS;
}

body {
	margin-left: 1cm;
	margin-top: 0.5cm;
}

.style23 {
	color: #663333;
	font-size: 20px;
	font-weight: bold;
	font-family: Comic Sans MS;
}

table {
	border: 1px solid black;
	padding: 70px;
}
-->
</style>
</head>
<body>
	<img alt="" src="images/cancel.jpg" width="1295px" height="220px">
	<form action="cancel.jsp" method="post">
		<div id="wrapper">
			<div id="wrapperi">
				<div id="wrapperj">
					<h1 align="center" class="style1" id="header">CANCEL EVENTS</h1>


					<div class="container">
						<br> <br> <br>
						<div class="panel-group">
							<div id="footer">
								<div id="footeri">
									<div>
										<p align="center" class="style23">Enter Event Id to be
											cancelled</p>
									</div>
									<br> <br>
									<div>
										<p align="center" class="style14">
											Event Id <input type="text" name="eventId" />
										</p>
									</div>

									<div class="container">
										<br> <br>

										<p align="center" class="style14">
											<input type="submit" value="Cancel Event"
												class="btn btn-danger" />
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>