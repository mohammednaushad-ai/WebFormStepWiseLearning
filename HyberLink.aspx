<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HyberLink.aspx.cs" Inherits="WebFormStepWiseLearning.HyberLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ASPControls.aspx">ASP Controls</asp:HyperLink>
        </div>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" Height="100px" ImageUrl="~/Images/textBoxImage.png" ImageWidth="100px" NavigateUrl="~/RadioButton.aspx">HyperLink</asp:HyperLink>
        </p>
    </form>
</body>
</html>
