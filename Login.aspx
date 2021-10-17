<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ClothDonationApp.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | Cloth Donation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
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
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link active mr-2" runat="server" PostBackUrl="~/AdminHome.aspx">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Aboutus.aspx">About Us</asp:LinkButton>
                    </div></div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LoginLink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Login.aspx">Login</asp:LinkButton>
                    </div>
                </div>
            </div>
        </nav>
        <p>
            &nbsp;
        </p>

        <div class="row">
            <div class="container col-md-6 px-5 ">
                <h2 class="py-3 text-secondary text-sm-center">Login Form</h2>
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>

                <div class="form-group my-3">
                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="Name" ErrorMessage="Username is required." Font-Bold="False" Font-Size="Small" ForeColor="Red" ToolTip="Username is Required">*</asp:RequiredFieldValidator>
                    UserName :                
                    <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Enter User Name"></asp:TextBox>
                    <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Name" runat="server" Display="Dynamic" ErrorMessage="*User Name is Mandatory" ForeColor="Red" ControlToValidate="Name"></asp:RequiredFieldValidator>--%>
                </div>

                <div class="form-group">
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required" Font-Bold="False" Font-Size="Medium" ForeColor="Red" ToolTip="Password is Required.">*</asp:RequiredFieldValidator>
                    Password :&nbsp;<asp:TextBox ID="Password" class="form-control" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
                    <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Password" runat="server" Display="Dynamic" ErrorMessage="*PassWord is Mandatory" ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>--%>
                </div>
                <div class="text-center">
                    <asp:Button ID="LoginSubmit" class="btn btn-coral my-4" runat="server" OnClick="LoginSubmit_Click" Text="Login &#8658;" />
                </div>
            </div>
            <div class="col-md-6">
                <asp:Image class="side-Image" ImageUrl="~/Images/ClothDonation1.jpg" runat="server" alt="ClothDonation" />
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
