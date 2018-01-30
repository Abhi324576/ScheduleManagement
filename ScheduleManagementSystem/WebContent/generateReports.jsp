<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reports</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background: #59ABE3;
}

h2 {
	margin: 3px 0;
	padding: 2cm;
	font-family: Comic Sans MS;
	color: #78788c;
}

input {
	font-family: Comic Sans MS;
}

button:hover {
	background: #78788c;
	color: #fff
}

.form-group {
	color: black;
	font-family: Comic Sans MS;
	font-size: 20px;
}
</style>
</head>
<body>
	<div class="text-center">

		<h2>Generate Reports</h2>
		<div class="container">


			<form class="form-inline" action="eventById.jsp">
				<div class="form-group">
					<label for="eventId">Enter EventId:</label> <input type="eventId"
						id="email" placeholder="Enter Event Id" name="eventId" required="">
				</div>
				<button type="submit" class="btn btn-primary">Generate
					Reports</button>
			</form>
		</div>
		<br> <br>
		<p style="border-bottom: 3px solid #78788c"></p>

		<!-- <form action="eventDateReport.jsp">
			<div class="form-group">
				<label for="eventId">Enter Date From:</label> <input type="Date"
					id="eventDate" name="eventDate" required="">To <input
					type="Date" id="eventDate" name="eventDate" required="">
			</div>

			<button type="submit" class="btn btn-primary">Generate
				Reports</button>
	</div>
	</form> -->
	<p style="border-bottom: 3px solid #78788c"></p>
	<div class="form-group">
		<center></center>
		<form action="eventAll.jsp">
			<label for="eventId">All Events : </label>
			<button type="submit" class="btn btn-primary">Generate All
				Reports</button>
		</form>
	</div>
	</center>
	</div>
	</div>

</body>
</html>