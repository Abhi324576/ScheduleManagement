<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
</head>
<%
	String userOTP = request.getParameter("userOTP");
	out.print(userOTP + " "+userOTP);

%>
<body>
	<form class="form" action="changePassword?userOTP=<%=userOTP%>" method="post">
		<h2>Change Password</h2>
		New Password<input type="text" name="pass"><br>
		Confirm Password<input type="text" name="pass"> 
		<button type="submit">Change Password</button>
	</form>
</body>
</html> --%>




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <!-- //custom-theme -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/slicebox.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome-icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome-icons -->
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	    rel='stylesheet' type='text/css'>
	<link href="//fonts.googleapis.com/css?family=Raleway:100i,200,200i,300,400,500,500i,600,700,700i,800,800i" rel="stylesheet">
  
 <style>
</style>
	<script>
		function checkPassword(form)
		{
		 if(form.pass.value == form.confirmPassword.value)
			{
				alert("successful: " + form.pass.value);
				return true;
				
			}
		 else 
			{
				alert("Error: Password & confirmPasswordmust be same !!");
				form.pass.focus();
				return false;
      
			}
	
		}
	</script>
</head>
<%
	String userOTP = request.getParameter("userOTP");
%>
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
                          <h2 class="text-center">Change Password?</h2>
                            <div class="panel-body">
                              
                               
                              <form class="form" name="form" onsubmit="return checkPassword(this);" 
                              			action="changePassword?userOTP=<%=userOTP%>" method="post">
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group" class="form-group row">
                                  
                                      <label for="email" class="text-center">New PassWord :</label>
                                      <input id="enterPassword" name="pass" class="text-center" placeholder="Enter Password" class="form-control" type="enterOtp" on" required="">
                                    </div>
                                    <div class="input-group" class="form-group row">
                                    
                                      <label for="email" class="text-center">Confirm PassWord :</label>
                                      <input id="enterPassword" name="confirmPassword" class="text-center"  class="form-control" placeholder="ReEnter New Password" class="form-control" type="enterOtp" required="">
                                    </div>
                                  </div>
                                  <div class="form-group">
									<input type="submit" 
													class="btn btn-lg btn-primary btn-block" value="Change Password"> 
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