<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidatorControls.aspx.cs" Inherits="WebFormStepWiseLearning.ValidatorControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 85px;
        }
        .auto-style3 {
            height: 39px;
        }
        .auto-style4 {
            width: 171px;
        }
        .auto-style5 {
            width: 171px;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Student Registration form</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#666666" BorderColor="#666666" Font-Size="Large" ForeColor="#CC0000" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Student Name</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" Display="Dynamic" ErrorMessage="Please Enter Your Name" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Student Email</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="EmailTextBox" runat="server" ToolTip="Eg:abcd@gmail.com" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Enter Proper Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Re-enter Email</td>
                    <td>
                        <asp:TextBox ID="ReEnterEmail" runat="server" ToolTip="Eg:abcd@gmail.com" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ReEnterEmail" Display="Dynamic" ErrorMessage="Please Re-Enter Email" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailTextBox" ControlToValidate="ReEnterEmail" Display="Dynamic" ErrorMessage="Email Mismatch" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Class</td>
                    <td>
                        <asp:TextBox ID="ClassTextBox" runat="server" ToolTip="From 1 to 12" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ClassTextBox" Display="Dynamic" ErrorMessage="Please Enter the class" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ClassTextBox" Display="Dynamic" ErrorMessage="Class Should be Fom 1 to 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Fees</td>
                    <td>
                        <asp:TextBox ID="FeesTextBox" runat="server" ToolTip="Fees should from 2000 to 5000" Width="256px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FeesTextBox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="FeesTextBox" Display="Dynamic" ErrorMessage="Fees Should be From Between 2000 to 5000" ForeColor="Red" MaximumValue="5000.00" MinimumValue="2000.00" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style3">
                        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Sumit" Width="220px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
