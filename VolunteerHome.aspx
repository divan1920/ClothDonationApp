<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VolunteerHome.aspx.cs" Inherits="ClothDonationApp.VolunteerHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <div class="container-fluid">
                <a href="#" class="text-white px-3 navbar-brand">Salvation</a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav">
                        <a href="#" class="nav-item text-white nav-link active">Home</a>
                        <asp:HyperLink ID="HyperLink1" href="#" runat="server" class="nav-item text-white nav-link ">Contact Us</asp:HyperLink>
                        <a href="#" class="nav-item text-white nav-link ">About us</a>
                    </div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>
                        
                    </div>
                </div>
            </div>
        </nav>
        <div>
            <asp:HyperLink ID="VolunteerDonationLink" runat="server" NavigateUrl="~/DonarHome.aspx">Donet</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="VolunteerManagePickup" runat="server" NavigateUrl="~/ManagePickup.aspx">Manage Pick up</asp:HyperLink>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
