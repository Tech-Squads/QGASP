<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedInMaster.Master" AutoEventWireup="true" CodeBehind="RequestorProfile.aspx.cs" Inherits="QlityG.RequestorProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-horizontal">
        <h4>Update Profile</h4>
        <hr />
        <asp:Literal ID="ErrorM" runat="server"></asp:Literal>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
       
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtEmail"  CssClass="form-control" Enabled="False" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />    
        </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtName" CssClass="col-md-2 control-label">Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The Name field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSurname" CssClass="col-md-2 control-label">Surname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtSurname"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSurname"
                    CssClass="text-danger" ErrorMessage="The Surname field is required." />
            </div>
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCountry" CssClass="col-md-2 control-label">Country</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtCountry"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountry"
                    CssClass="text-danger" ErrorMessage="The Country field is required." />    
        </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtCompany" CssClass="col-md-2 control-label">Company/Organisation</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtCompany"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCompany"
                    CssClass="text-danger" ErrorMessage="The Company field is required." />    
        </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="Create" Text="Create Profile" CssClass="btn btn-default" OnClick="UpdateProfile_Click"  />
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="Update" Text="Update Profile" CssClass="btn btn-default" OnClick="Update_Click" />
            </div>
        </div>
    </div>







</asp:Content>
