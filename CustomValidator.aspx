<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidator.aspx.cs" Inherits="WebFormStepWiseLearning.CustomValidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Enter Even Number&nbsp; <asp:TextBox ID="EvenTextBox" runat="server" TextMode="Number" Width="204px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="EvenTextBox" Display="Dynamic" ErrorMessage="Please Enter  a number" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="EvenTextBox" Display="Dynamic" ErrorMessage="Should Enter Even Number" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True"></asp:CustomValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="57px" Text="Submit" Width="207px" />
        </div>
    </form>
</body>
</html>
