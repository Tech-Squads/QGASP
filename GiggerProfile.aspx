﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedInMaster.Master" AutoEventWireup="true" CodeBehind="GiggerProfile.aspx.cs" Inherits="QlityG.GiggerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
            <asp:Label runat="server" AssociatedControlID="txtEducation" CssClass="col-md-2 control-label">Education</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtEducation"  CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEducation"
                    CssClass="text-danger" ErrorMessage="The Education field is required." />    
        </div>
        </div>

    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtSkills" CssClass="col-md-2 control-label">Skills</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtSkills"  CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSkills"
                    CssClass="text-danger" ErrorMessage="The Skills field is required." />    
        </div>
        </div>

    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPastProjectName" CssClass="col-md-2 control-label">Past Project Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPastProjectName"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectName"
                    CssClass="text-danger" ErrorMessage="The Past Project Name field is required." />    
        </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPastProjectDuration" CssClass="col-md-2 control-label">Past Project Duration</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPastProjectDuration"  CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectDuration"
                    CssClass="text-danger" ErrorMessage="The Past Project Duration field is required." />    
        </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtPastProjectDetails" CssClass="col-md-2 control-label">Past Project Details</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPastProjectDetails"  CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectDetails"
                    CssClass="text-danger" ErrorMessage="The Past Project Details field is required." />    
        </div>
        </div>

    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtReferences" CssClass="col-md-2 control-label">References</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtReferences"  CssClass="form-control" TextMode="MultiLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtReferences"
                    CssClass="text-danger" ErrorMessage="The References field is required." />    
        </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" ID="UpdateProfile" Text="Update Profile" CssClass="btn btn-default" OnClick="UpdateProfile_Click"  />
            </div>
        </div>
    










</asp:Content>