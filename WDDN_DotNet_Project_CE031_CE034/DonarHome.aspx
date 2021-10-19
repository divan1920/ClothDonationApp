<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonarHome.aspx.cs" Inherits="ClothDonationApp.DonarHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Donor Home | Cloth Donation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <%--------Navigation Bar--------%>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container-fluid">
                <a href="#" class="text-white px-3 navbar-brand">Salvation</a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link active" runat="server" PostBackUrl="~/DonorHome.aspx">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Aboutus.aspx">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Logout" runat="server" class="nav-item text-white nav-link " CausesValidation="False" PostBackUrl="~/Logout.aspx">Logout</asp:LinkButton>
                        <%--<asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>--%>
                    </div>
                </div>
            </div>
        </nav>

        <%------------ Hero Section -------------%>

        <div class="jumbotron jumbotron-fluid text-center">
            <div class="container">
                <h2 class="Hero-Heading text-center">Let's Spread Happiness</h2>
                <h2 class="Hero-Heading-1 text-center pt-3">We Deliver your Donations to the Right Place</h2>
                <asp:Button ID="BookPickUp" runat="server" PostBackUrl="~/Donation.aspx" Text="Book a PickUp &#8614;" CssClass="mt-3 px-4 py-2" />
            </div>
        </div>

        <%------- Links ---------%>

        <h2 class="text-center Links-Heading">How We Work
            <hr class="mt-2 mb-4" />
        </h2>
        <div class="row pl-5 pr-5 text-center Links-Cards">
            <div class="card col-sm-5 m-3">
                <img src="images/PickUp.png" class="card-img-top" alt="Pickup">
                <div class="card-body text-center">
                    <h5 class="card-title">Book PickUp</h5>
                    <p class="card-text">Click here to book Pickup for Your Donation. You can Donate Books , Clothes , Furniture , etc to Needed Person.</p>
                    <asp:Button ID="BookPickUp1" runat="server" PostBackUrl="~/Donation.aspx" Text="Book &#8614;" CssClass="btn btn-primary" />
                </div>
            </div>


            <div class="card col-sm-5 m-3 ml-5">
                <img src="images/UpdatePickUp.jpg" class="card-img-top" alt="...">
                <div class="card-body text-center">
                    <h5 class="card-title pt-4">Manage Pickup Details</h5>
                    <p class="card-text">Click here to Manage all of your donations. Here you can view,update & delete the donations details as per require.</p>
                    <asp:Button ID="UpdateDonation" runat="server" PostBackUrl="~/UpdateDonation.aspx" Text="Manage ↦" CssClass="btn btn-primary" />
                </div>
            </div>



            &nbsp;
        </div>

        <%------ footer -------%>
        <footer class="container-fluid bg-dark p-3 mt-5 login-footer">
            <div class="text-white text-center">
                Copyright ©2021 | All rights reserved by  <span class="text-white-50"><i>
                    <asp:LinkButton ID="FooterButton" class="text-white-50" runat="server" PostBackUrl="~/Home.aspx">Salvation Foundation</asp:LinkButton></i></span>
            </div>
        </footer>
    </form>
</body>
</html>
