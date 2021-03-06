<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="login"/>
<html>
<head>
	<title>Schedule Management System</title>
	<!-- custom-theme -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Treasurer Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		
	</script>
	<script>
	function checkPassword(form)
	{
		if(form.userpassword.value != "") 
		{
	     	 if(form.userpassword.value.length < 6)
			 {
	        	 alert("Error: Password must contain at least six characters!");
	       		 form.userpassword.focus();
	       	     return false;
	     	 }
			 if(form.userpassword.value == form.userName.value)
			 {
	      	     alert("Error: Password must be different from Username!");
	         	 form.userpassword.focus();
	        	 return false;
	     	 }
			 re = /[0-9]/;
	    	  if(!re.test(form.userpassword.value))
			 {
	        	  alert("Error: password must contain at least one number (0-9)!");
	       		  form.userpassword.focus();
	        	  return false;
	      	 }
	        	re = /[a-z]/;
	     	 if(!re.test(form.userpassword.value))
			 {
	       	    alert("Error: password must contain at least one lowercase letter (a-z)!");
	            form.userpassword.focus();
	            return false;
	         }
	      re = /[A-Z]/;
	      if(!re.test(form.userpassword.value)) 
			{
	           alert("Error: password must contain at least one uppercase letter (A-Z)!");
	          form.userpassword.focus();
	          return false;
	        }
		 } 
		else {
	      alert("Error: Please check that you've entered correct password!");
	      form.userpassword.focus();
	      return false;
	    }
	    return true;
	}
	</script>
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

</head>

<body>
	<!-- banner -->
	<div class="agileits_top_menu">

		<div class="w3l_header_left">
			
		</div>
		
		<div class="clearfix"> </div>
	</div>
	<div class="agileits_w3layouts_banner_nav">
		<nav class="navbar navbar-default">
			<div class="navbar-header navbar-left">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				<h1><a class="navbar-brand" href="index.jsp"><i class="fa fa-crosshairs" aria-hidden="true"></i>Schedule Management System</a></h1>

			</div>
			<ul class="agile_forms">
				<li><a class="active" href="#" data-toggle="modal" data-target="#myModal2"> Sign In</a> </li>
				<li><a href="#" data-toggle="modal" data-target="#myModal3"> Sign Up</a> </li>
			</ul>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
				<nav>
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.jsp" class="hvr-underline-from-center">Home</a></li>
						<li><a href="siteUnderMaintainance.jsp" class="hvr-underline-from-center">About</a></li>
						<li><a href="siteUnderMaintainance.jsp" class="hvr-underline-from-center">Contact</a></li>
					</ul>
				</nav>
			</div>
		</nav>
		<div class="clearfix"> </div>
	</div>
	<!-- Modal1 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">
						<h3 class="agileinfo_sign">Sign In</h3>
						<div class="login-form">
							<form  action="LoginValidate" method="post">
								<input type="email" name="userEmail" placeholder="E-mail" required="">
								<input type="password" name="userpassword" placeholder="Password" required="">
								<div class="tp">
									<input type="submit" value="Sign In">
								</div>
							</form>
						</div>
						<div class="login-social-grids">
							
						</div>
						<p><a href="OTPPage.jsp" data-toggle="modal" data-target="#myModal3"> Forgot Password?</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">
						<h3 class="agileinfo_sign">Sign Up</h3>
						<div class="login-form">
							<form name="form"  action="RegisterValidate" method="post" onsubmit="return checkPassword(this);">
								<input type="text" name="userId" placeholder="Id" required="" pattern="[0-9]+" title="ID Should be number" >
								<input type="text" name="userName" placeholder="Name" required pattern="[A-Za-z]+" title="Name is always in letters"  minlength="4" maxlength="50" >
								Date of Birth&nbsp;&nbsp;&nbsp;<input type="date" name="userDOB" placeholder="Position" required="">
								<input type="radio" name="userPosition" value="HeadStaff">Head-Staff
								&nbsp;<input type="radio" name="userPosition" value="Employee">Employee
								<input type="email" name="userEmail" placeholder="E-mail" required="">
								<input type="password" name="userpassword" id="password1" placeholder="Password" required="">
								<input type="password" name="userConfirmPassword" id="password2" placeholder="Confirm Password" required="">

								<input type="submit" value="Sign Up">
							</form>
						</div>
						<p><a href="#"> By clicking register, I agree to your terms</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal2 -->

	<div class="banner">


		<div class="wrapper">

			<ul id="sb-slider" class="sb-slider">
				<li>
					<a href="#"><img src="images/banner1.jpg" alt="image1"/></a>
					<div class="sb-description">
						<h3>Creative Lifesaver</h3>
					</div>
				</li>

			</ul>

			<div id="shadow" class="shadow"></div>

			</div>
		<!-- /wrapper -->
	</div>
		
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<!-- //js -->
	<script src="js/bars.js"></script>

	<script type="text/javascript" src="js/jquery.slicebox.js"></script>
	<script type="text/javascript">
		$(function () {

			var Page = (function () {

				var $navArrows = $('#nav-arrows').hide(),
					$navDots = $('#nav-dots').hide(),
					$nav = $navDots.children('span'),
					$shadow = $('#shadow').hide(),
					slicebox = $('#sb-slider').slicebox({
						onReady: function () {

							$navArrows.show();
							$navDots.show();
							$shadow.show();

						},
						onBeforeChange: function (pos) {

							$nav.removeClass('nav-dot-current');
							$nav.eq(pos).addClass('nav-dot-current');

						}
					}),

					init = function () {

						initEvents();

					},
					initEvents = function () {

						// add navigation events
						$navArrows.children(':first').on('click', function () {

							slicebox.next();
							return false;

						});

						$navArrows.children(':last').on('click', function () {

							slicebox.previous();
							return false;

						});

						$nav.each(function (i) {

							$(this).on('click', function (event) {

								var $dot = $(this);

								if (!slicebox.isActive()) {

									$nav.removeClass('nav-dot-current');
									$dot.addClass('nav-dot-current');

								}

								slicebox.jump(i + 1);
								return false;

							});

						});

					};

				return {
					init: init
				};

			})();

			Page.init();

		});
	</script>
	<!-- Stats -->
	<script src="js/waypoints.min.js"></script>
	<script src="js/counterup.min.js"></script>
	<script>
		jQuery(document).ready(function ($) {
			$('.counter').counterUp({
				delay: 10,
				time: 2000
			});
		});
	</script>
	<!-- //Stats -->

	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- flexisel -->
	<script type="text/javascript">
		$(window).load(function () {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
				responsiveBreakpoints: {
					portrait: {
						changePoint: 480,
						visibleItems: 1
					},
					landscape: {
						changePoint: 640,
						visibleItems: 2
					},
					tablet: {
						changePoint: 768,
						visibleItems: 2
					}
				}
			});

		});
	</script>
	<!-- //flexisel -->
	<!-- //flexisel -->
	<!-- js for portfolio lightbox -->
	<script src="js/jquery.chocolat.js "></script>
	<!-- //menu -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll").click(function (event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
</body>
</html>