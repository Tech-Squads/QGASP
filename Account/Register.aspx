<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="QlityG.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
    
   <div style="text-align:center;" >
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <br />
        <h4>Create New account</h4>
        <hr /><br />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email</asp:Label>--%>
           <div class="col-md-offset-2 col-md-8">
           <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default" TextMode="Email"  placeholder="Email Address" Width="349px" />         
           </div>
           <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
           CssClass="text-danger" ErrorMessage="The Email field is required." />
        </div>

        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtPassword" CssClass="col-md-2 control-label">Password</asp:Label>--%>
             <div class="col-md-offset-2 col-md-8">
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password"  CssClass="btn btn-default" placeholder="New Password" Width="349px" />
              
            </div>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
               CssClass="text-danger" ErrorMessage="The Password field is required." />
        </div>
        <div class="form-group">
            <%--<asp:Label runat="server" AssociatedControlID="txtConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>--%>
             <div class="col-md-offset-2 col-md-8">
                <asp:TextBox runat="server" ID="txtConfirmPassword" TextMode="Password" CssClass="btn btn-default" placeholder="Connfirm-Password" Width="349px" />
                
            </div>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassword"
             CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
            <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
            CssClass="text-danger" Display="Dynamic" ErrorMessage="The Passwords do not match!" />
        </div>

        <div class="form-group">
          <div class="col-md-offset-2 col-md-8">
           <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" BorderColor="Blue" ForeColor="Blue"/>
           </div>
        </div>

    </div>
       </div>
</asp:Content>

