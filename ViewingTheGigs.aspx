<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewingTheGigs.aspx.cs" Inherits="QlityG.ViewingTheGigs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
     <style type="text/css">
    .button
    {
      width: 150px;
      padding: 10px;
      background-color: #FF8C00;
      box-shadow: -8px 8px 10px 3px rgba(0,0,0,0.2);
      font-weight:bold;
      text-decoration:none;
    }
    #cover{
      position:fixed;
      top:0;
      left:0;
      background:rgba(0,0,0,0.6);
      z-index:5;
      width:100%;
      height:100%;
      display:none;
    }
    #loginScreen
    {
      height:400px;
      width:700px;
      margin:0 auto;
      position:relative;
      z-index:10;
    
     /* background: url(login.png) no-repeat;*/
     background-color:white;
      /*border:5px solid #cccccc;*/
      border-radius:6px;
    }
    #loginScreen:target, #loginScreen:target + #cover{
      display:block;
      opacity:2;
    }
    
    #outerlayer{
        width:100%;
        height:70px;
     
        background:lightblue;
    }
    p.home-out a{
	text-decoration:none;
  
}
      p.home-out a:hover{
	color:red;
	border-bottom-style:solid;
	
}
   
       #outer {
          /*   background-image: url(/assets/images/gallery1.jpg);
             background-repeat: no-repeat;
             background-position: center;
             background-attachment: fixed;
            background: transparent;*/
  /*        background-color:aliceblue;*/
          background: url(/assets/images/gallery1.jpg) no-repeat center center fixed;
		
			background-size: cover;

           
         

           
         }
       #center {
 
    border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
    border-spacing: 0;
}
         th, td {
             text-align: left;
             padding: 16px;
         }
  </style>
    <!-- Favicons -->
  <link href="~/Homepage/img/favicon.png" rel="icon" />
  <link href="~/Homepage/img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet" />

  <!-- Bootstrap CSS File -->
  <link href="~/Homepage/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Libraries CSS Files -->
  <link href="~/Homepage/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  <link href="~/Homepage/lib/animate/animate.min.css" rel="stylesheet" />
  <link href="~/Homepage/lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
  <link href="~/Homepage/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
  <link href="~/Homepage/lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

  <!-- Main Stylesheet File -->
  <link href="~/Homepage/css/style.css" rel="stylesheet" />
      <link href="~/Content/bootstrap.css" rel="stylesheet" />
    
</head>
<body id="outer">
     <form id="form2" runat="server">
        <div>

          

      <%--  <li >  <img src="QlityGigs_Logo_Transparent.png"/> </li>
          <li class="menu-active"><a href="#intro">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#services"></a></li>
 
          <li><a href="#contact" ></a></li>
             <li><a href="#about"></a></li>
             <li><a href="#services"></a></li>
             <li><a href="#services"></a></li>--%>
 </div>

          <div>
    

  <footer ">
    <table  style="text-align:left">  
        <tr>  
                   <td class="auto-style2" style="text-align:left"> <img src="Account/QlityGigs_Logo_Transparent.png" /></td>  
             <td  style="color:lavender">......................................... </td> 
            
             <td  style="color:lavender;font-size:1px;">......................................... </td> 
             <td style="color:lavender;font-size:1px;">..........................................</td> 
              <td  style="color:lavender;font-size:1px;">......................................... </td> 
             <td style="color:lavender;font-size:1px;">..........................................</td>  
              <td  style="color:lavender;font-size:1px;">......................................... </td> 
             <td style="color:lavender;font-size:1px;">..........................................</td>  
               <td  style="color:lavender;font-size:1px;">......................................... </td> 
             <td style="color:lavender;font-size:1px;">..........................................</td>
           <td > 
               <p class="home-out" style="color:black;font-size:20px;text-align:right;">
                   <a href="/Homepage/Homepage.aspx"><i class="fa fa-home"></i> Home</a>
                  
               </p>
           </td>  
                  <td style="color:lavender">............</td> 
             <td > 
               <p class="home-out" style="color:black;font-size:20px;text-align:right;">
                   <a href="../Homepage/Homepage.aspx">About Us</a>
               </p>
           </td>
                <td style="color:lavender">............</td> 

            <td > 
               <p class="home-out" style="color:black;font-size:20px;text-align:right;">
                   <a href="#contact" class="tel"><i class="fa fa-phone" aria-hidden="true"></i> Contact Us</a>
               </p>
           </td>
	      
	        </tr> 
                 
	        <tr>  
	            <td class="auto-style2"></td>  
	            <td>  
	           
	            </td>  
	        </tr>  
	        <tr>  
	            <td class="auto-style2"> </td>  
	           <td>  
	             
	            </td>  
	        </tr>  
	    </table> 
       
    <div class="container">
       
        <div style="text-align:center">
         <br/><br/>
      
        </div>


  <div id="loginScreen" style="text-align:center"><br />

      <h5 style="color:black;font-size:17px;">Gigs Review</h5>
  
      <asp:Label ID="Label1" runat="server" Text="Label" style="text-align:center"/>

     
        
</div>
  </div>
     <br /><br /><br /><br /><br /><br />
      <div class="copyright" style="color:purple;text-align:center;">
        &copy; Copyright <strong>QlityGigs</strong>. All Rights Reserved
      </div>
      <div class="credits" style="text-align:center;">
        Designed by <a href="https://bootstrapmade.com/">QlityGigs</a>
      
    </div>

  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="~/Homepage/Homepage/lib/jquery/jquery.min.js"></script>
  <script src="~/Homepage/Homepage/lib/jquery/jquery-migrate.min.js"></script>
  <script src="~/Homepage/Homepage/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="~/Homepage/Homepage/lib/easing/easing.min.js"></script>
  <script src="~/Homepage/Homepage/lib/superfish/hoverIntent.js"></script>
  <script src="~/Homepage/Homepage/lib/superfish/superfish.min.js"></script>
  <script src="~/Homepage/Homepage/lib/wow/wow.min.js"></script>
  <script src="~/Homepage/Homepage/lib/waypoints/waypoints.min.js"></script>
  <script src="~/Homepage/Homepage/lib/counterup/counterup.min.js"></script>
  <script src="~/Homepage/Homepage/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="~/Homepage/Homepage/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="~/Homepage/Homepage/lib/lightbox/js/lightbox.min.js"></script>
  <script src="~/Homepage/Homepage/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="/Homepage/contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="~/Homepage/js/main.js"></script>
        </div>
    </form>
</body>
</html>