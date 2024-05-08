<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginRegForm.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link rel="stylesheet" href="css/styleSheet2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Login</h2>
            <p>
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </p>
            <p>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
            </p>
            <p>
    Don't have an account? <a href="WebForm1.aspx">Register here</a>.
</p>

        </div>
    </form>
</body>
</html>

