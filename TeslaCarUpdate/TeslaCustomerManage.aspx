<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeslaCustomerManage.aspx.cs" Inherits="TeslaCarUpdate.TeslaCustomerManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tesla Car update Management - Customer Manage</title>
    <link rel="icon" type="image/png" href="../img/icon.png" />
    <script type="text/javascript" src="../script/TeslaLogin.js" charset="utf-8"></script>
    <link rel="stylesheet" href="../css/style2.css" />
    <link rel="stylesheet" href="../css/style3.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 90px;
        }

        .auto-style3 {
            width: 103px;
        }

        .auto-style4 {
            width: 244px;
        }

        .auto-style5 {
            width: 258px;
        }

        .auto-style6 {
            width: 201px;
        }

        .auto-style7 {
            width: 169px;
        }

        .auto-style8 {
            width: 90px;
            height: 23px;
        }

        .auto-style9 {
            width: 103px;
            height: 23px;
        }

        .auto-style10 {
            width: 244px;
            height: 23px;
        }

        .auto-style11 {
            width: 258px;
            height: 23px;
        }

        .auto-style12 {
            width: 201px;
            height: 23px;
        }

        .auto-style13 {
            width: 169px;
            height: 23px;
        }

        .auto-style14 {
            height: 23px;
        }
    </style>
</head>
<body>

    <form runat="server" style="height: 100%;">
        <div class="wrapper">
            <div class="menu">
                <img class="logo" src="../img/icon.png" />
                <div class="about-user">
                    <asp:Label ID="Label4" runat="server" CssClass="about-user-item" Text="Username : TeslaAdmin"></asp:Label>
                    <asp:Label ID="Label5" runat="server" CssClass="about-user-item" Text=" Role : Admin"></asp:Label>
                </div>

                <div class="sub-menu">


                    <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" CssClass="sub-menu-item" Text="Homepage" />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="sub-menu-item" Text="Manage Customers" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="sub-menu-item" Text="Tesla Car List" />
                    <asp:Button ID="Button3" runat="server" CssClass="sub-menu-item" Text="Settings" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" CssClass="sub-menu-item" Text="Sign Out" />



                    <p class="sub-menu-item-about">
                        Tesla Car Management V12.3.44
                    </p>
                </div>
            </div>
            <div class="content">
                <div class="content-2">
                    <div class="main">
                        <p class="content-header">Tesla Customer Manage</p>
                        <asp:TextBox ID="TextBox1" runat="server" PlaceHolder="Customer Name" CssClass="Input-data" required="true"></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" PlaceHolder="Customer SurName" CssClass="Input-data" required="true"></asp:TextBox>
                        <asp:TextBox ID="TextBox3" runat="server" PlaceHolder="Customer Tesla Model" CssClass="Input-data"></asp:TextBox>
                        <asp:TextBox ID="TextBox4" runat="server" PlaceHolder="Customer Country" CssClass="Input-data"></asp:TextBox>
                        <asp:TextBox ID="TextBox5" runat="server" PlaceHolder="Customer Tesla Model Year" CssClass="Input-data"></asp:TextBox>
                        <asp:TextBox ID="TextBox6" runat="server" PlaceHolder="Mail" CssClass="Input-data"></asp:TextBox>
                        <asp:Button ID="Button5" runat="server" Text="Search" CssClass="search-button" OnClick="Button5_Click" />
                        <asp:Button ID="Button7" runat="server" Text="Register" CssClass="register-button" OnClick="Button7_Click" />

                        <asp:Panel ID="Panel1" runat="server" Height="372px" Width="892px" CssClass="panel1"></asp:Panel>

                    </div>
                </div>

            </div>
        </div>


    </form>


</body>

</html>
