<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GiggerViewGigsIndex.aspx.cs" Inherits="QlityG.GiggerViewGigsIndex" %>

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
				   top:-120px;
		}
			#viewgig_divright{
			 height:800px;
             width:390px; 
			 background-color:whitesmoke;
				
			 /*border-radius:10px;*/
			 position:fixed;
			 right:0px;
			 top:38px;
		}
			#viewnewgig{
				 background-color:white;
				 border-radius:10px;
				 width:300px;
				 height:300px;
				position:fixed;
				right:56px;
			 top:108px;
			 text-align:center;
			
			}
			#header1{
				width:650px;
				height:60px;
			background-color:white;
				position:fixed;
				text-align:center;
				/*left:280px;*/
				top:120px;
				
			}
				#header3{
				width:980px;
				height:100px;
			background-color:white;
				position:fixed;
				text-align:center;
				left:0px;
				top:60px;
				border-radius:10px;
				
			}
						#header4{
				width:1000px;
				height:50px;
			background-color:whitesmoke;
				position:fixed;
				float:left;
			/*	left:280px;*/
				top:60px;
				
			}
			#accouleft_div{
				position:relative;
				left:40px;
				top:20px;
				height:340px;
				width:180px;
				background-color:white;
				border-radius:10px;
			}
			  #heade{
                 background-color:lightgrey;
                 height:60px; 
				 width:1400px;
				
               
 
             }
 .input-icons i { 
            position: absolute; 
        }       
        .input-icons { 
            width: 100%; 
            margin-bottom: 10px; 
        }          
        .icon { 
            padding: 10px; 
            color: black; 
            min-width: 50px; 
            text-align: center; 
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
		<nav class="navbar navbar-fixed-top">
			 <header id="heade">
    <div class="container-fluid">
        <br />
      <div id="logo" class="pull-left" style=" position:fixed;left:50px;top:9px;"> <img src="../Account/QlityGigs_Log.png" /></div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
           
        
			<li><p style="color:blue"> <a href="GiggerViewGig.aspx" style="color:blue;font-size:small;">View Gig</a></p> </li>
            
            <li><a href="GiggerEditP.aspx" style="color:blue;font-size:small;"><i class="w3-xxxlarge glyphicon glyphicon-user"></i>Profile</a></li> 
<%--    
          <li><p style="color:blue"> <a href="CreateGig.aspx" style="color:blue;font-size:small;">Create Gig</a></p> </li> --%>
         
         <li><p style="color:blue"> <a href="Account/Logins.aspx" style="color:blue;font-size:small;">Log Out</a></p> </li>
         
        </ul>
      </nav><!-- #nav-menu-container -->


					<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu"></i></button>
				</div>
				<!-- logo -->
				 
				<!-- end logo -->
				<div class="navbar-right" style="position:relative;top:-17px;">
				

					
					<div id="navbar-search" class="navbar-form search-form">
						  <div class="input-icons"> 
							<%--  <i class="fa fa-search"></i>--%>
							   <asp:TextBox runat="server" ID="txtskills" CssClass="form-control" borderColor="Blue" placeholder="Search here.."  ValidationGroup="Group1"  Width="250px"/>
					<%--	<div style="position:relative;top:-23px;left:4px;">
							  <i class="fa fa-search"></i>
						</div>--%>
					<div style="position:relative;top:-34px;left:8px;">
			<asp:Button runat="server" ID="searching" Text="Search" CssClass="btn btn-default" BackColor="blue" ForeColor="White" width="50px"  ValidationGroup="Group1" OnClick="searching_Click" />
					</div>
						</div> 
    

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


								<li style="font-size:medium;color:blue;">
								<%--<a href="#"  data-toggle="dropdown" style="color:blue">--%>
									<a href="GiggerViewGigsIndex.aspx" style="font-size:medium;color:blue;"><b>Home</b><i class="fa fa-home"></i>
									<span class="notification-dot"></span>
								</a>
								
							</li>

								<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown" style="color:blue">
									<i class="lnr lnr-alarm" style="color:blue"></i>
									<span class="notification-dot"></span>
								</a>
								
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown" style="color:blue">
									<i class="lnr lnr-cog" style="color:blue"></i>
								</a>
								<ul class="dropdown-menu user-menu menu-icon">
									<li class="menu-heading">ACCOUNT SETTINGS</li>	
									
									
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown" style="color:blue">
									Me<i class="fa fa-caret-down" style="color:blue"></i>
								</a>
								<ul class="dropdown-menu user-menu">
									
									
									<li style="font-size:medium;"><a href="#"><b>My profile</b></a></li>



									<li style="position:relative;left:20px;"><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></li>
									<li style="position:relative;left:12px;"><a href="GiggerEditP.aspx" style="color:black;"><asp:Label ID="Label2" runat="server" Text=""></asp:Label>  <asp:Label ID="Label3" runat="server" Text=""></asp:Label></a></li>
									<li style="text-align:;"></li>
									<li class="menu-heading">My Interest</li>
									<li><a href="#">View gigs </a></li>
									<%--<li><a href="#"> Edit gig </a></li>--%>
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
    </div>
  </header>

		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="left-sidebar" class="sidebar">
		
			<div class="sidebar-scroll">
				<div id="accouleft_div">
				<div class="user-account"><br />
					<div class="dropdown">
						<a href="#" class="dropdown-toggle user-name" data-toggle="dropdown"><strong>Edit photo</strong> <i class="fa fa-caret-down"></i></a>
						<ul class="dropdown-menu dropdown-menu-right account">
							<li>
								<asp:FileUpload ID="FileUpload1" runat="server"  Width="200px"/>
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
					<asp:Label ID="Label9" runat="server" Text=""></asp:Label>
			<%--<asp:FileUpload ID="fImage" runat="server" />--%>


					<%--<img src="2.jpg" class="img-responsive img-circle user-photo" alt="User Profile Picture" />--%>
							<%--<asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>--%>					
					<div>
                            <%--    <asp:Repeater ID="Repeater1" runat="server">
									<ItemTemplate>
                                        <asp:Image ID="Image2" runat="server"  ImageUrl='<%# Container.DataItem %>'/>
									</ItemTemplate>
                                </asp:Repeater>--%>


                                <asp:DataList ID="DataList1" runat="server">

									<ItemTemplate>
                                        <asp:Image ID="Image7" runat="server" />
                                        <asp:Image ID="Image2" runat="server"  ImageUrl='<%# Container.DataItem %>'/>
										<asp:Label ID="lblE" runat="server" Text=""></asp:Label>
										<asp:Label ID="Label1" runat="server" Text='<%#Eval("UserID") %>'></asp:Label>
                                        <img src="UserImages/<%#Eval("uImageP") %>" />
										<img src="~/UserImages/@item.uImageP">

									</ItemTemplate>
                                </asp:DataList>

						   

					</div>	
				

				</div>

				<div>
                    
					<a href="GiggerEditP.aspx" style="color:black;">
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
		<div id="main-content" >
			<div class="container-fluid">
				<h1 class="sr-only">Dashboard</h1>
				
				<div class="dashboard-section">
					<div>
						
						
					</div>
					<div class="panel-conten">
						<div>
							<br />
						<div id="viewgig_div" >
							
							<div id="header1">
								<div id="header3" >
									<div id="header4"></div>
									<br /><br />
									<div style="position:fixed;left:550px;"><h3>View gigs</h3></div>
								
							</div>	

							</div>
							         
							
                     <asp:Label ID="viewgigskills" runat="server" Text=""></asp:Label>
                    <asp:Label ID="viewgig" runat="server" Text=""></asp:Label>
						</div>

						<div id="viewgig_divright">
							<div id="viewnewgig"><br />
								<h4>Top latest gigs</h4><hr />

								<%--<asp:Label ID="LblNewGigs" runat="server" Text=""></asp:Label>--%>
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
		<%--<footer>
			<p class="copyright">&copy; 2021 <a href="http://qlitygigs" target="_blank">QlityGigs</a>. All Rights Reserved.</p>
		</footer>--%>
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
