<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Buttons.aspx.cs" Inherits="WebFormStepWiseLearning.Buttons" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClientClick="alert(&quot;Do you want to Submit&quot;)" CommandName="Submit" OnCommand="Button_command" />
            <asp:Button ID="Button2" runat="server" Text="top 10" OnClientClick="alert(&quot;Do you want to Submit&quot;)" CommandName="Show" OnCommand="Button_command" CommandArgument="Top10" />
            <asp:Button ID="Button3" runat="server" Text="Bottom 10" OnClientClick="alert(&quot;Do you want to Submit&quot;)" CommandName="Show" OnCommand="Button_command" CommandArgument="Bottom10" />
        </div>
        <p>
            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Link" OnCommand="Button_command">Link</asp:LinkButton>
        </p>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/textBoxImage.png" OnClick="ImageButton1_Click"  Width="100px" CommandName="Image" OnClientClick="return confirm(&quot;are you sure&quot;);" OnCommand="Button_command" />
        </p>
    </form>
</body>
</html>
