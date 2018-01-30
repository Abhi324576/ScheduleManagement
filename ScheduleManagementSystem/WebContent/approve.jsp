<%@page import="dto.RegisterDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ApproveDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <jsp:useBean id="login" class="dto.RegisterDto" scope="session"></jsp:useBean>
<%
	if (login != null && login.getUserPosition() != null) {
%> --%>
<jsp:setProperty property="*" name="register" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Treasurer Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	

</script>
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

</head>

<body>
	<!-- banner -->

	<div class="agileits_w3layouts_banner_nav">
		<nav class="navbar navbar-default">
		<div class="navbar-header navbar-left">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<h1>
				<a class="navbar-brand" href="adminHome.jsp"><i
					class="fa fa-crosshairs" aria-hidden="true"></i> Schedule
					Management System</a>
			</h1>

		</div>
		<ul class="agile_forms">
			<li><a href="logout.jsp"> Log Out</a></li>
		</ul>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-right"
			id="bs-example-navbar-collapse-1">
			<nav>
			<ul class="nav navbar-nav">
				<li class="active"><a href="adminHome.jsp"
					class="hvr-underline-from-center">Home</a></li>
				<li><a href="adminPage.jsp" class="hvr-underline-from-center"
					target="_blank">Events</a></li>
				<li><a href="siteUnderMaintainance.jsp"
					class="hvr-underline-from-center">Holiday-List</a></li>
				<li><a href="siteUnderMaintainance.jsp"
					class="hvr-underline-from-center">Notification</a></li>
				<li><a href="approve.jsp" class="hvr-underline-from-center">Approve-User</a></li>
				<li><a href="siteUnderMaintainance.html"
					class="hvr-underline-from-center">Reports</a></li>
				<li><a href="siteUnderMaintainance.html"
					class="hvr-underline-from-center">Contact</a></li>
			</ul>
			</nav>

		</div>
		</nav>

		<div class="clearfix"></div>
	</div>
	<!-- Modal1 -->

	<div class="banner">


		<div class="wrapper">

			<!-- <ul id="sb-slider" class="sb-slider">
				<li><a href="#"><img src="images/banner1.jpg" alt="image1" /></a>
					<div class="sb-description">
						<h3>Creative Lifesaver</h3>
					</div></li>
			</ul> -->

			<div id="shadow" class="shadow"></div>




		</div>
		<!-- /wrapper -->
	</div>
	<!-- banner-bottom -->

	<!-- //banner-bottom -->

	<!-- banner-bottom-icons -->

	<!-- choose-us -->


	<!-- //choose-us -->

	<!-- News -->

	<!-- Modal1 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4>Treasurer</h4>
					<img src="images/banner2.jpg" alt="blog-image" />

				</div>
			</div>
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- //News -->
	<!-- events-top -->

	<!-- //events-top -->


	<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					Treasurer
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
				<div class="modal-body">
					<div class="col-md-6 w3_modal_body_left">
						<img src="images/2.jpg" alt=" " class="img-responsive" />
					</div>
					<div class="col-md-6 w3_modal_body_right">
						<p></p>
					</div>
					<div class="clearfix"></div>
				</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //bootstrap-pop-up -->
	<!-- subscribe -->

	<!-- //subscribe -->
	<!-- footer -->

	<!-- //footer -->
	<!-- menu -->
	<!-- js -->
	<title>SCHEDULED CONFERENCES</title>
	<h2 align="center">UnApproved User</h2>
	<table border="1" align=center>
		<thead>
			<tr bgcolor="#26618D">
				<FONT FACE="Times New Roman" COLOR="#FFFF99">
					<th><font size="3" COLOR="#FFFF99">ID</th>
					<th><font size="3" COLOR="#FFFF99">NAME</th>
					<th><font size="3" COLOR="#FFFF99">DOB</th>
					<th><font size="3" COLOR="#FFFF99">POSITION</th>
					<th><font size="3" COLOR="#FFFF99">EMAIL</th>
					<th><font size="3" COLOR="#FFFF99">STATUS</th>

				</FONT>
			</tr>
		</thead>
		<%
			ApproveDao ad = new ApproveDao();
				ArrayList<RegisterDto> list = ad.show();
				for (RegisterDto r : list) {
		%>
		<tr bgcolor="#d3d2d1">
			<td><%=r.getUserId()%></td>
			<td><%=r.getUserName()%></td>
			<td><%=r.getUserDOB()%></td>
			<td><%=r.getUserPosition()%></td>
			<td><%=r.getUserEmail()%></td>
			<td><%=r.getStatus()%></td>
			<th><a href="statusChange.jsp?userEmail=<%=r.getUserEmail()%>">
					Approve User</a></th>
		</tr>
		<%
			}
		%>
	</table>
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/modernizr.custom.46884.js"></script>
	<!-- password-script -->
	<script type="text/javascript">
		window.onload = function() {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity(
						"Passwords Don't Match");
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
		$(function() {

			var Page = (function() {

				var $navArrows = $('#nav-arrows').hide(), $navDots = $(
						'#nav-dots').hide(), $nav = $navDots.children('span'), $shadow = $(
						'#shadow').hide(), slicebox = $('#sb-slider').slicebox(
						{
							onReady : function() {

								$navArrows.show();
								$navDots.show();
								$shadow.show();

							},
							onBeforeChange : function(pos) {

								$nav.removeClass('nav-dot-current');
								$nav.eq(pos).addClass('nav-dot-current');

							}
						}),

				init = function() {

					initEvents();

				}, initEvents = function() {

					// add navigation events
					$navArrows.children(':first').on('click', function() {

						slicebox.next();
						return false;

					});

					$navArrows.children(':last').on('click', function() {

						slicebox.previous();
						return false;

					});

					$nav.each(function(i) {

						$(this).on('click', function(event) {

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
					init : init
				};

			})();

			Page.init();

		});
	</script>
	<!-- Stats -->
	<script src="js/waypoints.min.js"></script>
	<script src="js/counterup.min.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$('.counter').counterUp({
				delay : 10,
				time : 2000
			});
		});
	</script>
	<!-- //Stats -->

	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	<!-- flexisel -->
	<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems : 4,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 3000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 2
					},
					tablet : {
						changePoint : 768,
						visibleItems : 2
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
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
</body>
</html>
<%-- <%
	} else {
		response.sendRedirect("index.jsp");
	}
%> --%>