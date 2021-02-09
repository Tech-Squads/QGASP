

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateGig.aspx.cs" Inherits="QlityG.CreateGig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <meta name="google-signin-client_id" content="1054218211676-etkbdtbaicnj05nfd897r8rja5iuj1no.apps.googleusercontent.com"/>
    <script src="https://apis.google.com/js/api.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="Gigstyle/css/inputTags.css" rel="stylesheet" />
    <script src="Gigstyle/js/inputTags.jquery.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
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
      height:360px;
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
     
        background:lightgray;
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
                 background-color:lightgrey;
                /* background: url(/assets/images/1.jpg) no-repeat center center fixed;*/
          
                 
             }
             #header{
            /*     background-color:lightcyan;*/
               
             }

             #skills_layer{
                   width:360px;
                    background-color:white;
                     margin:0 auto;
                    height:40px;
                   position:relative;
                    z-index:10;
             }
   #loginScreenin
    {
      height:350px;
      width:400px;
      margin:0 auto;
      position:relative;
      z-index:10;
    
     /* background: url(login.png) no-repeat;*/
/*     background-color:gainsboro;*/
      background-color:white;
      /*border:5px solid #cccccc;*/
      border-radius:6px;
      text-align:center;
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
        
      <div id="logo" class="pull-left"> <img src="../Account/QlityGigs_Log.png" />
          
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          

            <li><p style="color:blue"> <a href="RequestorDashboard.aspx" style="color:cornflowerblue;font-size:medium;">Dashboard</a></p> </li>

      <li><p style="color:blue"> <a href="Account/Logins.aspx" style="color:cornflowerblue;font-size:medium;">Log Out</a></p> </li>
     
        </ul>
      </nav><!-- #nav-menu-container -->
    </div><br />
  </header><!-- #header -->

     <div id="outer-layer"> 
         <br /><br />
         <br/><br/><br/><br />   
        
         <div>
             <div id="formstyl" style="text-align:center;"><br />
                
      
  <div id="loginScreenin">
        
         <div style="text-align:center"><br />    

             <p style="font-size:16px;color:black;">Create Gig</p>
              <div class="form-group"> 
              <div>       
               <asp:TextBox runat="server" id="gigTitle" type="text" name="name"  CssClass="btn btn-default" placeholder="Enter Title of the Gig *"  Width="360px" Height="40px" required="required" /><br/>
               </div>
           </div>

            <div class="form-group">
             <asp:TextBox runat="server" ID="gDescription" name="message" CssClass="btn btn-default" placeholder=" Gig Description"   Width="360px" Height="50px" /> <br/>
           </div>

        <div >  
         <div>
         <label for="form_name">Select a skill *</label> <br />
         </div>
         </div>
             <div id="skills_layer">
            <asp:TextBox ID="SkillsRequired" CssClass="btn btn-default"  runat="server"  Width="360px" Height="50px"/><br /> 
            </div>
 <script>
        


     $('#SkillsRequired').inputTags({
               autocomplete: {
                   values: ['jQuery', 'Java', 'C++', 'Javascript', 'C#', 'ReactJs', 'ReactJs ', 'Sql', 'React', 'MongoDb', 'Html5', 'CSS', 'Bootstrap'],
                   only: false
               },
               max: 8,
               create: function () {
                   console.log('Tag added !');
               }
           });

 </script>

        <br />
        

         
          
                <div class="form-group">
          <div class="col-md-offset-2 col-md-8">
                                    
              
              <asp:Label ID="Label1" runat="server"  ForeColor="blue" Text="" />    
         
           </div>
          </div>

         <div class="form-group">
          <div class="col-md-offset-2 col-md-8">

        <asp:Button runat="server" id="AddGig" CssClass="btn btn-default" Text="Create"  BorderColor ="green" ForeColor="Green" OnClick="AddGig_Click"  />
             
               <asp:Button runat="server" id="update" CssClass="btn btn-default" Text="Update"  BorderColor ="Blue" ForeColor="blue" OnClick="update_Click"  />
           <asp:Button runat="server" id="Delete" CssClass="btn btn-default" Text="Delete"  BorderColor ="red" ForeColor="blue" OnClick="Delete_Click"  />
          <br />
               <asp:Label ID="ErrorMsg" runat="server"  ForeColor="red" Text="" />   
          </div>
           </div>
             
        <div style="text-align:center">
         <br/><br/>
      
        </div>

</div>
  </div> 
     </div>      
         </div>   

         </div>
      
  <footer id="footer">
    <div class="containe">
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