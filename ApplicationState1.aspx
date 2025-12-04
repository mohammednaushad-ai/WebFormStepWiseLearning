<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicationState1.aspx.cs" Inherits="WebFormStepWiseLearning.ApplicationState1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                       <asp:Label ID="CountClick" runat="server" Text="Label"></asp:Label>
            <p>
 <asp:Button ID="Button1" runat="server" OnClick="CountButton_Click" Text="Count" />

</p>
        </div>
    </form>
</body>
</html>
