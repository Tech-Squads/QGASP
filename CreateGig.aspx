<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedInMaster.Master" AutoEventWireup="true" CodeBehind="CreateGig.aspx.cs" Inherits="QlityG.CreateGig" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <link href="Scripts/StyleSheetGigs.css" rel="stylesheet" />


      <div style="text-align: center;">
        <h4>Create Gig</h4>
        <hr />       
           <div class="form-group"> 
               <label for="form_name">Title/Name *</label> <br />
               <div class="col-md-offset-2 col-md-8">
               <asp:TextBox runat="server" id="gigTitle" type="text" name="name"  CssClass="btn btn-default" placeholder="Enter Title of the Gig *" required="required" data-error="Title is required."    Width="349px" /><br /><br />
               </div>
           </div>
                                   
                               
           <div class="form-group">
            <div class="col-md-offset-2 col-md-8">
           <label for="form_lastname">Due Date *</label><br />
            <asp:TextBox runat="server" id="dueDate" type="text" name="surname" CssClass="btn btn-default"  placeholder="Please enter the last day for a respond" required="required" data-error=" Field is required."  Width="349px" /> <br /><br />
          </div>
          </div>

         <div class="form-group">
           <div class="col-md-offset-2 col-md-8">
       
            <label for="form_email">Contact Email *</label><br />
            <asp:TextBox runat="server" id="ContactEmail" type="email" name="email" CssClass="btn btn-default" placeholder="eg John@gmail.com" required="required" data-error="Valid email is required."    Width="349px" /><br /><br />

           </div>
           </div>
                                    
                                     <div class="form-group">
                                    <div class="col-md-offset-2 col-md-8">
                                     <asp:CheckBoxList runat="server" ID="SkillsRequired" RepeatDirection="Horizontal"  CssClass="btn btn-default"  Width="400px">
                                            <asp:ListItem>Java</asp:ListItem>
                                            <asp:ListItem>C#</asp:ListItem>
                                            <asp:ListItem>RPA</asp:ListItem>
                                            <asp:ListItem>Testing</asp:ListItem>
                                            <asp:ListItem>Automation</asp:ListItem>
                                            <asp:ListItem>ReactJS</asp:ListItem>
                                            </asp:CheckBoxList> 
                                     </div>
                              
                                     </div>

                                
                             <div class="form-group">
                                    <div class="col-md-offset-2 col-md-8">
                                       
                                            <br /><label for="form_message">Description of Gig *</label><br />
                                        <asp:TextBox runat="server" id="gDescription" name="message" CssClass="btn btn-default" placeholder="Write your message here." rows="5" required="required" data-error="Please, leave us a message." TextMode="MultiLine"  Width="400px" /> <br /><br />
                                    </div>
                             </div>
                             <div class="form-group">
                             <div class="col-md-offset-2 col-md-8">
                             <asp:Button runat="server" id="AddGig" CssClass="btn btn-default" Text="Create" OnClick="AddGig_Click" BorderColor ="Blue" ForeColor="Green"/>
                             </div>
                             </div>



</div>
</asp:Content>

