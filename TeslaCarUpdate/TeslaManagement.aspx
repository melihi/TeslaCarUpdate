<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeslaManagement.aspx.cs" Inherits="TeslaCarUpdate.TeslaManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tesla Car update Management</title>
    <link rel="icon" type="image/png" href="../img/icon.png" />
    <link rel="stylesheet" href="../css/style2.css" />
</head>
<body runat="server">


    <div class="wrapper">
        <div class="menu">
            <img class="logo" src="../img/icon.png" />
            <div class="about-user">
                <asp:Label ID="Label9" runat="server" CssClass="about-user-item" Text="Username : TeslaAdmin"></asp:Label>
                <asp:Label ID="Label10" runat="server" CssClass="about-user-item" Text=" Role : Admin"></asp:Label>
            </div>

            <div class="sub-menu">
                <form runat="server">

                    <asp:Button ID="Button5" runat="server"  OnClick="Button5_Click" CssClass="sub-menu-item" Text="Homepage" />
                    <asp:Button ID="Button1" runat="server"  OnClick="Button1_Click" CssClass="sub-menu-item" Text="Manage Customers" />
                    <asp:Button ID="Button2" runat="server" CssClass="sub-menu-item" Text="Tesla Car List" OnClick="Button2_Click"/>
                    <asp:Button ID="Button3" runat="server" CssClass="sub-menu-item" Text="Settings" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button6_Click" CssClass="sub-menu-item" Text="Sign Out" />


                </form>
                <p class="sub-menu-item-about">
                    Tesla Car Management V12.3.44
                </p>
            </div>
        </div>
        <div class="content">
            <div class="content-2">
                <p class="content-header">Tesla Live Car Statistics</p>
                <p class="content-statistic">Total Car : 1,223,847</p>
                <p class="content-statistic">Updated Car : 123,779</p>
                 
                <p class="content-statistic">Not updated Car : 1,100,068</p>
                <p class="content-statistic">Last Software Version : 22.0.212V</p>
                

            </div>
        </div>
    </div>



</body>
</html>
