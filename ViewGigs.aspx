<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewGigs.aspx.cs" Inherits="QlityG.ViewGigs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  <style type="text/css">
      #heade {
          background-color: lightgray;
          height: 68px;
          width: 100%;
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


     #formstyl
    {
      height:40px;
      width:100%;

     background-color:black;
    
    }
    
    #formstyle
    {
      height:auto;
      width:780px;
      margin:0 auto;
      
      z-index:10;
      clear:both;
    
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
                 width: 100%;
                 height: 900px;
                 background-color:lightgray;
                 
             }
  #formstyle2
    {
      height:auto;
      width:680px;
      margin:0 auto;
    
      z-index:10;
     background-color:white;
      border-radius:6px;
    }
    #formstyle2:target, #formstyle2:target + #cover {
      display:block;
      opacity:2;
    }
    #skills-style{
        width:100px;
        height:20px;
        color:white;
 
          background-color:blueviolet;
          border-radius:6px;
    }
    #divbox{
         background-color: black;
          height: 68px;
          width: 100%;
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
<body id="outer-layer">
 <form id="form1" runat="server">
  <!--==========================
    Header
  ============================-->

      <header id="heade" style="position:fixed;top:0px;">
    <div class="container-fluid">
        <br />
      <div id="logo" class="pull-left" style=" position:fixed;left:50px;"> 
          <a href="../index.aspx">
          <img src="../Account/QlityGigs_Log.png" />
              </a>
       
      
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
         <li><p style="color:blue"> <a href="RequestorDashboard.aspx" style="color:black;font-size:small;">Dashboard</a></p> </li>

             <li><p style="color:blue"> <a href="Account/Logins.aspx" style="color:black;font-size:small;">Log Out</a></p> </li>
     
        </ul>


      </nav><!-- #nav-menu-container -->
    </div>
  </header>
    


  

     <div ><br /><br />  
         <br /><br /><br />
         <br/><br/>
        
       


            <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <div id="formstyle2">
                    <h3 >View Gigs</h3>
                     <hr />
                    <br />
                    <asp:Label ID="viewgig" runat="server" Text=""></asp:Label>

                </div>
               </div>
         </div>
      
    <br /></div>


 
 <%-- <footer id="footer">
   

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>QlityGigs</strong>. All Rights Reserved
      </div>
      <div class="credits">
       
        Designed by <a href="#">QlityGigs</a>
      </div>
    </div>
  </footer>--%><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <!-- Contact Form JavaScript File -->
  <script src="/Homepage/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="/Homepage/js/main.js"></script>
 </form>
</body>
</html>