<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ClothDonationApp.AdminHome" %>

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
                        <asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link active" runat="server" PostBackUrl="~/AdminHome.aspx">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Aboutus.aspx">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <%--                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>--%>
                        <asp:LinkButton ID="Logout" runat="server" class="nav-item text-white nav-link " CausesValidation="False" PostBackUrl="~/Logout.aspx">Logout</asp:LinkButton>
                    </div>
                </div>
            </div>
        </nav>


        <div class="row">
            <div class="col-md-6">
                <h2 class="mt-5 pt-5 text-secondary text-sm-center"><i>Hey , Admin</i></h2>
                <p class="pl-5 pt-4">

                    <figure class="pl-5 ml-5" style="background-color: #eee; padding: 15px; border-radius: 5px">
                        <blockquote>
                            <p>“ With great power there must also come great responsibility ” </p>
                        </blockquote>
                        <figcaption style="margin-left: 400px">— Peter Parker </figcaption>
                    </figure>
                    <br />
                    <figure class="pl-5 ml-5" style="background-color: #eee; padding: 15px; border-radius: 5px">
                        <blockquote>
                            <p>“ You can’t escape the responsibility of tomorrow by evading it today.”</p>
                        </blockquote>
                        <figcaption style="margin-left: 380px">– Abraham Lincoln</figcaption>
                    </figure>
                </p>
                <p class="pt-5 mt-4 text-center">
                    <asp:LinkButton ID="home" runat="server" PostBackUrl="~/Home.aspx" CssClass="btn btn-primary">View All Details ↦</asp:LinkButton>
                </p>
            </div>
            <div class="col-md-6">
                <asp:Image Style="width: 80%" class="side-Image ml-3" ImageUrl="~/Images/admin.png" runat="server" alt="admin" />
            </div>
        </div>


        <%------- Links ---------%>

        <h2 class="text-center Links-Heading mt-4 ">Admin Privilage
            <hr class="mt-2 mb-4" />
        </h2>

        <div class="row pl-5 pr-5 text-center Links-Cards">
            <div class="card col-sm-3 m-3">
                <img src="images/charity.png" class="card-img-top" alt="Pickup" style="height: 280px">
                <div class="card-body text-center">
                    <h5 class="card-title">Manage Volunteer</h5>
                    <p class="card-text">Click here to Manage all details for Volunteer. Here you can view,update & delete the details of Volunteer as per require.</p>
                    <asp:LinkButton ID="ManageVolunteerLink" runat="server" PostBackUrl="~/ManageVolunteer.aspx" CssClass="btn btn-primary">Manage Volunteer ↦</asp:LinkButton>
                </div>
            </div>

            <div class="card col-sm-3 m-3 ml-5">
                <img src="images/admin1.png" class="card-img-top" alt="...">
                <div class="card-body text-center">
                    <h5 class="card-title pt-3">Manage Donor</h5>
                    <p class="card-text">Click here to Manage all details for Donors. Here you can view,update & delete the details of Donors as per require.</p>
                    <asp:LinkButton ID="ManageDonarLink" runat="server" PostBackUrl="~/ManageDonar.aspx" CssClass="btn btn-primary">Manage Donar ↦</asp:LinkButton>
                </div>
            </div>

            <div class="card col-sm-3 m-3 ml-5">
                <img src="images/city.png" class="card-img-top" alt="..." />
                <div class="card-body text-center">
                    <h5 class="card-title pt-3">Manage Cities</h5>
                    <p class="card-text">Click here to Manage details Regarding Cities. Here you can View , Add or Remove City Details.</p>
                    <asp:LinkButton ID="ManageSCityButton" runat="server" PostBackUrl="~/ManageCity.aspx" CssClass="btn btn-primary">Manage City ↦</asp:LinkButton>
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
