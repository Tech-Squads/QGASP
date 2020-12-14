<%@ Page Title="" Language="C#" MasterPageFile="~/LoggedInMaster.Master" AutoEventWireup="true" CodeBehind="ViewGigs.aspx.cs" Inherits="QlityG.ViewGigs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
     <div style="text-align:center;">
    <div class="card style=width: 18rem;justify-content:center" >
         
        <asp:PlaceHolder ID="PlaceH" runat="server">
            <asp:Label ID="titletext" runat="server" Text="Label"></asp:Label>


            <asp:Table ID="Table1" runat="server">
                <asp:TableRow>

                </asp:TableRow>


            </asp:Table>

           


            
        </asp:PlaceHolder>
    </div>



    </div>

</asp:Content>
