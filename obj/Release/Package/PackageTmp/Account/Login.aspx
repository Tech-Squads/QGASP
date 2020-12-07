<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QlityG.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
     <div style="text-align:center;" >
   <%-- <div class="row">
        <div class="col-md-8">
            <section id="loginForm">--%>
                 <div class="form-horizontal">    
                    <hr />
                       <h4>Use local account to login.</h4><br />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <%--<asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label"></asp:Label>--%>
                         <div class="col-md-offset-2 col-md-8">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default" TextMode="Email"  placeholder="Email Address" Width="349px" />
                          
                        </div>
                          <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                          CssClass="text-danger" ErrorMessage="The email field is required." />
                    </div>
                    <div class="form-group">
                       <%-- <asp:Label runat="server" AssociatedControlID="txtPassword" CssClass="col-md-2 control-label">Password</asp:Label>--%>
                           <div class="col-md-offset-2 col-md-8">
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="btn btn-default" placeholder="Password"  Width="349px"/>
                          
                        </div>
                          <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" 
                           CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                    <div class="form-group">
                          <div class="col-md-offset-2 col-md-8">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                           <div class="col-md-offset-2 col-md-8">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p>
                   <%-- <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>--%>
                    <a href="Register.aspx">Register as a new user</a>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
                            <label id="ErrorLogin" runat="server" visible="false"> Incorrect Email and Password!</label>
          <%--  </section>--%>
        <hr />
       <div style="text-align:center;" >
           <div class="col-md-offset-2 col-md-8"><br />
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>
       </div><br /><br />
<%--    </div>--%>
</asp:Content>
