<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/slicebox.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome-icons -->
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link
	href="//fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i"
	rel="stylesheet">

<style>
</style>
</head>
<body>
	<hr>
	<div class="container">
		<div class="row">
			<div class="row">
				<div class="form-group row">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-default">
							<div class="panel-body">
								<div class="text-center">
									<h3>
										<i class="fa fa-lock fa-4x"></i>
									</h3>
									<h2 class="text-center">Forgot Password?</h2>
									<p style="font-family: italic; font-size: 20px">You can
										reset your password here.</p>
									<div class="panel-body">

										<form class="form" action="OTP.jsp" method="post">
											<fieldset>
												<div class="form-group">
													<div class="input-group">
														<span class="input-group-addon"><i
															class="glyphicon glyphicon-envelope color-blue"></i></span> <input
															id="emailInput" placeholder="email address"
															name="recipientEmail" class="form-control" type="email"
															oninvalid="setCustomValidity('Please enter a valid email address!')"
															onchange="try{setCustomValidity('')}catch(e){}"
															required="">
													</div>
												</div>
												<div class="form-group">
													<!-- <a href="OTP.jsp" data-toggle="modal" data-target="#myModal3"
														class="btn btn-lg btn-primary btn-block" value="Send OTP">Send
														OTP</a> -->
													<input type="submit" value="Generate OTP"
														data-target="myModal3">
												</div>
											</fieldset>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>

































