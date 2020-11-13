<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedInMaster.Master" AutoEventWireup="true" CodeBehind="ViewGigs.aspx.cs" Inherits="QlityG.ViewGigs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<div class="card" style="width: 18rem;" id="GigCard" runat="server">
  <div class="card-body">
    <h5 class="card-title" id="GigTitle" runat="server"></h5>
    <h6 class="card-subtitle mb-2 text-muted" id="DueDate" runat="server"></h6>
    <p class="card-text" id="gDescription" runat="server"></p>
    <a href="#" class="card-link">ACCEPT</a>
    <a href="#" class="card-link">VIEW</a>
  </div>
</div>



</asp:Content>
