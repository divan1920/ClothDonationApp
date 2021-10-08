<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCity.aspx.cs" Inherits="ClothDonationApp.AddCity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            Name of the City :
            <asp:TextBox ID="NewCity" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="AddCityButton" runat="server" OnClick="AddCityButton_Click" Text="Add" />
        </div>
    </form>
</body>
</html>
