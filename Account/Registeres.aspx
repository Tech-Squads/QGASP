﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registeres.aspx.cs" Inherits="QlityG.Account.Registeres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

         <style type="text/css">


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
          
        .input-field { 
            width: 340px; 
            padding: 10px; 
            text-align: center; 
        } 
          
        h2 { 
            color: green; 
        } 
    .button
    {
      width: 150px;
      padding: 10px;
      background-color: #FF8C00;
      box-shadow: -8px 8px 10px 3px rgba(0,0,0,0.2);
      font-weight:bold;
      text-decoration:none;
    }
    
    #formstyle
    {
      height:400px;
      width:380px;
      margin:0 auto;
      position:relative;
      z-index:10;
    
     /* background: url(login.png) no-repeat;*/
     background-color:white;
     
      /*border:5px solid #cccccc;*/
      border-radius:6px;
    }
    #formstyle:target, #formstyle:target + #cover{
      display:block;
      opacity:2;
    }

    #outerlayer{
        width:100%;
        height:70px;
     
        background:lightblue;
    }
  
     .nav-menu a:hover{
	color:red;
	border-bottom-style:solid;
	
}
     #join-cov{
         height:20px;
      background-color:rebeccapurple;
      /*border:5px solid #cccccc;*/
      border-radius:4px;
     
     }
     #log{

         height:500px;
         width:100px;

     }
             #outer-layer {
                 /*  border:1px solid red;*/
                 width: 100%;
                 height: 800px;
                 background-color:lavender;
               /*  background-color:seashell;*/
                 /*background: url(/assets/images/1.jpg) no-repeat center center fixed;*/
        
                 
             }
   #header{
               /*  background-color:black;
                 height:40px;*/
               
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
    
</head>
<body>
 <form id="form1" runat="server">
  <!--==========================
    Header
  ============================-->
  <header id="header">
    <div class="container-fluid">

      <div id="logo" class="pull-left"> 
          <a href="../Homepage/Homepage.aspx">
          <img src="../Account/QlityGigs_Log.png" />
              </a>
       
      
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
         
            <li><h4 style="color:black">already have an account ?</h4></li>
          <li><h4 style="color:blue"> <a href="Logins.aspx" style="color:blue;">Log in</a></h4>
          
          </li>
         <%-- <li><a href="#contact">Login</a></li>--%>
     
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  

     <div id="outer-layer"><br /><br />  
         <br /><br />
         <br/><br/><br/>
         <br /><br />

         <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <h4>Create new account</h4><br />
           <%--     <div class="input-icons"> 
                <i class="fa fa-user icon"> 
              </i> 
                 <asp:TextBox runat="server" ID="txtEmai" CssClass="btn btn-default" TextMode="Email"  placeholder="Email Address" Width="340px" Height="40px" /> 
            </div> --%>
  
            <div class="input-icons"> 
                <i class="fa fa-envelope icon"> 
              </i> 
                <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default" TextMode="Email"  placeholder="Email Address" Width="340px" Height="40px" />
            </div> 
  
            <div class="input-icons"> 
                <i class="fa fa-key icon"> 
              </i> 
                 <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"  CssClass="btn btn-default" placeholder="New Password" Width="340px" Height="40px"/>
            </div> 

                 <div class="input-icons"> 
                <i class="fa fa-key icon"> 
              </i> 
                 <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" CssClass="btn btn-default" placeholder="Confirm-Password" Width="340px" Height="40px" />
            </div> 
                 <asp:Button runat="server" Text="Register" CssClass="btn btn-default" Backcolor="Green" BorderColor="Blue" ForeColor="white" Width="340px" Height="40px" OnClick="Unnamed1_Click1"   /><br />
               <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
           CssClass="text-danger" ErrorMessage="The Email field is required*" /><br />
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
               CssClass="text-danger" ErrorMessage="The Password field is required*" /><br />
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassword"
             CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required*" /><br />


                 <asp:Label ID="errormesage" runat="server" Text=""></asp:Label>


             </div>
               
         </div>
      
    <br /></div>
  <footer id="footer">
   

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>QlityGigs</strong>. All Rights Reserved
      </div>
      <div class="credits">    
        Designed by <a href="#">QlityGigs</a>
      </div>
    </div>
  </footer><!-- #footer -->
  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->
  <!-- JavaScript Libraries -->
  <script src="/Homepage/lib/jquery/jquery.min.js"></script>
  <script src="/Homepage/lib/jquery/jquery-migrate.min.js"></script>
  <script src="/Homepage/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/Homepage/lib/easing/easing.min.js"></script>
  <script src="/Homepage/lib/superfish/hoverIntent.js"></script>
  <script src="/Homepage/lib/superfish/superfish.min.js"></script>
  <script src="/Homepage/lib/wow/wow.min.js"></script>
  <script src="/Homepage/lib/waypoints/waypoints.min.js"></script>
  <script src="/Homepage/lib/counterup/counterup.min.js"></script>
  <script src="/Homepage/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="/Homepage/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="/Homepage/lib/lightbox/js/lightbox.min.js"></script>
  <script src="/Homepage/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/Homepage/contactform/contactform.js"></script>
  <!-- Template Main Javascript File -->
  <script src="/Homepage/js/main.js"></script>
 </form>
</body>
</html>