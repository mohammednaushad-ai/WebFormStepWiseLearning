<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioButton.aspx.cs" Inherits="WebFormStepWiseLearning.RadioButton" %>

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
                <asp:RadioButton ID="RadioButton4" runat="server" Text="10th" AutoPostBack="True" GroupName="Education" OnCheckedChanged="RadioButton4_CheckedChanged" />
                <asp:RadioButton ID="RadioButton5" runat="server" Text="PUC" GroupName="Education" />
                <asp:RadioButton ID="RadioButton6" runat="server" Text="UnderGraduate" GroupName="Education" />

            </fieldset>
           
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
           
    </form>
</body>
</html>
