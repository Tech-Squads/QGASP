<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GiggerDashboards.aspx.cs" Inherits="QlityG.GiggerDashboards" %>

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
      height:670px;
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
                <td style="color:lavender">............</td> 

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
       
 
      <div  style="text-align:center;">
          <h4 style="color:dodgerblue;">View Gigs</h4>
      </div>

    
  <div id="loginScreen" style="text-align:center"><br /><hr />

  <h5 style="color:black;font-size:17px;"><i class="ace-icon fa fa-user"></i><a href="#loginScreens" > User Profile</a> </h5><br />
  <%--<h5 style="color:black;font-size:17px;"><i class="ace-icon fa fa-plus"></i><a href="CreateGigs.aspx">Create Gig</a> </h5><br />--%>

      <div id="loginScreens" style="text-align:center;">
        <a href="#" class="cancel">x</a><br />


        <h3 style="color:black;font-size:20px;">Update Profile</h3>

    <%--      <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />--%>
       
         <div class="form-group">
            <%--<asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email Address</asp:Label>--%>
            <div style="text-align:center">
                <asp:TextBox runat="server" ID="txtEmail"  CssClass="btn btn-default" Enabled="False" placeholder="Email Address" Width="250px" />
                  
        </div>
             
        </div>
        
        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtName" CssClass="col-md-2 control-label">Name</asp:Label>--%>
            <div style="text-align:center">
                <asp:TextBox runat="server" ID="txtName" CssClass="btn btn-default" placeholder="Name" Width="250px"  />
               
            </div>
           
        </div>
        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtSurname" CssClass="col-md-2 control-label">Surname</asp:Label>--%>
             <div style="text-align:center">
                <asp:TextBox runat="server" ID="txtSurname"  CssClass="btn btn-default" placeholder="Surname" Width="250px" />
              
            </div>
             
        </div>
        
        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtCountry" CssClass="col-md-2 control-label">Country</asp:Label>--%>
              <div style="text-align:center">
                <asp:TextBox runat="server" ID="txtCountry"  CssClass="btn btn-default" placeholder="Country" Width="250px"  />
                   
        </div>
             
        </div>

        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtCompany" CssClass="col-md-2 control-label">Company/Organisation</asp:Label>--%>
            <div style="text-align:center">
                <asp:TextBox runat="server" ID="txtCompany"  CssClass="btn btn-default" placeholder="Company/Organization" Width="250px"  />
                  
        </div>
           
        </div>

                <div class="form-group">
            <%--<asp:Label runat="server" AssociatedControlID="txtEducation" CssClass="col-md-2 control-label">Education</asp:Label>--%>
              <div style="text-align:center">
                <asp:TextBox runat="server" ID="txtEducation"   TextMode="MultiLine"  CssClass="btn btn-default" placeholder="Education" Width="250px" /><br />
                
        </div>
        </div>
                <div class="form-group">
            <%-- <asp:Label runat="server" AssociatedControlID="txtReferences" CssClass="col-md-2 control-label">References</asp:Label>--%>
          <div style="text-align:center">
             <asp:TextBox runat="server" ID="txtReferences"   TextMode="MultiLine" CssClass="btn btn-default" placeholder="References" Width="250px" /><br />
         
            </div>
        </div>

             <div class="form-group">
            <%-- <asp:Label runat="server" AssociatedControlID="txtPastProjectName" CssClass="col-md-2 control-label">Past Project Name</asp:Label>--%>
            <div style="text-align:center">
            <asp:TextBox runat="server" ID="txtPastProjectName"  CssClass="btn btn-default" placeholder="Past Project Name" Width="250px" /><br />
              
            </div>
            </div>

            <div class="form-group">
            <%-- <asp:Label runat="server" AssociatedControlID="txtPastProjectDetails" CssClass="col-md-2 control-label">Past Project Details</asp:Label>--%>
           <div style="text-align:center">
           <asp:TextBox runat="server" ID="txtPastProjectDetails"   TextMode="MultiLine"  CssClass="btn btn-default" placeholder="Past Project Details" Width="250px" /><br />
                 
            </div>
            </div>

              <div class="form-group">
                 <%--<asp:Label runat="server" AssociatedControlID="txtPastProjectDuration" CssClass="col-md-2 control-label">Past Project Duration</asp:Label>--%>
                  <div style="text-align:center">
               <asp:TextBox runat="server" ID="txtPastProjectDuration" CssClass="btn btn-default" placeholder="Past Project Duration" Width="250px" /><br />
                
                </div>
                </div>

        <div class="form-group">
             <div style="text-align:center">
                <asp:Button runat="server" ID="Create" Text="Create " CssClass="btn btn-default"  BackColor="blue"  BorderColor="white" ForeColor="white" OnClick="Create_Click" />
                <asp:Button runat="server" ID="Update" Text="Update " CssClass="btn btn-default"  BackColor="purple" BorderColor="white" ForeColor="white" OnClick="Update_Click" /><br />
               <%--  <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
               CssClass="text-danger" ErrorMessage="The Email field is required." />--%> <br />
                  <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
             CssClass="text-danger" ErrorMessage="The Name field is required*" /><br />
                  <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSurname"
               CssClass="text-danger" ErrorMessage="The Surname field is required*" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountry"
             CssClass="text-danger" ErrorMessage="The Country field is required*" /> <br />
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEducation"
                    CssClass="text-danger" ErrorMessage="The Education field is required." />  <br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtReferences"
            CssClass="text-danger" ErrorMessage="The References field is required." /> <br />
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectName"
                    CssClass="text-danger" ErrorMessage="The Past Project Name field is required." /> <br />
                 <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectDetails"
                    CssClass="text-danger" ErrorMessage="The Past Project Details field is required." /><br />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectDuration"
                    CssClass="text-danger" ErrorMessage="The Past Project Duration field is required." /> 
            </div>
        </div>
     </div>
    
         <div class="form-group"> 
              <%--<asp:Button  ID="RequestorType" Text="Update Profile" runat="server"  CssClass="btn btn-default"  BorderColor="Blue" ForeColor="blue" Width="150px" />--%>
           </div>
      <div class="form-group">
          <h4 style="color:black;"></h4>
          <hr />
      </div>
       <div class="form-group">
        
       </div>
       <div>
        <label id="ErrorM" runat="server" visible="false"> Something went wrong please load page again!</label>
    </div>

  </div>

        

    


    <div class="container">
        
         <div style="text-align:center"><br />    


             
        <div style="text-align:center">
         <br/><br/>
      
        </div>


        
        </div></div>
     <br />
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