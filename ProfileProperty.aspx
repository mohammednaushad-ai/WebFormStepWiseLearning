<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfileProperty.aspx.cs" Inherits="WebFormStepWiseLearning.ProfileProperty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            postal code
            <asp:TextBox ID="PostalCodeTextBox" runat="server"></asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit PostalCode" Width="183px" />
    </form>
</body>
</html>
