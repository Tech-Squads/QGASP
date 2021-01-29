<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logins.aspx.cs" Inherits="QlityG.Account.Logins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

   <%-- <meta name="google-signin-client_id" content="51695088027-fgq4ej9ctndugj70h1pdbln0rhthess5.apps.googleusercontent.com"/>--%>
    <script src="https://apis.google.com/js/api.js"></script>
    <script src="https://apis.google.com/js/platform.js"></script>
         <style type="text/css">

              .gmailbutton {
            background-color:white;
            color: gray;
            font-style:normal;
            border-color:white;
          
            font-family:Calibri Light;
           font-size:20px;
        
        }
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
      height:395px;
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
                /* background: url(/assets/images/1.jpg) no-repeat center center fixed;*/
          
                 
             }
             #header{
            /*     background-color:lightcyan;*/
               
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
      <div id="logo" class="pull-left" style=" position:fixed;left:50px;"> <a href="../Mainpage.aspx"><img src="../Account/QlityGigs_Log.png" />
          
      </a>   
      </div>
        
      <nav id="nav-menu-container">
        <ul class="nav-menu">
       <li  style="position:relative;right:1px;"><b>Don't have an account ? <a href="Registeres.aspx" style="color:blue">Join</a></b></li>
                            

     
        </ul>
      </nav><!-- #nav-menu-container -->
    </div><br />
  </header><!-- #header -->

     <div id="outer-layer"> 
        <br /><br /><br />
        <br />
         <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <h4>Log in with registered account</h4><br />
        <%--        <div class="input-icons"> 
                <i class="fa fa-user icon"> 
              </i> 
                <input class="input-field" 
                       type="text" 
                       placeholder="Username or email" /> 
            </div> --%>
  
            <div class="input-icons"> 
                <i class="fa fa-envelope icon"> 
              </i> 
                 <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default"  TextMode="Email"  placeholder="Email Address" Width="340px" Height="40px" />
                      <div style="text-align:center; position:relative;top:1px;">
                      
                    <%--     <asp:RequiredFieldValidator ID="RequiredFieldemail" 
                    runat="server" ErrorMessage="Please enter email*"
                   ControlToValidate="txtPassword" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator><br />--%>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationGroup="validatingroup"
                    ControlToValidate="txtEmail" ErrorMessage="Enter valid email adress *" Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div> 
  
            <div class="input-icons"> 
                <i class="fa fa-key icon"> 
              </i> 
               
                 <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="btn btn-default"   placeholder="Password"  Width="340px" Height="40px" />
                                             <div style="text-align:center;position:relative;top:4px;">
            
                                 <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" CssClass="text-danger" BackColor="white"
                                     ValidationGroup="validatingroup"
                    ErrorMessage="Password must be 8 characters long *"
                    
                     ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"
                    ControlToValidate="txtPassword" ForeColor="Red" Font-Size="Small" ></asp:RegularExpressionValidator>
                </div>
            </div>
               
                  <asp:Button runat="server" Text="Log in" CssClass="btn btn-default" Backcolor="Green" BorderColor="Blue" ForeColor="white" Width="340px" Height="40px" ValidationGroup="validatingroup"  OnClick="login_Click" />
            <br /> 
                 <p style="position:relative;top:8px;">
                 
                   
                     <a href="SendEmailReset.aspx" style="color:green;">Reset password</a>
                 </p>
                
                 <p style="position:relative;top:3px;">OR</p>
                 <asp:Label ID="lblcheck" runat="server" Text=""></asp:Label>
               
        <div class="input-icons"> 

 
           <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="google%20sign%20in%20button.png" style="background-color:white;height:50px;width:340px;border:1px solid lightgray;border-radius:5px;" OnClick="btngoogleReg_Click"  ValidationGroup="validatingroup"/><br />
          <asp:Label ID="ErrorMsg" runat="server" Text=""  ForeColor="Red"></asp:Label>
                      
                     
                   </div> 

  <script src="https://apis.google.com/js/platform.js?onload=renderButton" ></script>

                <br />
                 <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                 
                 
        

                 </div> 
          
         

         </div>
      
    </div>


 
  <footer id="footer">
    

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>QlityGigs</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
        -->
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