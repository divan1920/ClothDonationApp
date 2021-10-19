<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ClothDonationApp.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact us | Cloth Donation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            /*background: linear-gradient(to right, #ff4b1f, #ff9068);*/ /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background-color: #f39797;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- ------Navigation Bar------ -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
            <div class="container-fluid">
                <a href="#" class="text-white px-3 navbar-brand">Salvation</a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Login.aspx">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link active" runat="server" PostBackUrl="~/ContactUs.aspx">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Aboutus.aspx">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <%if (!(Session["UserId"] != null && Session["Username"] != null))
                            { %>
                        <asp:LinkButton ID="Login" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Login.aspx" CausesValidation="False">Login</asp:LinkButton>
                        <%}
                        else
                        { %>
                        <asp:LinkButton ID="Logout" runat="server" class="nav-item text-white nav-link " CausesValidation="False" PostBackUrl="~/Logout.aspx">Logout</asp:LinkButton>
                        <%} %>
                    </div>
                </div>
            </div>
        </nav>
        <p>
            &nbsp;
        </p>

        <div class="text-center text-white">
            <h3>Drop Us a Message</h3>
        </div>

        <div class="container contact-form mt-5" style="border-radius: 20px">
            <div class="contact-image">
                <%--<img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact" />--%>
                <asp:Image class="side-Image mt-0" ImageUrl="~/Images/contactus.png" runat="server" alt="WorkFlow" />
            </div>
            <div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="txtName" class="form-control" placeholder="Your Name *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtEmail" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="txtPhone" class="form-control" placeholder="Your Phone Number *" value="" />
                        </div>
                        <div class="form-group text-center">
                            <input type="submit" name="btnSubmit" class=" btn btn-primary" value="Send Message" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="txtMsg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
                        </div>
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
