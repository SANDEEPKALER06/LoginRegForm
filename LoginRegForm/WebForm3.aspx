<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="LoginRegForm.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
     <link rel="stylesheet" href="css/StyleSheet3.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>WELCOME</h2>
            <asp:Label ID="lblWelcomeMessage" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
