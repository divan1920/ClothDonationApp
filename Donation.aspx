<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="ClothDonationApp.Donation1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            float: left;
        }
        .auto-style2 {
            width: 151px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="left" class="auto-style1">
                <tr>
                    <td class="auto-style2">Donar Name:</td>
                    <td>
                        <asp:TextBox ID="DonarName" runat="server" ToolTip="Enter Donar's Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile No:</td>
                    <td>
                        <asp:TextBox ID="MobileNo" runat="server" TextMode="Phone" ToolTip="Enter your contact Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Choose City : </td>
                    <td>
                    <asp:DropDownList ID="CityList" runat="server">
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Nadiad</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Content Size :</td>
                    <td>
                        <asp:DropDownList ID="ContentList" runat="server">
                            <asp:ListItem>Low</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>High</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Donation_Submit" runat="server" OnClick="Donation_Submit_Click" Text="Submit" />
&nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/SignUp.aspx">SignUp</asp:LinkButton>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
    </form>
</body>
</html>
