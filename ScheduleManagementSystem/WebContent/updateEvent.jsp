<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
<html>
<head>
<title>Update Event</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.form-control {
	align: center;
	display: block;
	width: 35%;
	height: 25px;
	padding: 6px 12px;
	font-size: 20px;
	line-height: 1.42857143;
	color: #555;
	font-family: Comic Sans MS;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.form-group {
	align: center;
	font-family: Comic Sans MS;
	font-size: 18px;
}

.style23 {
	color: #663333;
	font-size: 20px;
	font-weight: bold;
	font-family: Comic Sans MS;
}
</style>


</head>
<body>


	<div class="container" style="margin-top: 5%">

		<div class=row>

			<h3 align="center"
				style="font-family: Comic Sans MS; color: white; background-color: grey;">UPDATE
				EVENTS:</h3>

			<form class="form-horizontal" action="update.jsp" method="post">
				<br> <br> <br>

				<div class="form-group" align="center">
					<label>Enter Event Id to be Updated</label>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-5">Enter Id</label>
					<div class="col-sm-7">
						<input type="text" class="form-control" id="Status"
							placeholder="Enter Id" name="eventId">
					</div>
				</div>
				<br> <br>


				<div class="form-group">
					<div class="col-sm-offset-5 col-sm-7">
						<button type="submit" class="btn btn-primary">Update
							Event</button>

						<button type="reset" class="btn btn-danger">Cancel</button>
					</div>
				</div>

			</form>


		</div>

	</div>
</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>