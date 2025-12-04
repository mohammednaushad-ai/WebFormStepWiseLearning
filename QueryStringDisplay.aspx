<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryStringDisplay.aspx.cs" Inherits="WebFormStepWiseLearning.QueryStringDisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 397px;
            height: 86px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            width: 282px;
            height: 50px;
        }
        .auto-style6 {
            width: 158px;
            height: 58px;
        }
        .auto-style7 {
            width: 282px;
            height: 58px;
        }
        .auto-style8 {
            width: 158px;
            height: 60px;
        }
        .auto-style9 {
            width: 282px;
            height: 60px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4" colspan="2">&nbsp;Welcome To Display Page&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Student Id</td>
                    <td class="auto-style5">
                        <asp:Label ID="IDLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Student Name</td>
                    <td class="auto-style7">
                        <asp:Label ID="NameLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Student Age</td>
                    <td class="auto-style9">
                        <asp:Label ID="AgeLabel" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
