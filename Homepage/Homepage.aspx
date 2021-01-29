<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="QlityG.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

         <style type="text/css">
                #heade{
                 background-color:black;
                 height:68px;
             width:100%;
                    
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
    
    #loginScreen
    {
      height:380px;
      width:340px;
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
  
 

             .auto-style1 {
                 display: block;
                 width: 100%;
                 height: calc(2.25rem + 2px);
                 font-size: 1rem;
                 font-weight: 400;
                 line-height: 1.5;
                 color: #495057;
                 background-clip: padding-box;
                 border-radius: .25rem;
                 transition: none;
                 border: 1px solid #ced4da;
                 margin-left: 0;
                 background-color: #fff;
             }
  
 

  </style>

    <!-- Favicons -->
  <link href="../Account/QlityGigs_Log.png" rel="icon" />

  <link href="img/apple-touch-icon.png" rel="apple-touch-icon" />

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet" />

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  <link href="lib/animate/animate.min.css" rel="stylesheet" />
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet" />
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet" />

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet" />
    
</head>
<body>

  <!--==========================
    Header
  ============================-->
  <header id="header">
       <div id="heade" style="position:fixed;top:2px;">
    <div class="container-fluid">

      <div id="logo" class="pull-left" style=" position:relative;left:10px;top:10px;"> <img src="../Account/QlityGigs_Log.png" />
       
      
      </div>

        <nav id="nav-menu-container">
        <ul class="nav-menu" style=" position:relative;right:10px;top:20px;">
          <li class="menu-active"><a href="#intro">Home</a></li>
          <li><a href="#about">About Us</a></li>
          <li><a href="#howitworks">How it works</a></li>
      
          <li class="menu-has-children" style="background-color:cadetblue;border-radius:5px;"><a href="../Account/Registeres.aspx">Join</a></>
         
          </li>
          <li><a href="../Account/Logins.aspx">Login</a></li>
        </ul>
      </nav>
    </div>
           </div>
  </header><!-- #header -->

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro">
    <div class="intro-container">
      <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

        <ol class="carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

          <div class="carousel-item active">
            <div class="carousel-background"><img src="img/intro-carousel/1.jpg" alt="" /></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2>Quality Gig</h2>
                <p>We provide quality assurance.</p>
                <a href="#featured-services" class="btn-get-started scrollto">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item">
            <div class="carousel-background"><img src="img/intro-carousel/2.jpg" alt="" /></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2></h2>
                <p></p>
                  
                <a href="../Account/Logins.aspx" class="btn-get-started scrollto">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item">
            <div class="carousel-background"><img src="img/intro-carousel/3.jpg" alt="" /></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2></h2>
                <p></p>
                 <a href="../Account/Logins.aspx" class="btn-get-started scrollto">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item">
            <div class="carousel-background"><img src="img/intro-carousel/4.jpg" alt="" /></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2></h2>
                <p></p>
                <a href="../Account/Logins.aspx" class="btn-get-started scrollto">Get Started</a>
              </div>
            </div>
          </div>

          <div class="carousel-item">
            <div class="carousel-background"><img src="img/intro-carousel/5.jpg" alt="" /></div>
            <div class="carousel-container">
              <div class="carousel-content">
                <h2></h2>
                <p></p>
               <a href="../Account/Logins.aspx" class="btn-get-started scrollto">>Get Started</a>
              </div>
            </div>
          </div>

        </div>

        <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>

        <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

      </div>
    </div>
  </section><!-- #intro -->

  <main id="main">

    <!--==========================
      Featured Services Section
    ============================-->
   <section id="howitworks">
      <div class="container">

        <header class="section-header wow fadeInUp">
          <h3>How it works</h3>
          <p></p>
        </header>

        <div class="row">



        </div>

      </div>
    </section>

    <!--==========================
      About Us Section
    ============================-->
    <section id="about">
      <div class="container">

        <header class="section-header">
          <h3>About Us</h3>
          <p></p>
        </header>

        <div class="row about-cols">

          <div class="col-md-4 wow fadeInUp">
            <div class="about-col">
              <div class="img">
                <img src="img/about-mission.jpg" alt="" class="img-fluid" />
                <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Mission</a></h2>
              <p>
               
              </p>
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
            <div class="about-col">
              <div class="img">
                <img src="img/about-plan.jpg" alt="" class="img-fluid" />
                <div class="icon"><i class="ion-ios-list-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Plan</a></h2>
              <p>
               
              </p>
            </div>
          </div>

          <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
            <div class="about-col">
              <div class="img">
                <img src="img/about-vision.jpg" alt="" class="img-fluid" />
                <div class="icon"><i class="ion-ios-eye-outline"></i></div>
              </div>
              <h2 class="title"><a href="#">Our Vision</a></h2>
              <p>
               
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #about -->

  
  

   

   

  

    <section id="contact" class="section-bg wow fadeInUp">
      <div class="container">

        <div class="section-header">
          <h3>Contact Us</h3>
          <p></p>
        </div>

        <div class="row contact-info">

          <div class="col-md-4">
            <div class="contact-address">
              <i class="ion-ios-location-outline"></i>
              <h3>Address</h3>
              <address>55 Richards drive, Midrand 1685,
Johannesburg,South Africa
</address>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-phone">
              <i class="ion-ios-telephone-outline"></i>
              <h3>Phone Number</h3>
              <p><a href="tel:+155895548855">+27 86 551 6608<br />
 +27 11 053 8432</a></p>
            </div>
          </div>

          <div class="col-md-4">
            <div class="contact-email">
              <i class="ion-ios-email-outline"></i>
              <h3>Email</h3>
              <p><a href="#">info at(@)lubanzidash(-)ictcdot(.)codot(.)za</a></p>
            </div>
          </div>

        </div>

        <div class="form">
          <div id="sendmessage">Your message has been sent. Thank you!</div>
          <div id="errormessage"></div>
          
            <div class="form-row">
              <div class="form-group col-md-6">
                <input type="text" name="name" class="auto-style1" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                <div class="validation"></div>
              </div>
              <div class="form-group col-md-6">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                <div class="validation"></div>
              </div>
            </div>
            
            <div class="form-group">
              <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
              <div class="validation"></div>
            </div>
            <div class="form-group">
              <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
              <div class="validation"></div>
            </div>
            <div class="text-center"><button type="submit">Send Message</button></div>
         
        </div>

      </div>
    </section><!-- #contact -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
            <h5></h5>
            <p></p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">Home</a></li>
              <li><i class="ion-ios-arrow-right"></i> <a href="#">About us</a></li>
            
              <li><i class="ion-ios-arrow-right"></i> <a href="#">How it works</a></li>
   
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
                       55 Richards drive<br /> Midrand<br />

1685
              <strong>Phone:</strong> +27 86 551 6608<br/>
 +27 11 053 8432
              <strong>Email:</strong> info at(@)lubanzidash(-)ictcdot(.)codot(.)za<br/>
            </p>

         <%--   <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>--%>

          </div>



        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Qlity Gigs</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=BizPage
        -->
        Designed by <a href="#">Qlity Gigs</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <script src="lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
