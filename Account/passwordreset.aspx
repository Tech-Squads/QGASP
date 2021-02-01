<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordreset.aspx.cs" Inherits="QlityG.Account.passwordreset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
         <style type="text/css">
                #heade{
                 background-color:lightgray;
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
    
    
    #formstyle
    {
      height:230px;
      width:380px;
      margin:0 auto;
      position:relative;
      z-index:10;
    
   
     background-color:white;
     
   
      border-radius:6px;
    }
    #formstyle:target, #formstyle:target + #cover{
      display:block;
      opacity:2;
    }

    #outerlayer{
        width:100%;
        height:70px;
     
        background:lightgray;
    }
  
     .nav-menu a:hover{
	color:red;
	border-bottom-style:solid;
	
}
 

             #outer-layer {
             
                 width: 100%;
                 height: 800px;
                 background-color:lightgray;
              
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
      <div id="logo" class="pull-left" style=" position:fixed;left:40px;"> <a href="../Homepage/Homepage.aspx"><img src="../Account/QlityGigs_Log.png" />
          </a>   
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
      
     
        </ul>
      </nav><!-- #nav-menu-container -->
    </div><br />
  </header>

     <div id="outer-layer"> 
        <br /><br /><br />
        <br />
         <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <h4>Reset password</h4>
  
         
                  <div class="input-icons"> 
                <i class="fa fa-key icon"> 
              </i> 
               
                 <asp:TextBox runat="server" ID="txtnewPassword" TextMode="Password" CssClass="btn btn-default" placeholder=" New Password"  Width="340px" Height="40px"/>
            </div>

                  <div class="input-icons"> 
                <i class="fa fa-key icon"> 
              </i> 
               
                 <asp:TextBox runat="server" ID="txtconfirmpass" TextMode="Password" CssClass="btn btn-default" placeholder="Confirm Password"  Width="340px" Height="40px"/>
            </div>
                 <asp:Label ID="ErrorMessage" runat="server" Text="" ForeColor="red"/><br />
                  <asp:Button runat="server" Text="Reset" CssClass="btn btn-default" Backcolor="blue"  ForeColor="white"  style="position:relative;top:10px;" OnClick="resetbtn"/>
                 
                 
                 <div style="text-align:center;position:relative;top:10px;font-size:small;" >
                                  <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1" runat="server" CssClass="text-danger" BackColor="white"
                    ErrorMessage="Too short.Use at least 8 characters *"
                    
                     ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"
                    ControlToValidate="txtnewPassword">
              
                </asp:RegularExpressionValidator>
                   
                     </div>
                 
                 </div> 
          
         

         </div>
      
    </div>


 
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


  <script src="/Homepage/js/main.js"></script>
 </form>
</body>
</html>