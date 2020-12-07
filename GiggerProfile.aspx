<%@ Page Title="" Language="C#" MasterPageFile="~/GiggerDashboard.Master" AutoEventWireup="true" CodeBehind="GiggerProfile.aspx.cs" Inherits="QlityG.GiggerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        <h4>Update Profile</h4>
        <hr />
        <asp:Literal ID="ErrorM" runat="server"></asp:Literal>
        <asp:ValidationSummary runat="server" CssClass="text-danger" />


         <div class="form-group">
            <%--<asp:Label runat="server"  AssociatedControlID="txtEmail" CssClass="col-md-2 control-label">Email Address</asp:Label>--%>
             <div class="col-md-offset-2 col-md-8">
                <asp:TextBox runat="server" ID="txtEmail" CssClass="btn btn-default" Enabled="False" placeholder="Email Address" Width="349px" />
                  
        </div>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
               CssClass="text-danger" ErrorMessage="The Email field is required." /> <br /><br />
        </div>
        
        <div class="form-group">
            <%--<asp:Label runat="server" AssociatedControlID="txtName" CssClass="col-md-2 control-label">Name</asp:Label>--%>
             <div class="col-md-offset-2 col-md-8">
                <asp:TextBox runat="server" ID="txtName" CssClass="btn btn-default" OnTextChanged="txtName_TextChanged"  placeholder="Name" Width="349px" />
              
            </div>
              <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName"
                    CssClass="text-danger" ErrorMessage="The Name field is required." /><br /><br />
        </div>
        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtSurname" CssClass="col-md-2 control-label">Surname</asp:Label>--%>
             <div class="col-md-offset-2 col-md-8">
                <asp:TextBox runat="server" ID="txtSurname"  CssClass="btn btn-default" placeholder="Surname" Width="349px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSurname"
                    CssClass="text-danger" ErrorMessage="The Surname field is required." />
            </div>
        </div>
        
        <div class="form-group">
           <%-- <asp:Label runat="server" AssociatedControlID="txtCountry" CssClass="col-md-2 control-label">Country</asp:Label>--%>
              <div class="col-md-offset-2 col-md-8">
                <asp:TextBox runat="server" ID="txtCountry"   CssClass="btn btn-default" placeholder="Country" Width="349px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCountry"
                    CssClass="text-danger" ErrorMessage="The Country field is required." />    
        </div>
        </div>




         <asp:Table ID="Table1" runat="server"  Height="123px" Width="95%">
        <asp:TableRow runat="server">
        <asp:TableCell runat="server">
        <div class="form-group">
         <%--   <asp:Label runat="server" AssociatedControlID="txtSkills" CssClass="col-md-2 control-label">Skills</asp:Label>--%>
         <div class="col-md-offset-2 col-md-8">
            <asp:TextBox runat="server" ID="txtSkills"   TextMode="MultiLine" CssClass="btn btn-default" placeholder="Skills" Width="280px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSkills"
                    CssClass="text-danger" ErrorMessage="The Skills field is required." /> 
            </div>
        </div>
         </asp:TableCell>

         <asp:TableCell runat="server">
           <div class="form-group">
            <%-- <asp:Label runat="server" AssociatedControlID="txtReferences" CssClass="col-md-2 control-label">References</asp:Label>--%>
            <div class="col-md-offset-2 col-md-8">
             <asp:TextBox runat="server" ID="txtReferences"   TextMode="MultiLine" CssClass="btn btn-default" placeholder="References" Width="280px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtReferences"
                    CssClass="text-danger" ErrorMessage="The References field is required." /> 
            </div>
        </div>
         </asp:TableCell>

         <asp:TableCell runat="server">
                   <div class="form-group">
            <%--<asp:Label runat="server" AssociatedControlID="txtEducation" CssClass="col-md-2 control-label">Education</asp:Label>--%>
              <div class="col-md-offset-2 col-md-8">
                <asp:TextBox runat="server" ID="txtEducation"   TextMode="MultiLine"  CssClass="btn btn-default" placeholder="Education" Width="280px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEducation"
                    CssClass="text-danger" ErrorMessage="The Education field is required." />    
        </div>
        </div>

         </asp:TableCell>


            </asp:TableRow>
            <asp:TableRow runat="server">
            <asp:TableCell runat="server">
            <div class="form-group">
            <%-- <asp:Label runat="server" AssociatedControlID="txtPastProjectName" CssClass="col-md-2 control-label">Past Project Name</asp:Label>--%>
            <div class="col-md-offset-2 col-md-8">
            <asp:TextBox runat="server" ID="txtPastProjectName"  CssClass="btn btn-default" placeholder="Past Project Name" Width="280px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectName"
                    CssClass="text-danger" ErrorMessage="The Past Project Name field is required." />    
            </div>
            </div>
             </asp:TableCell>

                <asp:TableCell runat="server">
                <div class="form-group">
            <%-- <asp:Label runat="server" AssociatedControlID="txtPastProjectDetails" CssClass="col-md-2 control-label">Past Project Details</asp:Label>--%>
            <div class="col-md-offset-2 col-md-8">
           <asp:TextBox runat="server" ID="txtPastProjectDetails"   TextMode="MultiLine"  CssClass="btn btn-default" placeholder="Past Project Details" Width="280px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectDetails"
                    CssClass="text-danger" ErrorMessage="The Past Project Details field is required." />    
            </div>
            </div>
                </asp:TableCell>

                <asp:TableCell runat="server">

                      <div class="form-group">
                 <%--<asp:Label runat="server" AssociatedControlID="txtPastProjectDuration" CssClass="col-md-2 control-label">Past Project Duration</asp:Label>--%>
                <div class="col-md-offset-2 col-md-8">
               <asp:TextBox runat="server" ID="txtPastProjectDuration" CssClass="btn btn-default" placeholder="Past Project Duration" Width="280px" /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPastProjectDuration"
                    CssClass="text-danger" ErrorMessage="The Past Project Duration field is required." />    
                </div>
                </div>
           </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

  


        <div class="form-group">
             <div class="col-md-offset-2 col-md-8">
                <asp:Button runat="server" ID="Create" Text="Create " CssClass="btn btn-default" OnClick="UpdateProfile_Click"   BorderColor="Blue" ForeColor="Blue"/>
                 <asp:Button runat="server" ID="Update" Text="Update " CssClass="btn btn-default" OnClick="Update_Click"  BorderColor="Blue" ForeColor="Green"/>
            </div>
        </div>
    <br />
    <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
               
            </div>
        </div>

</div>








</asp:Content>
