<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCity.aspx.cs" Inherits="ClothDonationApp.AddCity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make Donation | Cloth Donation</title>
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
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/AdminHome.aspx" CausesValidation="False">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx" CausesValidation="False">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Aboutus.aspx" CausesValidation="False">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Logout" runat="server" class="nav-item text-white nav-link " CausesValidation="False" PostBackUrl="~/Logout.aspx">Logout</asp:LinkButton>
                    </div>
                </div>
            </div>
        </nav>



        <%--------- Form --------%>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="py-3 mt-4 text-sm-center text-secondary">Add a City</h2>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <div class="form-group my-3">
                        Name of the City :
            <asp:TextBox class="form-control" placeholder="Enter City Name" ID="NewCity" runat="server"></asp:TextBox>
                    </div>

                    <div class="text-center form-group">
                        <asp:Button ID="AddCityButton" class="form-control btn-primary" runat="server" OnClick="AddCityButton_Click" Text="Add" />
                    </div>
                </div>
                <div class="com-md-2"></div>
                <div class="col-md-4 ml-5">
                    <asp:Image class="side-Image" ImageUrl="~/Images/city1.png" runat="server" alt="city" />
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
