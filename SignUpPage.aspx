<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUpPage.aspx.cs" Inherits="WebFormStepWiseLearning.SignUpPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 450px;
            margin:auto;
            border:ridge 5px black;
        }
        .auto-style2 {
            text-align:center;
            font-size:large
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">SIGNUP FORM</td>
                </tr>
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td>
                        <asp:TextBox ID="FirstNameTextBox" runat="server" Height="39px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNameTextBox" Display="Dynamic" ErrorMessage="Please Enter FirstName" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name</td>
                    <td>
                        <asp:TextBox ID="LastNameTextBox" runat="server" Height="34px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNameTextBox" Display="Dynamic" ErrorMessage="Please Enter  Last Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="192px">
                            <asp:ListItem >Select</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Please Select Gender" ForeColor="Red" InitialValue="Select" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Height="39px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Enter a proper Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Height="39px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AddressTextBox" Display="Dynamic" ErrorMessage="Please Enter Address" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Username</td>
                    <td>
                        <asp:TextBox ID="UserNameTextBox" runat="server" Height="39px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UserNameTextBox" Display="Dynamic" ErrorMessage="Please Enter Username" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="PasswordTextBox" runat="server" Height="39px" Width="213px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="Please Enter Password" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="ConfirmTextBox" runat="server" Height="39px" Width="213px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmTextBox" ErrorMessage="Password Not Matching" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="51px" Text="SignUp" Width="151px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2"><a href="LoginFormWithDatabase.aspx">Go To Login Page</a></td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Large" ForeColor="Red" />
    </form>
</body>
</html>
