﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestorDash.aspx.cs" Inherits="QlityG.RequestorDash" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

         <style type="text/css">
               #heade{
                 background-color:lavender;
                 height:70px; 
               
 
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
    height:515px;
      width:580px;
      margin:0 auto;
      position:relative;
      z-index:10;
    
     /* background: url(login.png) no-repeat;*/
     background-color:white;
     
      /*border:5px solid #cccccc;*/
      border-radius:6px;
    }
    #formstyle:target, #formstyle:target + #cover {
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
                 height: 700px;
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
  <header id="heade">
    <div class="container-fluid">
        <br />
      <div id="logo" class="pull-left" style=" position:fixed;left:50px;"> <img src="../Account/QlityGigs_Log.png" />
       
      
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">

            <li  style=" position:relative;right:20px;" ><h4 style="color:black"><a href="RequestorDashboard.aspx" style="color:black;font-size:small;">Dashboard</a></h4></li>

             <li  style=" position:relative;right:0px;"><h4 style="color:blue"> <a href="Account/Logins.aspx" style="color:black;font-size:small;">Log Out</a></h4> </li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  

     <div id="outer-layer">
         <br />
          
         <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <h4>Update Profile</h4>


                   <div class="form-group">
                 <div class="col-md-6">
              <div style="text-align:left;color:gray;">
                          First Name *
              </div>
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"
                    CssClass="text-danger" ErrorMessage="Please enter Your First Name !" />
            </div>

                  <div class="col-md-6">
                      <div style="text-align:left;color:gray">
                          Last Name *
                      </div>
                   
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"
                    CssClass="text-danger" ErrorMessage="Please enter Your Last Name !" />
            </div>
        </div>

                     <div class="form-group">
                 <div class="col-md-12">
              <div style="text-align:left;color:gray;">
                           Headline *
              </div>
           
               <asp:TextBox runat="server" id="txtheadline" name="message" CssClass="form-control"  rows="5"    TextMode="MultiLine"  height="50px"/><br />
            </div>                
            </div>

       <%--     <div class="input-icons"> 
                <i class="fa fa-envelope icon"> 
              </i> 
                 <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default" TextMode="Email"  placeholder="Email Address" Width="340px" Height="40px" />

            </div> --%>
                        
                 <div class="form-group">
                 <div class="col-md-12">
                 <div style="text-align:left;color:gray;">
                           Current Position 
                </div> 
                  <asp:TextBox runat="server" ID="txtposition" CssClass="form-control" /><br />              
                 
            </div>                
            </div> 

                   <div class="form-group">
                 <div class="col-md-12">
              <div style="text-align:left;color:gray;">
                           Education 
              </div> 
                  <asp:TextBox runat="server" ID="txteducation" CssClass="form-control"  /><br />
            </div>                
            </div>

                   <div class="form-group">
                 <div class="col-md-12">
              <div style="text-align:left;color:gray;">
                           Country/Region *
              </div> 
                 <asp:DropDownList ID="DropDownListcountry" runat="server"  CssClass="form-control" />
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="DropDownListcountry"
                    CssClass="text-danger" ErrorMessage="Please Select  !" />
                     <br /><br />
            </div>                
            </div>
                 <div class="form-group"><br />
            <div class="col-md-12" style="text-align:center">
                 <asp:Button runat="server" ID="Create" Text="Update" CssClass="btn btn-default"  BackColor="blue"   ForeColor="white" OnClick="Create_Click"   />
                <asp:Button runat="server" ID="Update" Text="Edit" CssClass="btn btn-default"  BackColor="green"  ForeColor="white" OnClick="Update_Click"   /><br />
           </div>
           </div>


                <label id="ErrorM" runat="server" visible="false"> Something went wrong please load page again!</label>

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
