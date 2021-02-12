<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pwordsuccsspage.aspx.cs" Inherits="QlityG.Account.pwordsuccsspage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Reset password</title>
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
     
   
      border-radius:10px;
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
                 height: 590px;
                 background-color:lightgrey;
              
             }
             #button{
                background-color:forestgreen;
                 border:1px solid brown;
                 border-radius:5px;
                 text-align:center;
                 color:white;
                 width:90px;
                 height:40px;
                 border-color:black;
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
      <div id="logo" class="pull-left" style=" position:fixed;left:40px;"><a href="../index.aspx"><img src="../Account/QlityGigs_Log.png" />
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
        <br /><br />
         <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <h4 style="color:black;">Your password was successfully updated. </h4>
  
         <br /><br />
        <br /> <a href="Logins.aspx">
             <div id="button" style="text-align:center;position:relative;left:150px;"><h4 style="position:relative;top:1px;">Login</h4></div>

          </a> 

         </div>
      </div>
    </div>



  <script src="/Homepage/js/main.js"></script>
 </form>
</body>
</html>
