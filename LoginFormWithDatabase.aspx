<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginFormWithDatabase.aspx.cs" Inherits="WebFormStepWiseLearning.LoginFormWithDatabase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            font-size:xx-large;
            text-align:center;

        }
        table{
            margin:auto;
            width:400px;
            border:5px black ridge;
            border-radius:5px;
        }
        .auto-style6 {
            width: 129px;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            height: 116px;
            text-align:center;
        }
        .auto-style9 {
            width: 100%;
            height: 116px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table  cellpadding="2" >
                <tr>
                    <td class="auto-style3" colspan="2">LOGIN</td>
                </tr>
                <tr>
                    <td class="auto-style6">USERNAME</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="UserTextBox" runat="server" Height="38px" Width="254px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">PASSWARD</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="PassTextBox" runat="server" Height="41px"  TextMode="Password" Width="254px"></asp:TextBox>
                        Show password</input><input type="checkbox" onchange="document.getElementById('PassTextBox').type=this.checked?'text':'password'" style="width: 19px" ><br />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" ErrorMessage="Please enter the password" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Button ID="Submit" runat="server" Height="64px" Text="Button" Width="148px" OnClick="Submit_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8" colspan="2">
                        <a href="SignUpPage.aspx">Not Registered Yet? SignUp Here</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
