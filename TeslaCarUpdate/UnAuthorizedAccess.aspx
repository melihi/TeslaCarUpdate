<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UnAuthorizedAccess.aspx.cs" Inherits="TeslaCarUpdate.UnAuthorizedAccess" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Unauthorized Access !</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center> <h1 style="color:red; font-size: 45px; margin: 0 auto;">Unauthorized Access !</h1><center>
            <center> <img src="../img/tesla.png" class="avatar" style="width: 500px; height: 500px;" /><center>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
               <script> setTimeout(function () {
                       window.location.href = 'login.aspx';
                   }, 5000); </script>
        </div>
    </form>
</body>
</html>
