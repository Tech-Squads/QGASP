<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateGigs.aspx.cs" Inherits="QlityG.CreateGigs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="Gigstyle/css/inputTags.css" rel="stylesheet" />
    <script src="Gigstyle/js/inputTags.jquery.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">

            <div >
                <h3>Create Gig</h3>
                <hr />
             
            </div>


<br />
    <div class="container">

        

         <div class="form-group"> 
              <div class="col-md-offset-2 col-md-8">
              <%-- <label for="form_name">Title/Name *</label> <br /> --%>         
               <asp:TextBox runat="server" id="gigTitle" type="text" name="name"  CssClass="btn btn-default" placeholder="Enter Title of the Gig *"  data-error="Title is required."    Width="349px" /><br /><br />
               </div>
           </div>


        <div class="form-group">             
                 <div class="col-md-offset-2 col-md-8">
               <%--  <label for="form_email">Contact Email *</label><br />--%>
                    <asp:TextBox runat="server" id="ContactEmail" type="email" name="email" CssClass="btn btn-default" placeholder="eg John@gmail.com"  data-error="Valid email is required."    Width="349px" /><br /><br />
                </div>              
          </div>

           <div class="form-group">      
                
                 <div class="col-md-offset-2 col-md-8">
                    <%--  <label for="form_lastname">Due Date *</label><br />--%>
                <asp:TextBox runat="server" id="dueDate" type="text" name="surname" CssClass="btn btn-default"  placeholder="Please enter the last day for a respond"  data-error=" Field is required."  Width="349px" /> <br /><br />
                </div>              
          </div>

        <div class="form-group">  
         <div class="col-md-offset-2 col-md-8">
         <label for="form_name">Select a skill *</label> <br />
         </div>
         </div>
            <asp:TextBox ID="SkillsRequired" runat="server" Width="200px" ></asp:TextBox><br />    
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
           <asp:TextBox runat="server" id="gDescription" name="message" CssClass="btn btn-default" placeholder="Write your message here." rows="5"  data-error="Please, leave us a message." TextMode="MultiLine"  Width="400px" /> <br /><br />
           </div>
          </div>

         <div class="form-group">
          <div class="col-md-offset-2 col-md-8">
        <asp:Button runat="server" id="AddGig" CssClass="btn btn-default" Text="Create"  BorderColor ="Blue" ForeColor="Green" OnClick="AddGig_Click"/>
           </div>
           </div>

            </div>    
            </div>
    </form>
</body>
</html>
