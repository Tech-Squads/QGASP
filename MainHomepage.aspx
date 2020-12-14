<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainHomepage.aspx.cs" Inherits="QlityG.MainHomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Home</title>
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
      height:390px;
      width:360px;
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

  </style>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700,700i%7CRajdhani:400,600,700" rel="stylesheet" />
    <!-- Plugins Stylesheets -->
    <link href="assets/css/loader/loaders.css" rel="stylesheet" />
    <link href="assets/css/font-awesome/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/aos/aos.css" rel="stylesheet" />
    <link href="assets/css/swiper/swiper.css" rel="stylesheet" />
    <link href="assets/css/lightgallery.min.css" rel="stylesheet" />
  
   
    <!-- Template Stylesheet -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- Responsive Stylesheet -->
    <link href="assets/css/responsive.css" rel="stylesheet" />
</head>
<body>
 <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>

     <!-- Loader Start -->
    <div class="css-loader">
        <div class="loader-inner line-scale d-flex align-items-center justify-content-center"></div>
    </div>
    <!-- Loader End -->
    <!-- Header Start -->
    <header class="position-absolute w-100"  >
       
            <nav class="navbar navbar-expand-md navbar-light">
                <a class="navbar-brand" href="index.html">
                  <div class="covers">
 

                  </div>
                   
                    <img src="Account/QlityGigs_Logo_Transparent.png" style="width:250px;height:100px;" />

                </a>
                <div class="group d-flex align-items-center">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation"><span
                            class="navbar-toggler-icon"></span></button>
                    <a class="login-icon d-sm-none" href="#"><i class="fa fa-user"></i></a>
               
                </div>
                
                <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                        <li class="nav-item"><a class="nav-link" href="#">Contact Us</a></li>                       
                        <li class="nav-item"><a class="nav-link" href="#"></a></li>
                        <li class="nav-item"><a class="nav-link" href="#"></a></li>
                    </ul>
               
                </div>
            </nav>
        
    </header>
    
  
    <section class="services" style="background-color: transparent;background-image: url(/assets/images/gallery1.jpg)">
        <div class="container">
            <div class="title text-center">
                <h6></h6>
               
            </div>
            <div class="container">
                <div class="row">
                         
                    
                </div>
 <div class="styling-cover" style="text-align:center">
                       
   <form id="form2" runat="server">
        <div style="text-align:center">
         <br/><br/><br/><br/>
     
        </div>


  <div id="loginScreen">
      <h4>Login</h4>
        <div class="form-group"> 
              <div class="col-md-offset-2 col-md-8">
              <%-- <label for="form_name">Title/Name *</label> <br /> --%>         
               <asp:TextBox runat="server" id="gigTitle" type="text" name="name"  CssClass="btn btn-default" placeholder="Enter Title of the Gig *"  data-error="Title is required."    Width="349px" /><br /><br />
               </div>
          </div>



  </div>
 
   </form>
 </div>
   </div>
   </div><br /><br /><br /><br />
    </section>

    
   
   
    
      
    <script src="assets/js/jquery-3.3.1.js"></script>


    <!--Plugins-->
    <script src="assets/js/bootstrap.bundle.js"></script>
    <script src="assets/js/loaders.css.js"></script>
    <script src="assets/js/aos.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/lightgallery-all.min.js"></script>
    <!--Template Script-->
    <script src="assets/js/main.js"></script>



</body>
</html>

