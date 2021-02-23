<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestorEditP.aspx.cs" Inherits="QlityG.RequestorEditP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://apis.google.com/js/api.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="Gigstyle/css/inputTags.css" rel="stylesheet" />
    <script src="Gigstyle/js/inputTags.jquery.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
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
    height:420px;
      width:540px;
      margin:0 auto;
      position:relative;
      z-index:10;
    
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
                 height: 590px;
                 background-color:lightgray;
               /*  background-color:seashell;*/
                 /*background: url(/assets/images/1.jpg) no-repeat center center fixed;*/
        
                 
             }
   #header{
               /*  background-color:black;
                 height:40px;*/
               
             }
   .autocomplete {
  position: relative;
  display: inline-block;
}

input {
  border: 1px solid transparent;
  background-color: #f1f1f1;
  padding: 10px;
  font-size: 16px;
}

input[type=text] {
  background-color: #f1f1f1;
  width: 100%;
}

input[type=submit] {
  background-color: DodgerBlue;
  color: #fff;
  cursor: pointer;
}

.autocomplete-items {
  position: absolute;
  border: 1px solid #d4d4d4;
  border-bottom: none;
  border-top: none;
  z-index: 99;
  /*position the autocomplete items to be the same width as the container:*/
  top: 100%;
  left: 0;
  right: 0;
}

.autocomplete-items div {
  padding: 10px;
  cursor: pointer;
  background-color: #fff; 
  border-bottom: 1px solid #d4d4d4; 
}

/*when hovering an item:*/
.autocomplete-items div:hover {
  background-color: #e9e9e9; 
}

