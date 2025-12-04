<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckBox.aspx.cs" Inherits="WebFormStepWiseLearning.CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width:300px">
    <legend><b>Education </b></legend>
   <asp:CheckBox ID="CheckBox4" runat="server" Text="10th" />
 <asp:CheckBox ID="CheckBox5" runat="server" Text="puc" />
 <asp:CheckBox ID="CheckBox6" runat="server" Text="engineer" />

</fieldset>
            
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
    </form>
</body>
</html>
