<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="ClothDonationApp.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us | Cloth Donation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="background-color:#ffe9e9">

        <!-- ------Navigation Bar------ -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <div class="container-fluid">
                <a href="#" class="text-white px-3 navbar-brand">Salvation</a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Login.aspx" CausesValidation="False">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx" CausesValidation="False">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link active" runat="server" PostBackUrl="~/Aboutus.aspx" CausesValidation="False">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx" CausesValidation="False">Sign Up</asp:LinkButton>
                        <%if (!(Session["UserId"] != null && Session["Username"] != null)) { %>
                            <asp:LinkButton ID="Login" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Login.aspx" CausesValidation="False">Login</asp:LinkButton>
                        <%} else{ %>
                            <asp:LinkButton ID="Logout" runat="server" class="nav-item text-white nav-link " CausesValidation="False" PostBackUrl="~/Logout.aspx">Logout</asp:LinkButton>
                        <%} %>
                    </div>
                </div>
            </div>
        </nav>

        <div class="container pt-4">
            <h2 class="text-center Links-Heading text-secondary"><i>How We Work ?</i>
                <hr class="mt-2 mb-4" />
            </h2>
            <p style="color: #333; font-size: 18px; font-family: cursive" class="text-center">
                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Share At Door Step makes it super easy for you to make non-cash donations. Don’t we all have 
                a lot of clothes, books, and other household goods just lying at some corner and getting dusted.
                It’s time to give them a new life by donating them to those who in need and bring smiles on their
                faces!! Just schedule a pickup and get the donations picked up from your doorstep. Now Spreading 
                Happiness is just a click away!!
            </p>
            <br />
            <hr />
            <br />
            <h5 class="text-center Links-Heading text-secondary"><i>How to Schedule a pickup?</i>
                <hr class="mt-2 mb-4" />
            </h5>

            <p style="color: #333; font-size: 16px; font-family: cursive" class="text-center">
                1. Go to our Home page and enter your location & details.<br />
                2. Now any Volunteer from Your city will be accept your Donation Request.
                <br />
                3. After Accepting your request status of your Donation will be update
                <br />
                4.Volunteer will be come to your place & Pick up the Goods.<br />
            </p>

            <br />
            <hr />
            <br />
            <h2 class="text-center Links-Heading text-secondary"><i>Happiness Flow</i>
                <hr class="mt-2 mb-4" />
                <asp:Image class="side-Image mt-0" ImageUrl="~/Images/workflow.png" runat="server" alt="WorkFlow" />
            </h2>


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
