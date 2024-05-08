<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="LoginRegForm.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
      <link rel="stylesheet" href="css/styleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registration</h2>
            <p>
                <label for="txtUsername">Username:</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="txtPassword">Password:</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </p>
            <p>
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </p>
            <p>
                <label for="txtEmail">Email:</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
            </p>
            <p>
                <label for="txtDateOfBirth">Date of Birth:</label>
                <asp:TextBox ID="txtDateOfBirth" runat="server" TextMode="Date"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </p>
            <p>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
            </p>
            <p>
    Already have an account? <a href="WebForm2.aspx">Login here</a>.
</p>

        </div>
    </form>
</body>
</html>

