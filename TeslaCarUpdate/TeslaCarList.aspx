<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeslaCarList.aspx.cs" Inherits="TeslaCarUpdate.TeslaCarList" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tesla Car update Management</title>
    <link rel="icon" type="image/png" href="../img/icon.png" />
    <link rel="stylesheet" href="../css/style2.css" />
    <link rel="stylesheet" href="../css/style3.css" />
</head>
<body runat="server">

    <form runat="server" style="height: 100%;">
        <div class="wrapper">
            <div class="menu">
                <img class="logo" src="../img/icon.png" />
                <div class="about-user">
                    <asp:Label ID="Label11" runat="server" CssClass="about-user-item" Text="Username : TeslaAdmin"></asp:Label>
                    <asp:Label ID="Label12" runat="server" CssClass="about-user-item" Text=" Role : Admin"></asp:Label>

                </div>

                <div class="sub-menu">


                    <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" CssClass="sub-menu-item" Text="Homepage" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="sub-menu-item" Text="Manage Customers" />
                    <asp:Button ID="Button2" runat="server" CssClass="sub-menu-item" Text="Tesla Car List" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" CssClass="sub-menu-item" Text="Settings" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button6_Click" CssClass="sub-menu-item" Text="Sign Out" />



                    <p class="sub-menu-item-about">
                        Tesla Car Management V12.3.44
                    </p>
                </div>
            </div>
            <div class="content">
                <div class="content-2">
                    <p class="content-header">Tesla Car Stock List</p>

                    
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="Input-data" Style="height:70px;width:1500px;opacity:0.8;font-size:15px;" TextMode="MultiLine" placeholder="Tesla Model"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="Input-data" Style="height:500px;width:1500px;opacity:0.8;font-size:25px;" TextMode="MultiLine"></asp:TextBox>
                    <asp:Button ID="list" runat="server" Text="List cars" OnClick="list_Click"  CssClass="search-button"/>
                </div>
            </div>
        </div>


    </form>
</body>
</html>
