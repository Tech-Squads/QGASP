<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="QlityG.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %></h2>
     <link href="StyleSheet1.css" rel="stylesheet" />
    <link href="LoginStyle.css" rel="stylesheet" />
  
    <div class="containers"><br /> <br /> 
        <div class="second-con" style="text-align:center">
    <div class="form-horizontal"> 
   
                  
                   
                     <asp:Label ID="Label1" runat="server" Text=""/><br />
               
                       <h4>Login</h4><br />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <%--<asp:Label runat="server" AssociatedControlID="txtEmail" CssClass="col-md-2 control-label"></asp:Label>--%>
                         <div class="col-md-offset-2 col-md-8">
                            <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default" TextMode="Email"  placeholder="Email Address" Width="349px" />
                          <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                          CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                         <div class="col-md-offset-2 col-md-8">
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="btn btn-default" placeholder="Password"  Width="349px"/>
                          
                       
                          <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" 
                           CssClass="text-danger" ErrorMessage="The password field is required." />
                                </div>
                         <label id="ErrorLogin" runat="server" visible="false"> Incorrect Email and Password!</label>
                         <div class="col-md-offset-2 col-md-8">
                            <div class="checkbox">
                                <asp:CheckBox runat="server"  ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label><br />
                            </div>
                        </div>

                          <div class="col-md-offset-2 col-md-8">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default"  BorderColor="Blue" ForeColor="Blue" Width="100px" />
                        </div>
                         <div class="col-md-offset-2 col-md-8"> 
                        <p>
                         <%-- <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>--%>
                        <a href="Register.aspx">Register as a new user</a>
                        </p>
                             </div>
                          
                    </div>      
                   
                   
                </div>
               
               
       <b>OR</b><br /><br />
       <div style="text-align:center;" >
           <div class="col-md-offset-2 col-md-8">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>
       </div><br />
                
    </div>
        </div>


</asp:Content>
