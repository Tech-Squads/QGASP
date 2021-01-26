<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmailReset.aspx.cs" Inherits="QlityG.Account.SendEmailReset" %>

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
      height:200px;
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
     
        background:lightblue;
    }
  
     .nav-menu a:hover{
	color:red;
	border-bottom-style:solid;
	
}
 

             #outer-layer {
             
                 width: 100%;
                 height: 800px;
                 background-color:lightgrey;
              
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
      
            <li  style="position:relative;right:1px;"><b>Back to <a href="Registeres.aspx" style="color:blue">Login</a></b></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div><br />
  </header>

     <div id="outer-layer"> 
        <br /><br /><br />
        <br />
         <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <h4>Provide your registered email</h4><br />

  
            <div class="input-icons"> 
                <i class="fa fa-envelope icon"> 
              </i> 
                 <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default" TextMode="Email"  placeholder="Email Address" Width="340px" Height="40px" required="required"/>


            </div> 

                <div style="text-align:center;position:relative;top:1px;">
                      <asp:Label ID="ErrorMessage" runat="server" Text="" ForeColor="red"></asp:Label>
                         </div>
           
     
                  <div style="text-align:center; position:relative;top:1px;">
                      
                    <%--     <asp:RequiredFieldValidator ID="RequiredFieldemail" 
                    runat="server" ErrorMessage="Please enter email*"
                   ControlToValidate="txtPassword" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator><br />--%>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                    ControlToValidate="txtEmail" ErrorMessage="Enter valid email adress *" Font-Size="Small" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
                 
                  <div style="position:fixed;right:507px;">
                 <asp:Button runat="server" Text="Continue" CssClass="btn btn-default" Backcolor="blue" BorderColor="Blue" ForeColor="white" Width="80px" Height="30px" OnClick="sendmail_Click"  />
                   
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
