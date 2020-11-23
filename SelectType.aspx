<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedInMaster.Master" AutoEventWireup="true" CodeBehind="SelectType.aspx.cs" Inherits="QlityG.profilecreate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<div>

    <hr />
    <h3 style="text-align:center">
        <asp:Button Class="Button-Primary" ID="RequestorType" Text="Requestor" runat="server" OnClick="RequestorType_Click" />
       
    </h3>

    <br />
    <p style="text-align:center">OR</p>
    <h3 style="text-align:center">
        <asp:Button Class="Button-Primary" ID="GiggerProfile" Text="Gigger" runat="server" OnClick="GiggerProfile_Click" />        
       
    </h3>
</div>
    <div>
        <label id="ErrorM" runat="server" visible="false"> Something went wrong please load page again!</label>
    </div>
</asp:Content>
