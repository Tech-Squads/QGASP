<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profilecreate.aspx.cs" Inherits="QlityG.profilecreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<div>

    <hr />
    <h3 style="text-align:center">
        <asp:Button ID="RequestorType" Text="Requestor" runat="server" OnClick="RequestorType_Click" />
        <a runat="server" href="~/Account/Requestor">Requestor</a>
    </h3>

    <br />
    <p style="text-align:center">OR</p>
    <h3 style="text-align:center">
        <asp:Button ID="GiggerProfile" Text="Gigger" runat="server" OnClick="GiggerProfile_Click" />        
        <a runat="server" href="~/Account/Gigger">Gigger</a>
    </h3>
</div>
</asp:Content>
