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
<title>Employee Feedback Form Flat Responsive widget Template ::
	w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Employee Feedback Form Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




	function formValidate()
	{
		
		if(form.fid.value == "") 
			{
			alert("Employee Id cannot be empty !");
        	 form.fid.focus();
       		 return false;
			}
		if(form.fname.value == "") 
		{
		alert("Name cannot be empty !");
    	 form.fname.focus();
   		 return false;
		}
		if(form.eid.value == "") 
		{
		alert("Event Id cannot be empty !");
    	 form.fname.focus();
   		 return false;
		}
		if(form.femail.value == "") 
		{
		alert("Email cannot be empty !");
    	 form.femail.focus();
   		 return false;
		}
		if(form.fdeptName.value == "") 
		{
		alert("Dept Name cannot be empty !");
    	 form.fdeptName.focus();
   		 return false;
		}
		if(form.fmessage.value == "") 
		{
		alert("Message cannot be empty !");
    	 form.fmessage.focus();
   		 return false;
		}
		if(form.meetingName.value == "") 
		{
		alert("Meeting Name cannot be empty !");
    	 form.meetingName.focus();
   		 return false;
		}
		else 
		{
			  alert("Thank you for your feedback: " + form.fname.value);
			    return true;
		}

	}
</script>

<link href="//fonts.googleapis.com/css?family=Open+Sans"
	rel="stylesheet">

<link href="css/fstyle.css" rel='stylesheet' type='text/css' media="all" />

</head>
<body>
	<h1 class="header-w3ls">Event Feedback Form</h1>
	<div class="content-w3ls">
		<!-- <h2>Employee Performance Review</h2> -->
		<p>Please take a minute to give feedback</p>
		<div class="form-w3ls">
			<form name="form" action="validateFeedback" method="post" onsubmit="return formValidate(this);">
				<div class="content-wthree1">
					<div class="grid-agileits1">

						<div class="form-control">
							<label class="header">Employee Id <span>:</span></label> <input
								type="text" id="name" name="fid" placeholder="Employee Id"
								title="Please enter your Id" required="">
						</div>
						<div class="form-control">
							<label class="header">Event Id <span>:</span></label> <input
								type="text" id="name" name="eid" placeholder="Event Id"
								title="Please enter Event Id" required="">
						</div>
						<div class="form-control">
							<label class="header">Employee Name <span>:</span></label> <input
								type="text" id="name" name="fname" placeholder="Employee Name"
								title="Please enter your Full Name" required="">
						</div>

						<div class="form-control">
							<label class="header">Email Address <span>:</span></label> <input
								type="email" id="email" name="femail"
								placeholder="Mail@example.com"
								title="Please enter a Valid Email Address" required="">
						</div>
						
						<div class="form-control">
							<label class="header">Meeting Name <span>:</span></label> <input
								type="meetingName" id="email" name="meetingName"
								placeholder="Meeting Name"
								title="Please enter a Meeting Name" required="">
						</div>

						<div class="form-control">
							<label class="header">Department Name<span>:</span></label> <input
								type="text" id="orgn" name="fdeptName"
								placeholder="Department Name"
								title="Please enter your Organization" required="">
						</div>
						
					</div>


				</div>
				<div class="content-wthree2">
					<div class="grid-w3layouts1">
						<div class="w3-agile1">
							<label class="rating">Please specify the type of review<span>:</span></label>
							<ul>
								<li><input type="radio" id="d-option" name="freview"
									value="worst"> <label for="d-option">Worst</label>
									<div class="check"></div></li>
								<li><input type="radio" id="a-option" name="freview"
									value="bad"> <label for="a-option">Bad</label>
									<div class="check"></div></li>
								<li><input type="radio" id="b-option" name="freview"
									value="average"> <label for="b-option">Average</label>
									<div class="check">
										<div class="inside"></div>
									</div></li>
								<li><input type="radio" id="c-option" name="freview"
									value="good"> <label for="c-option">Good</label>
									<div class="check">
										<div class="inside"></div>
									</div></li>
								<li><input type="radio" id="e-option" name="freview"
									value="VGood"> <label for="e-option">Very Good</label>
									<div class="check"></div></li>
								<li><input type="radio" id="f-option" name="freview"
									value="excellent"> <label for="f-option">Excellent</label>
									<div class="check"></div></li>
							</ul>
						</div>
					</div>

					<div class="clear"></div>
				</div>
				<div class="content-wthree3">
					<div class="form-control">
						<label class="enquiry">Employee Message <span>:</span></label>
						<textarea id="message" name="fmessage" placeholder="Your Queries"
							title="Please enter Your Queries"></textarea>
						<div class="clear"></div>
					</div>
				</div>
				<div class="content-wthree4">
					<div class="form-control">
						<input type="submit" class="register" value="Submit"> <input
							type="reset" class="reset" value="Reset">
						<div class="clear"></div>
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