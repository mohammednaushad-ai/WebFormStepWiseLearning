<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryString.aspx.cs" Inherits="WebFormStepWiseLearning.QueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 508px;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            width: 208px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Student ID</td>
                    <td>
                        <asp:TextBox ID="IDTextBox" runat="server" Width="282px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Name</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Width="282px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Student Age</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="AgeTextBox" runat="server" Width="282px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Submit" runat="server" Height="41px" OnClick="Submit_Click" Text="Submit" Width="193px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
