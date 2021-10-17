<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VolunteerHome.aspx.cs" Inherits="ClothDonationApp.VolunteerHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <%--------Navigation Bar--------%>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <div class="container-fluid">
                <a href="#" class="text-white px-3 navbar-brand">Salvation</a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link Active" runat="server" PostBackUrl="~/VolunteerHome.aspx">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Aboutus.aspx">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <asp:Button ID="Logout" runat="server" class="nav-item text-white nav-link bg-danger logout" Text="Logout" Style="border: 0px; border-radius: 5px" />
<%--                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>--%>

                    </div>
                </div>
            </div>
        </nav>

        <div class="row">
            <div class="col-md-6">
                <h2 class="mt-5 pt-3 pl-4 text-secondary text-sm-center"><i>Hey , Volunteer</i></h2>
                <p class="pl-5 pt-3">
                    <figure class="pl-5 ml-5" style="background-color: #eee; padding: 15px; border-radius: 5px">
                        <blockquote>
                            <p>“The best way to find yourself is to lose yourself in the service of others.” </p>
                        </blockquote>
                        <figcaption style="margin-left: 400px">— Gandhi </figcaption>
                    </figure>
                    <br />
                    <figure class="pl-5 ml-5" style="background-color: #eee; padding: 15px; border-radius: 5px">
                        <blockquote>
                            <p>“Life’s most persistent and urgent question is, what are you doing for others?”</p>
                        </blockquote>
                        <figcaption style="margin-left: 380px">– Martin Luther King, Jr.</figcaption>
                    </figure>
                </p>
            </div>
            <div class="col-md-6">
                <asp:Image class="side-Image mt-0" ImageUrl="~/Images/hands.png" runat="server" alt="Volunteer" Style="height: 100%" />
            </div>
        </div>

        <%------- Links ---------%>

        <h2 class="text-center Links-Heading pb-3">Manage Donations
            <hr class="mt-2 mb-4" />
        </h2>

        <%--        <div class="row pl-5 pr-5 text-center Links-Cards">
            <div class="card col-sm-3 m-3">
                <img src="images/PickUp.png" class="card-img-top" alt="Pickup">
                <div class="card-body text-center">
                    <h5 class="card-title">Book PickUp</h5>
                    <p class="card-text">Click here to book Pickup for Your Donation. You can Donate Books , CLothes , Furniture , etc to Needed Person.</p>
                    <asp:Button ID="BookPickUp1" runat="server" PostBackUrl="~/Donation.aspx" Text="Book &#8614;" CssClass="btn btn-primary" />
                </div>
            </div>

            <div class="card col-sm-3 m-3 ml-5">
                <img src="images/UpdatePickUp.jpg" class="card-img-top" alt="...">
                <div class="card-body text-center">
                    <h5 class="card-title pt-3">Manage Pickup Details</h5>
                    <p class="card-text">Click here to book Pickup for Your Donation. You can Donate Books , CLothes , Furniture , etc to Needed Person.</p>
                    <asp:Button ID="UpdateDonation" runat="server" PostBackUrl="~/UpdateDonation.aspx" Text="Manage ↦" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>--%>

        <div class="container">
            <div class="row">
                <div class="card col-sm-5">
                    <img src="images/PickUp.png" class="card-img-top" alt="Pickup" />
                    <div class="card-body text-center">
                        <h5 class="card-title">Book PickUp</h5>
                        <p class="card-text">Click here to book Pickup for Your Donation. You can Donate Books , CLothes , Furniture , etc to Needed Person.</p>
                        <asp:HyperLink ID="VolunteerDonationLink" runat="server" NavigateUrl="~/DonarHome.aspx" CssClass="btn btn-primary">Donate &#8614;</asp:HyperLink>
                    </div>
                </div>
                <div class="col-sm-2"></div>
                <div class="card col-sm-5">
                    <img src="images/UpdatePickUp.jpg" class="card-img-top" alt="..." />
                    <div class="card-body text-center">
                        <h5 class="card-title pt-4">Manage Pickup Details</h5>
                        <p class="card-text">Click here to Manage all Donation Requests. Here you can view,update & delete the Request details as per require.</p>
                        <asp:HyperLink ID="VolunteerManagePickup" runat="server" NavigateUrl="~/ManagePickup.aspx" CssClass="btn btn-primary">Manage ↦</asp:HyperLink>
                    </div>
                </div>
            </div>
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
