﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewGigsIndex.aspx.cs" Inherits="QlityG.ViewGigsIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>View Gigs</title>
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets_view/vendor/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="assets_view/vendor/font-awesome/css/font-awesome.min.css" />
	<link rel="stylesheet" href="assets_view/vendor/linearicons/style.css" />
	<link rel="stylesheet" href="assets_view/vendor/metisMenu/metisMenu.css" />
	<link rel="stylesheet" href="assets_view/vendor/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" />
	<link rel="stylesheet" href="assets_view/vendor/chartist/css/chartist.min.css" />
	<link rel="stylesheet" href="assets_view/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.css" />
	<link rel="stylesheet" href="assets_view/vendor/toastr/toastr.min.css" />
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets_view/css/main.css" />
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets_view/css/demo.css" />
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet" />
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets_view/img/apple-icon.png" />
	<link rel="icon" type="image/png" sizes="40x100" href="/Account/QlityGigs_Log.png" />


	  <style type="text/css">

	    #heade{        
             height:20px;
             width:100%;              
             }
		#viewgig_div{
			 height:600px;
             width:48%; 
			 background-color:white;
			  border-radius:5px;
			  	 position:relative;
				   left:20px;
		}
			#viewgig_divleft{
			 height:500px;
             width:30%; 
			 background-color:whitesmoke
				 ;
			 border-radius:10px;
			 position:fixed;
			 right:10px;
			 top:100px;
		}
			#header1{
				width:200px;
				height:40px;
			
				position:fixed;
				left:450px;
				top:65px;
				
			}

	  </style>
</head>
<body>
    <form id="form1" runat="server">
        

			<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu"></i></button>
				</div>
				<!-- logo -->
				<div id="heade" style="position:relative;left:10px;top:20px;">		
					<img src="/Account/QlityGigs_Log.png" alt="QlityGigs Logo" style="width:170px;height:40px;" />

				</div>
				<!-- end logo -->
				<div class="navbar-right">
					<!-- search form -->
					<div id="navbar-search" class="navbar-form search-form">
						<input value="" class="form-control" placeholder="Search here..." type="text" />
						<button type="button" class="btn btn-default"><i class="fa fa-search"></i></button>
					</div>
					<!-- end search form -->
					<!-- navbar menu -->
					<div id="navbar-menu">
						<ul class="nav navbar-nav">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
									<i class="lnr lnr-alarm"></i>
									<span class="notification-dot"></span>
								</a>
								
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
									<i class="lnr lnr-cog"></i>
								</a>
								<ul class="dropdown-menu user-menu menu-icon">
									<li class="menu-heading">ACCOUNT SETTINGS</li>		
								
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
									<i class="lnr lnr-question-circle"></i>
								</a>
								<ul class="dropdown-menu user-menu">
									<li>
										<div class="search-form help-search-form">
										</div>
									</li>
									<li class="menu-heading">HOW-TO</li>
									<li><a href="#">Create gig</a></li>
									<li class="menu-heading">ACCOUNT</li>
									<li><a href="#">Change Password</a></li>
									<li><a href="#">Privacy &amp; Security</a></li>
									<li><a href="#">Membership</a></li>
									<li class="menu-heading">BILLING</li>
									<li><a href="#">Setup Payment</a></li>
									<li><a href="#">Cancellation</a></li>
									<li class="menu-button">
										<a href="#" class="btn btn-primary"><i class="fa fa-question-circle"></i> HELP CENTER</a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- end navbar menu -->
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="left-sidebar" class="sidebar">
			<button type="button" class="btn btn-xs btn-link btn-toggle-fullwidth">
				<span class="sr-only">Toggle Fullwidth</span>
				<i class="fa fa-angle-left"></i>
			</button>
			<div class="sidebar-scroll">
				<div class="user-account">
					<img src="assets_view/img/user.png" class="img-responsive img-circle user-photo" alt="User Profile Picture" />

					<div class="dropdown">
						<a href="#" class="dropdown-toggle user-name" data-toggle="dropdown">Hello, <strong>Qlitygig@lubanzi</strong> <i class="fa fa-caret-down"></i></a>
						<ul class="dropdown-menu dropdown-menu-right account">
							<li><a href="#">My Profile</a></li>		
							<li class="divider"></li>
							<li><a href="#">Logout</a></li>
						</ul>
					</div>
				</div>
				<nav id="left-sidebar-nav" class="sidebar-nav">
					<ul id="main-menu" class="metismenu">
						<li class="active"><a href="index.html"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
													
					</ul>
				</nav>
				
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN CONTENT -->
		<div id="main-content">
			<div class="container-fluid">
				<h1 class="sr-only">Dashboard</h1>
				
				<div class="dashboard-section">
					<div>
						<%--<h2 class="section-title"><i class="fa fa-eye"></i> View gigs</h2>--%>
						
					</div>
					<div class="panel-conten">
						<div>
							<br />
						<div id="viewgig_div">
							<div id="header1">
							<h3 class="section-title"><i class="fa fa-eye"></i>View gigs</h3>
							</div>
						</div>

						<div id="viewgig_divleft">

						</div>
					</div>
					</div>
				
			
				
				<div class="dashboard-section no-margin">
					
					<div class="panel-content">
				

					</div>
				</div>
				<!-- END SOCIAL -->
			</div>
		</div>
		<!-- END MAIN CONTENT -->
		<div class="clearfix"></div><br /><br />
			<br /><br /><br /><br />
		<footer>
			<p class="copyright">&copy; 2021 <a href="https://www.themeineed.com" target="_blank">QlityGigs</a>. All Rights Reserved.</p>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets_view/vendor/jquery/jquery.min.js"></script>
	<script src="assets_view/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets_view/vendor/metisMenu/metisMenu.js"></script>
	<script src="assets_view/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets_view/vendor/jquery-sparkline/js/jquery.sparkline.min.js"></script>
	<script src="assets_view/vendor/bootstrap-progressbar/js/bootstrap-progressbar.min.js"></script>
	<script src="assets_view/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets_view/vendor/chartist-plugin-tooltip/chartist-plugin-tooltip.min.js"></script>
	<script src="assets_view/vendor/chartist-plugin-axistitle/chartist-plugin-axistitle.min.js"></script>
	<script src="assets_view/vendor/chartist-plugin-legend-latest/chartist-plugin-legend.js"></script>
	<script src="assets_view/vendor/toastr/toastr.js"></script>
	<script src="assets_view/scripts/common.js"></script>
	
        </div>
    </form>
</body>
</html>