/*when navigating through the items using the arrow keys:*/
.autocomplete-active {
  background-color: DodgerBlue !important; 
  color: #ffffff; 
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
      <div id="logo" class="pull-left" style=" position:fixed;left:50px;"> <img src="../Account/QlityGigs_Log.png" />
       
      
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
        
              <%--<li  style=" position:relative;right:20px;" >Logged as ,<asp:Label ID="lblEmail" runat="server"  ForeColor="blue"></asp:Label></li>--%>
             <li  style=" position:relative;right:20px;" ><h4 style="color:blue"><a href="ViewGigsIndex.aspx" style="color:blue;font-size:small;">Home</a></h4></li>


                         <li  style=" position:relative;right:20px;" ><h4 style="color:blue"><a href="RequestorViewGig.aspx" style="color:blue;font-size:small;">View gigs</a></h4></li>
<%--            <li  style=" position:relative;right:20px;" ><h4 style="color:blue"><a href="RequestorDashboard.aspx" style="color:blue;font-size:small;">Dashboard</a></h4></li>--%>
          
             <li  style=" position:relative;right:0px;"><h4 style="color:blue"> <a href="Account/Logins.aspx" style="color:blue;font-size:small;">Log Out</a></h4> </li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  

     <div id="outer-layer">
         <br /><br /><br />
          
         <div>
             <div id="formstyle" style="text-align:center;"><br />
                 <h4>Edit Profile</h4>
                 
                 
          
                   <div class="form-group">
                 <div class="col-md-6">
              <div style="text-align:left;color:gray;">
                          First Name *
              </div>
                <asp:TextBox runat="server" ID="FirstName" CssClass="form-control" required="required" />
             
            </div>

                  <div class="col-md-6">
                      <div style="text-align:left;color:gray">
                          Last Name *
                      </div>
                   
                <asp:TextBox runat="server" ID="LastName" CssClass="form-control" required="required" />
              
            </div>
        </div>

     
                        
                 <div class="form-group">
                 <div class="col-md-12">
                 <div style="text-align:left;color:gray;">
                           Position
                </div> 
                  <asp:TextBox runat="server" ID="txtcompany" CssClass="form-control" /><br />              
                 
            </div>                
            </div> 

                   <div class="form-group">
                 <div class="col-md-12">
              <div style="text-align:left;color:gray;">
                           Education 
              </div> 
                  <asp:TextBox runat="server" ID="txteducation" CssClass="form-control"  /><br />
            </div>                
            </div>

                   <div class="form-group">
                 <div class="col-md-12">
              <div style="text-align:left;color:gray;">
                           Country/Region *
              </div> 
                               <div class="autocomplete">
                                    <asp:TextBox id="myInput" runat="server" width="500px" Height="35px"/>
 
                                </div><br />
            
                     <br /><br />
            </div>                
            </div>
                 <div class="form-group"><br />
            <div class="col-md-12" style="text-align:center">

          

                 <asp:Button runat="server" ID="Create" Text="Save" CssClass="btn btn-default"  BackColor="blue"   ForeColor="white" OnClick="Create_Click"   />
               <%-- <asp:Button runat="server" ID="Update" Text="Edit" CssClass="btn btn-default"  BackColor="green"  ForeColor="white" OnClick="Update_Click"   />--%><br />
           </div>
           </div>


                <label id="ErrorM" runat="server" visible="false"> Something went wrong please load page again!</label>
                 <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
             </div>
               
         </div>
      
    <br /></div>


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
     <script>
         function autocomplete(inp, arr) {
             /*the autocomplete function takes two arguments,
             the text field element and an array of possible autocompleted values:*/
             var currentFocus;
             /*execute a function when someone writes in the text field:*/
             inp.addEventListener("input", function (e) {
                 var a, b, i, val = this.value;
                 /*close any already open lists of autocompleted values*/
                 closeAllLists();
                 if (!val) { return false; }
                 currentFocus = -1;
                 /*create a DIV element that will contain the items (values):*/
                 a = document.createElement("DIV");
                 a.setAttribute("id", this.id + "autocomplete-list");
                 a.setAttribute("class", "autocomplete-items");
                 /*append the DIV element as a child of the autocomplete container:*/
                 this.parentNode.appendChild(a);
                 /*for each item in the array...*/
                 for (i = 0; i < arr.length; i++) {
                     /*check if the item starts with the same letters as the text field value:*/
                     if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {
                         /*create a DIV element for each matching element:*/
                         b = document.createElement("DIV");
                         /*make the matching letters bold:*/
                         b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";
                         b.innerHTML += arr[i].substr(val.length);
                         /*insert a input field that will hold the current array item's value:*/
                         b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";
                         /*execute a function when someone clicks on the item value (DIV element):*/
                         b.addEventListener("click", function (e) {
                             /*insert the value for the autocomplete text field:*/
                             inp.value = this.getElementsByTagName("input")[0].value;
                             /*close the list of autocompleted values,
                             (or any other open lists of autocompleted values:*/
                             closeAllLists();
                         });
                         a.appendChild(b);
                     }
                 }
             });
             /*execute a function presses a key on the keyboard:*/
             inp.addEventListener("keydown", function (e) {
                 var x = document.getElementById(this.id + "autocomplete-list");
                 if (x) x = x.getElementsByTagName("div");
                 if (e.keyCode == 40) {
                     /*If the arrow DOWN key is pressed,
                     increase the currentFocus variable:*/
                     currentFocus++;
                     /*and and make the current item more visible:*/
                     addActive(x);
                 } else if (e.keyCode == 38) { //up
                     /*If the arrow UP key is pressed,
                     decrease the currentFocus variable:*/
                     currentFocus--;
                     /*and and make the current item more visible:*/
                     addActive(x);
                 } else if (e.keyCode == 13) {
                     /*If the ENTER key is pressed, prevent the form from being submitted,*/
                     e.preventDefault();
                     if (currentFocus > -1) {
                         /*and simulate a click on the "active" item:*/
                         if (x) x[currentFocus].click();
                     }
                 }
             });
             function addActive(x) {
                 /*a function to classify an item as "active":*/
                 if (!x) return false;
                 /*start by removing the "active" class on all items:*/
                 removeActive(x);
                 if (currentFocus >= x.length) currentFocus = 0;
                 if (currentFocus < 0) currentFocus = (x.length - 1);
                 /*add class "autocomplete-active":*/
                 x[currentFocus].classList.add("autocomplete-active");
             }
             function removeActive(x) {
                 /*a function to remove the "active" class from all autocomplete items:*/
                 for (var i = 0; i < x.length; i++) {
                     x[i].classList.remove("autocomplete-active");
                 }
             }
             function closeAllLists(elmnt) {
                 /*close all autocomplete lists in the document,
                 except the one passed as an argument:*/
                 var x = document.getElementsByClassName("autocomplete-items");
                 for (var i = 0; i < x.length; i++) {
                     if (elmnt != x[i] && elmnt != inp) {
                         x[i].parentNode.removeChild(x[i]);
                     }
                 }
             }
             /*execute a function when someone clicks in the document:*/
             document.addEventListener("click", function (e) {
                 closeAllLists(e.target);
             });
         }

         /*An array containing all the country names in the world:*/
         var countries = ["Afghanistan", "Albania", "Algeria", "Andorra", "Angola", "Anguilla", "Antigua & Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia & Herzegovina", "Botswana", "Brazil", "British Virgin Islands", "Brunei", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central Arfrican Republic", "Chad", "Chile", "China", "Colombia", "Congo", "Cook Islands", "Costa Rica", "Cote D Ivoire", "Croatia", "Cuba", "Curacao", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands", "Faroe Islands", "Fiji", "Finland", "France", "French Polynesia", "French West Indies", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guam", "Guatemala", "Guernsey", "Guinea", "Guinea Bissau", "Guyana", "Haiti", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Isle of Man", "Israel", "Italy", "Jamaica", "Japan", "Jersey", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Kosovo", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Mauritania", "Mauritius", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montenegro", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauro", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "North Korea", "Norway", "Oman", "Pakistan", "Palau", "Palestine", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russia", "Rwanda", "Saint Pierre & Miquelon", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Korea", "South Sudan", "Spain", "Sri Lanka", "St Kitts & Nevis", "St Lucia", "St Vincent", "Sudan", "Suriname", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Timor L'Este", "Togo", "Tonga", "Trinidad & Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks & Caicos", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States of America", "Uruguay", "Uzbekistan", "Vanuatu", "Vatican City", "Venezuela", "Vietnam", "Virgin Islands (US)", "Yemen", "Zambia", "Zimbabwe"];

         /*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/
         autocomplete(document.getElementById("myInput"), countries);
     </script>
</body>
</html>
