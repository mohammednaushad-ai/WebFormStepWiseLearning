<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FristWebForm.aspx.cs" Inherits="WebFormStepWiseLearning.FristWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:CheckBox ID="CheckBox1" runat="server" />
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
        </asp:CheckBoxList>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:HiddenField ID="HiddenField1" runat="server" />
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        <asp:ImageButton ID="ImageButton1" runat="server" Width="64px" />
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    </form>
</body>
</html>
