<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedInMaster.Master" AutoEventWireup="true" CodeBehind="CreateGig.aspx.cs" Inherits="QlityG.CreateGig" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="Scripts/StyleSheetGigs.css" rel="stylesheet" />

    <div class="container">] <div class=" text-center mt-5 ">
        <h1>Create Gig</h1>
    </div>
    <div class="row ">
        <div class="col-lg-7 mx-auto">
            <div class="card mt-2 mx-auto p-4 bg-light">
                <div class="card-body bg-light">
                    <div class="container">
                        <form id="contact-form" role="form">                      
                        <div class="controls">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_name">Title/Name *</label> <asp:TextBox runat="server" id="gigTitle" type="text" name="name" class="form-control" placeholder="Enter Title of the Gig *" required="required" data-error="Firstname is required."/> </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_lastname">Due Date *</label> <asp:TextBox runat="server" id="dueDate" type="text" name="surname" class="form-control" placeholder="Please enter the last day for a response. *" required="required" data-error="Lastname is required."/> </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"> <label for="form_email">Contact Email *</label> <asp:TextBox runat="server" id="ContactEmail" type="email" name="email" class="form-control" placeholder="Please enter your email *" required="required" data-error="Valid email is required."/> </div>
                                    </div>
                                    
                                      <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group"><asp:CheckBoxList runat="server" ID="SkillsRequired">
                                            <asp:ListItem>Java</asp:ListItem>
                                            <asp:ListItem>C#</asp:ListItem>
                                            <asp:ListItem>RPA</asp:ListItem>
                                            <asp:ListItem>Testing</asp:ListItem>
                                            <asp:ListItem>Automation</asp:ListItem>
                                            <asp:ListItem>ReactJS</asp:ListItem>
                                            </asp:CheckBoxList> </div>
                                    </div>
                                    
                                </div>

                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group"> <label for="form_message">Description of Gig *</label> <asp:TextBox runat="server" id="gDescription" name="message" class="form-control" placeholder="Write your message here." rows="5" required="required" data-error="Please, leave us a message." TextMode="MultiLine"></asp:TextBox> </div>
                                    </div>
                                    <div class="col-md-12"><asp:Button runat="server" id="AddGig" class="btn btn-success btn-send pt-2 btn-block" Text="Create Gig" OnClick="AddGig_Click"/> </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div> <!-- /.8 -->
        </div> <!-- /.row-->
    </div>
</div>




</asp:Content>
