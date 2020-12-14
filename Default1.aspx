<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script src="js/inputTags.jquery.js"></script>
    <link href="css/inputTags.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:TextBox ID="TextBox1" runat="server" Width="501px" placeholder="Type and Enter"></asp:TextBox><br />
           
<%--            <asp:Button ID="Button1" runat="server" Text="Add" />--%>

       <script>
           //$('#tags').inputTags();

         <%--  $('#<%=TextBox1.ClientID%>').inputTags({
               tags: ['java','cirlce'],
               max:8
           }
           );--%>


           $('#TextBox1').inputTags({
               autocomplete: {
                   values: ['jQuery', 'Java', 'C++', 'Javascript','C#','ReactJs','ReactJs'],
                   only: false
               },
               max: 8,
               create: function () {
                   console.log('Tag added !');
               }
           });

       </script>

            </div>
    </form>
</body>
</html>

