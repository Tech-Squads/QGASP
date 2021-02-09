<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Googleform.aspx.cs" Inherits="QlityG.Account.Googleform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <meta name="google-signin-client_id" content="51695088027-fgq4ej9ctndugj70h1pdbln0rhthess5.apps.googleusercontent.com"/>
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
      height:390px;
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
     #logo{

      left:100px;

     }
             #outer-layer {
                 /*  border:1px solid red;*/
                 width: 100%;
                 height: 800px;
                 background-color:lavender;
               /*  background-color:seashell;*/
                 /*background: url(/assets/images/1.jpg) no-repeat center center fixed;*/
        
                 
             }
                #heade{
                 background-color:lavender;
                 height:70px;
               
 
             }
               
             #googleform{
                /* position:absolute;*/
                /* top:50%;
                 left:50%;*/

                 margin:0 auto;
      position:relative;
      z-index:10;
                 background-color:white;
             /*    transform:translate(-50%,-50%);*/
                 border:1px solid #d5d2d2;
                 border-radius:10px;
                 width:400px;
                 height:250px;
              /*   padding:25px;*/
             }
             #hthree{
                 font-size:25px;
                 font-family:jost;
                 letter-spacing:1px;
             }
             .buttons{
                  border-radius:6px;
                  border:none;
                  

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
      <div id="logo" class="pull-left" style=" position:fixed;left:50px;"> 
          <a href="../Homepage/Homepage.aspx">
          <img src="../Account/QlityGigs_Log.png" />
              </a>
       
      
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">      
     
        </ul>
      </nav>
    </div>
  </header>

  

     <div id="outer-layer"><br /><br /> <br />
           <br />  <br /> 

         <div>
  

             <div id="googleform" style="text-align:center;">

                 <div style="text-align:center;position:relative;top:10px;">
                          <img src="Googlelogo.png" style="height:30px;width:80px;"/>
                 </div><br />
                 
                 <h4 id="hthree">Google Account</h4><br />
            <div > 
                <p style="color:forestgreen;">Your account is ,</p><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label><br />

                      <div style="text-align:center;"><br />
                     <asp:Button ID="btnContinue" runat="server" Text="Join" CSSClass='buttons' Backcolor="blue"  ForeColor="white"  Width="55px" Height="36px" OnClick="btnContinue_Click"   />
                      </div>
                       <asp:Label ID="errormesage" runat="server" Text="" ForeColor="red"></asp:Label>
          
            </div> 
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
 </form>
</body>
</html>