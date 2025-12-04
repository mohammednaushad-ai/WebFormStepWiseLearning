<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServerControlEvent.aspx.cs" Inherits="WebFormStepWiseLearning.ServerControlEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <p>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Text need to be filled" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        
        </p>
    </form>
</body>
</html>
