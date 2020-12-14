<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatingGig.aspx.cs" Inherits="QlityG.CreatingGig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
          <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="Gigstyle/css/inputTags.css" rel="stylesheet" />
    <script src="Gigstyle/js/inputTags.jquery.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
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
      width:200px;
      
    
  /*    position:relative;
      z-index:10;*/
    
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
       #loginScreens
    {
      height:400px;
      width:300px;
  /*    margin:0 auto;*/
      position:relative;
      z-index:10;
      display:none;
     /* background: url(login.png) no-repeat;*/
/*     background-color:gainsboro;*/
      background-color:cornflowerblue;
      /*border:5px solid #cccccc;*/
      border-radius:6px;
    }
    #loginScreens:target, #loginScreens:target + #cover{
      display:block;
      opacity:2;
    }
    .cancel
    {
      display:block;
      position:absolute;
      top:3px;
      right:2px;
      background:rgb(245,245,245);
      color:red;
      height:30px;
      width:35px;
      font-size:20px;
      text-decoration:none;
      text-align:center;
      font-weight:bold;
    }



      #creategig
    {
      height:500px;
      width:350px;
  /*    margin:0 auto;*/
      position:relative;
      z-index:10;
      display:none;
     /* background: url(login.png) no-repeat;*/
/*     background-color:gainsboro;*/
      background-color:cornflowerblue;
      /*border:5px solid #cccccc;*/
      border-radius:6px;
    }
    #creategig:target, #creategig:target + #cover{
      display:block;
      opacity:2;
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


          
       #loginScreenin
    {
      height:500px;
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
    

  <footer >
    <table  style="text-align:left">  
        <tr>  
            <td class="auto-style2" style="text-align:left"> <img src="Account/QlityGigs_Logo_Transparent.png" /></td> 
           
             <td  style="color:lavender">......................................... </td> 
             <td style="color:lavender">.............................................</td>  
           <td > 
               <p class="home-out" style="color:black;font-size:16px;text-align:right;">
                   <a href="../Homepage/Homepage.aspx"><b>About Us</b></a>
               </p>
           </td>  
                  <td style="color:lavender">............</td> 
             <td > 
               <p class="home-out" style="color:black;font-size:16px;text-align:right;">
                    <a href="#contact" class="tel"><b><i class="fa fa-phone" aria-hidden="true"></i> Contact Us</b></a>
               </p>
           </td>
                <td style="color:lavender;font-size:1px;">.......................................</td> 
             <td style="color:lavender;font-size:1px;">.......................................</td> 
            <td style="color:lavender;font-size:1px;">.......................................</td> 
            <td > 
               <p class="home-out" style="color:black;font-size:16px;text-align:right;">
                   <a href="Account/Logins.aspx"><b><i class="ace-icon fa fa-power-off" ></i> Logout</b></a>
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
       

  <div id="loginScreenin" style="text-align:center">
        
         <div style="text-align:center"><br />    

             <p style="font-size:16px;color:black;">Create Gig</p>
              <div class="form-group"> 
              <div class="col-md-offset-2 col-md-8">
              <%-- <label for="form_name">Title/Name *</label> <br /> --%>         
               <asp:TextBox runat="server" id="gigTitle" type="text" name="name"  CssClass="btn btn-default" placeholder="Enter Title of the Gig *"  data-error="Title is required."    Width="250px" /><br/><br/>
               </div>
           </div><br />


        <div class="form-group">             
                 <div class="col-md-offset-2 col-md-8">
               <%--  <label for="form_email">Contact Email *</label><br />--%>
                    <asp:TextBox runat="server" id="ContactEmail" type="email" name="email" CssClass="btn btn-default" placeholder="eg John@gmail.com"  data-error="Valid email is required."    Width="250px" /><br/><br/>
                </div>              
          </div>

           <div class="form-group">      
                
                 <div class="col-md-offset-2 col-md-8">
                    <%--  <label for="form_lastname">Due Date *</label><br />--%>
                <asp:TextBox runat="server" id="dueDate" type="text" name="surname" CssClass="btn btn-default"  placeholder="Please enter the last day for a respond"  data-error=" Field is required."  Width="250px" /><br/><br/>
                </div>              
          </div>

        <div class="form-group">  
         <div class="col-md-offset-2 col-md-8">
         <label for="form_name">Select a skill *</label> <br />
         </div>
         </div>
            <asp:TextBox ID="SkillsRequired" CssClass="btn btn-default"  runat="server" Width="50px" Height="300px" /><br /> 
            
       <script>
           //$('#tags').inputTags();

         <%--  $('#<%=TextBox1.ClientID%>').inputTags({
               tags: ['java','cirlce'],
               max:8
           }
           );--%>


           $('#SkillsRequired').inputTags({
               autocomplete: {
                   values: ['jQuery', 'Java', 'C++', 'Javascript','C#','ReactJs',,'ReactJs'],
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
                                       
         <%--    <br /><label for="form_message">Description of Gig *</label><br />--%>
           <asp:TextBox runat="server" id="gDescription" name="message" CssClass="btn btn-default" placeholder=" Gig Description" rows="5"  data-error="Please, leave us a message." TextMode="MultiLine"  Width="250px" /> <br/><br/>
           </div>
          </div>

         <div class="form-group">
          <div class="col-md-offset-2 col-md-8">
        <asp:Button runat="server" id="AddGig" CssClass="btn btn-default" Text="Create"  BorderColor ="Blue" ForeColor="Green" OnClick="AddGig_Click" />
           </div>
           </div>
             
        <div style="text-align:center">
         <br/><br/>
      
        </div>

             
        
        </div></div> 
     <br />
      <div class="copyright" style="color:purple;text-align:center;" >
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
  <script src="~/Homepage/lib/jquery/jquery.min.js"></script>
  <script src="~/Homepage/lib/jquery/jquery-migrate.min.js"></script>
  <script src="~/Homepage/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="~/Homepage/lib/easing/easing.min.js"></script>
  <script src="~/Homepage/lib/superfish/hoverIntent.js"></script>
  <script src="~/Homepage/lib/superfish/superfish.min.js"></script>
  <script src="~/Homepage/lib/wow/wow.min.js"></script>
  <script src="~/Homepage/lib/waypoints/waypoints.min.js"></script>
  <script src="~/Homepage/lib/counterup/counterup.min.js"></script>
  <script src="~/Homepage/lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="~/Homepage/lib/isotope/isotope.pkgd.min.js"></script>
  <script src="~/Homepage/lib/lightbox/js/lightbox.min.js"></script>
  <script src="~/Homepage/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="~/Homepage/js/main.js"></script>
        </div>
    </form>
</body>
</html>