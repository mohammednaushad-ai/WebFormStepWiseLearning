<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDown.aspx.cs" Inherits="WebFormStepWiseLearning.DropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select Your City
            <asp:DropDownList ID="DropDownList1" runat="server">
                <%--<asp:ListItem Value="-1">Select City</asp:ListItem>

                <asp:ListItem Value="1">Mangaluru</asp:ListItem>
                <asp:ListItem Value="2">Bangaluru</asp:ListItem>
                <asp:ListItem Value="3">B.c Road</asp:ListItem>--%>
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </div>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </form>
</body>
</html>
