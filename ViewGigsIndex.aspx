<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewGigsIndex.aspx.cs" Inherits="QlityG.ViewGigsIndex" %>

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
			 height:auto;
             width:60%; 
			 background-color:white;
			  border-radius:10px;
			  	 position:relative;
				   left:20px;
		}
			#viewgig_divright{
			 height:800px;
             width:390px; 
			 background-color:whitesmoke;
				
			 /*border-radius:10px;*/
			 position:fixed;
			 right:0px;
			 top:110px;
		}
			#viewnewgig{
				 background-color:white;
				 border-radius:10px;
				 width:300px;
				 height:300px;
				position:fixed;
				right:40px;
			 top:150px;
			 text-align:center;
			
			}
			#header1{
				width:650px;
				height:60px;
			background-color:white;
				position:fixed;
				text-align:center;
				left:280px;
				top:120px;
				
			}
				#header3{
				width:650px;
				height:60px;
			background-color:white;
				position:fixed;
				text-align:center;
				left:280px;
				top:150px;
				
			}
			#accouleft_div{
				position:relative;
				left:40px;
				top:40px;
				height:340px;
				width:180px;
				background-color:white;
				border-radius:10px;
			}
			  #heade{
                 background-color:lightgray;
                 height:60px; 
				 width:1400px;
				
               
 
             }


	  </style>


	<link rel="stylesheet"
          href= 
"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!-- Favicons -->
  <link href="img/favicon.png" rel="icon" />
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet" />

  <!-- Bootstrap CSS File -->
  <link href="/Homepage/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Libraries CSS Files -->
  <link href="/Homepage/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  <link href="/Homepage/lib/animate/animate.min.css" rel="stylesheet" />
  <link href="/Homepage/lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
  <link href="/Homepage/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
  <link href="/Homepage/lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

  <!-- Main Stylesheet File -->
   <link href="~/Homepage/css/style.css" rel="stylesheet" />
      <link href="~/Content/bootstrap.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
</head>
<body>
    <form id="form1" runat="server">
        
        
			<!-- WRAPPER -->

	<div id="wrapper">
				
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			 <header id="heade">
    <div class="container-fluid">
        <br />
      <div id="logo" class="pull-left" style=" position:fixed;left:50px;top:9px;"> <img src="../Account/QlityGigs_Log.png" /></div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
           
        
			<li><p style="color:blue"> <a href="RequestorDashboard.aspx" style="color:blue;font-size:small;">Dashboard</a></p> </li>

            <li><a href="RequestorEditP.aspx" style="color:blue;font-size:small;"><i class="w3-xxxlarge glyphicon glyphicon-user"></i>Profile</a></li> 
    
          <li><p style="color:blue"> <a href="CreateGig.aspx" style="color:blue;font-size:small;">Create Gig</a></p> </li> 
         
         <li><p style="color:blue"> <a href="Account/Logins.aspx" style="color:blue;font-size:small;">Log Out</a></p> </li>
         
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu"></i></button>
				</div>
				<!-- logo -->
				 
				<!-- end logo -->
				<div class="navbar-right">
					<!-- search form -->
				<div id="navbar-searc" class="navbar-form search-form">
						
					</div>

					

					<div id="navbar-search" class="navbar-form search-form">
						<input value="" class="form-control" placeholder="Search here..." type="text" />
						<button type="button" class="btn btn-default"><i class="fa fa-search"></i></button>
					</div>
					<!-- end search form -->
					<!-- navbar menu -->
					<div id="navbar-menu">
						<ul class="nav navbar-nav">
							<%--<li class="dropdown">
								<a href="RequestorDashboard.aspx" class="dropdown-toggle icon-menu" data-toggle="dropdown">
									<i class="lnr lnr-home">Dashboard</i>
									
								</a>						
								
							</li>--%>

<%--								<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
									<i class="fa fa-calendar">Calender</i>
									
								</a>
									
								
								
							</li>--%>




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
									<li><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></li>
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
			<div class="sidebar-scroll"><br />
				<div id="accouleft_div">
				<div class="user-account"><br />
					<%--<br /><p>Edit profile</p>
					<ul class="dropdown-menu user-menu menu-icon">
									<li class="menu-headin"><p>Edit profile</p></li>		
									<li>Labels</li>
						<li>Labels</li>
				    </ul>--%>
					<div class="dropdown">
						<a href="#" class="dropdown-toggle user-name" data-toggle="dropdown"><strong>Edit profile</strong> <i class="fa fa-caret-down"></i></a>
						<ul class="dropdown-menu dropdown-menu-right account">
							<li>
								<asp:FileUpload ID="fImage" runat="server"  Width="200px"/>
							</li>
							<li style="color:white;">The picture</li>
							<li style="text-align:center"><a href="#">
								  <asp:Button runat="server" ID="create" Text="Save" CssClass="btn btn-default"  BackColor="blue" ForeColor="white" OnClick="Create_Click"   />
							    </a></li>
							<li>
								<asp:Label ID="ImageError" runat="server" Text=""></asp:Label>
							</li>
							<li class="divider"></li>
							
						</ul>
					</div>
					
			<%--<asp:FileUpload ID="fImage" runat="server" />--%>


					<%--<img src="2.jpg" class="img-responsive img-circle user-photo" alt="User Profile Picture" />--%>
							<%--<asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>--%>					
						
					
				</div>

				<div>
                    
					<a href="RequestorEditP.aspx" style="color:black;">
						<table style="text-align:center;position:relative;left:20px;">
									<tr>
										
										<td><asp:Label ID="lblname" runat="server" Font-Bold="true" Font-Size="Large" Text=""></asp:Label></td>
										<td style="color:white">--</td>
										<td><asp:Label ID="lblsurname" runat="server"  Font-Bold="true" Font-Size="Large" Text=""></asp:Label></td>

									</tr>	
                            <asp:Image ID="Image1" runat="server" />

					</table>
					
                       

<%--<div id="PDFObj" runat="server" class="col-12" style="display:none;" >
    <asp:Literal ID="ltObjPDF" runat="server"/>
</div>--%>
				</a>
				</div>
						<h4 style="text-align:center;"><asp:Label ID="lblcompany" runat="server"  Text=""></asp:Label></h4>
					<br /><hr />

				</div><br /><br />



				<br />
				
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN CONTENT -->
		<div id="main-content">
			<div class="container-fluid">
				<h1 class="sr-only">Dashboard</h1>
				
				<div class="dashboard-section">
					<div>
						
						
					</div>
					<div class="panel-conten">
						<div>
							<br />
						<div id="viewgig_div">
							
							<div id="header1">
								<div id="header3">
									<h3>View gigs</h3>
							</div>
								<br /><br /><br />
							
							

							</div>

							<br /><br /><br /><br /><br />
							         <hr />
                    
                    <asp:Label ID="viewgig" runat="server" Text=""></asp:Label>
						</div>

						<div id="viewgig_divright">
							<div id="viewnewgig"><br />
								<h4>Top latest gigs</h4><hr />
							</div>

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
			<p class="copyright">&copy; 2021 <a href="http://qlitygigs" target="_blank">QlityGigs</a>. All Rights Reserved.</p>
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
