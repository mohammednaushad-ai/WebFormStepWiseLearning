<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPControls.aspx.cs" Inherits="WebFormStepWiseLearning.ASPControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" MaxLength="10" OnTextChanged="TextBox1_TextChanged" ToolTip="Enter your name please"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" ToolTip="Please eneter your secound name"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
    </form>
</body>
</html>
