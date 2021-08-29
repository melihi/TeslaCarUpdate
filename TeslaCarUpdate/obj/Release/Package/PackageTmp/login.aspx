<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TeslaCarUpdate.login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tesla Car Update Management</title>
    <link rel="stylesheet" href="../css/style.css" />
    <link rel="icon" type="image/png" href="../img/icon.png" />
    <script src="../script/TeslaLogin.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#forgot").click(function () {
                $(".alet").show(3000);
                //$(".alet").delay(1000).fadeIn();
                $(".alet").hide(5000);
            });
        });</script>
</head>
<body>

    <h1 class="main-header">Tesla Car Update Management</h1>
    <div class="wrapper">
        <div class="login">
            <form method="post" runat="server">
                <div class="container">
                    <img src="../img/tesla.png" class="avatar">
                    <p id="alert" class="alet">Please contact with System admin .</p>

                    <asp:Label ID="Label1" runat="server" CssClass="alert2" Text="Invalid TeslaID or Password ."></asp:Label>
                    <label class="log-item" for="uname"><b>Tesla ID</b></label>


                    <asp:TextBox ID="TextBox1" runat="server" CssClass="log-input" required="true" ></asp:TextBox>

                    <label class="log-item" for="psw"><b>Password</b></label>

                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="log-input" required="true" ></asp:TextBox>

                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Login" CssClass="log-btn" />
                    <label>

                        <div class="alt">
                            <div class="alt2">
                                Remember me
                                <input class="check" type="checkbox" checked="checked">
                            </div>
                            <span class="passwd-link">Forgot <a href="#" id="forgot" onclick="Alert()">password?</a></span>

                        </div>
                    </label>
                </div>
            </form>
        </div>

    </div>
</body>
</html>
