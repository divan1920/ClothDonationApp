<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ClothDonationApp.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 201px;
        }
        .auto-style3 {
            width: 201px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 68%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style2">Name :</td>
                <td>
                    <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="Email" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password :</td>
                <td>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address : </td>
                <td>
                    <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">City : </td>
                <td>
                    <asp:DropDownList ID="CityList" runat="server">
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Nadiad</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">User Role </td>
                <td>
                    <asp:DropDownList ID="RoleList" runat="server">
                        <asp:ListItem Value="0">Donator</asp:ListItem>
                        <asp:ListItem Value="1">Volunteer</asp:ListItem>
                        <asp:ListItem Value="2">Admin</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Button ID="SignUpSubmit" runat="server" OnClick="SignUpSubmit_Click" Text="Submit" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            View User Table Situation :
            <asp:LinkButton ID="ViewUsers" runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
        </p>
        <p>
            make a&nbsp; Donation :
            <asp:LinkButton ID="Donation" runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>
        </p>
    </form>
</body>
</html>
