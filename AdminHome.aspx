<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ClothDonationApp.AdminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:LinkButton ID="ManageVolunteerLink" runat="server" PostBackUrl="~/ManageVolunteer.aspx">Manage Volunteer</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="ManageDonarLink" runat="server" PostBackUrl="~/ManageDonar.aspx">Manage Donar</asp:LinkButton>
            
            <br />
            <br />
            <asp:LinkButton ID="ManageSCityButton" runat="server" PostBackUrl="~/ManageCity.aspx">Manage City</asp:LinkButton>
            
        </div>
    </form>
</body>
</html>
