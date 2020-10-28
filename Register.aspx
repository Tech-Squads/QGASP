<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="QlityG.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
        <form >
            <label>Email</label>
            <br />
           <input type="email" runat="server" id="email" />
            <br />
            <br />
            <label>Password</label>
            <br />
           <input type="password" runat="server" id="password" />
            
        </form>
    </div>
</asp:Content>
