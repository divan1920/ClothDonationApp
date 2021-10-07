<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ClothDonationApp.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                        <a href="#" class="nav-item text-white nav-link active">Home</a>
                        <a href="#" class="nav-item text-white nav-link ">Contact Us</a>
                        <a href="#" class="nav-item text-white nav-link ">About us</a>
                    </div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Login.aspx">Login Now</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>
                    </div>
                </div>
            </div>
        </nav>

        <!-- ------Registration Form------ -->
        <div class="row mb-4">
            <div class="container col-md-6 px-5">
                <h2 class="py-3 text-secondary text-sm-center">Registration Form</h2>
                <div class="form-group">
                    Name :                
                <asp:TextBox ID="Name" class="form-control" runat="server" placeholder="Enter Your Name"></asp:TextBox>
                    <%--                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_Name" runat="server" Display="Dynamic" ErrorMessage="*User Name is Mandatory" ForeColor="Red" ControlToValidate="Name"></asp:RequiredFieldValidator>--%>
                </div>

                <div class="form-group">
                    Email :             
                <asp:TextBox ID="Email" class="form-control" runat="server" TextMode="Email" placeholder="Enter Your EmailId"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator_Email" runat="server" Display="Dynamic" ErrorMessage="*Email is Manadatory" ForeColor="Red" ControlToValidate="Email"></asp:RequiredFieldValidator>--%>
                </div>

                <div class="form-group">
                    Password :             
                <asp:TextBox ID="Password" class="form-control" runat="server" TextMode="Password" placeholder="Enter Password">Password</asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator_Password" runat="server" Display="Dynamic" ErrorMessage="*PassWord is Mandatory" ForeColor="Red" ControlToValidate="Password"></asp:RequiredFieldValidator>--%>
                </div>


                <div class="form-group">
                    Confirm Password :             
                <asp:TextBox ID="ConfirmPassword" class="form-control" runat="server" placeholder="Confirm Your Password"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator_ConfirmPassword" runat="server" Display="Dynamic" ErrorMessage="*Confirm PassWord is Mandatory" ForeColor="Red" ControlToValidate="ConfirmPassword"></asp:RequiredFieldValidator>--%>
                </div>


                <div class="form-group">
                    Address :             
                <asp:TextBox ID="Address" class="form-control" runat="server" placeholder="Enter Your Current Address"></asp:TextBox>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator_Address" runat="server" Display="Dynamic" ErrorMessage="*Address is Mandatory" ForeColor="Red" ControlToValidate="Address"></asp:RequiredFieldValidator>--%>
                </div>

                Where You Live : 
            <div class="form-group">
                <asp:DropDownList class="form-control" ID="CityList" runat="server">
                    <asp:ListItem>Ahmedabad</asp:ListItem>
                    <asp:ListItem>Nadiad</asp:ListItem>
                    <asp:ListItem>Surat</asp:ListItem>
                </asp:DropDownList>
            </div>

                Who are You ?
            <div class="form-group">
                <asp:DropDownList class="form-control" ID="RoleList" runat="server" >
                    <asp:ListItem Value="0">Donar</asp:ListItem>
                    <asp:ListItem Value="1">Volunteer</asp:ListItem>
                </asp:DropDownList>
            </div>

                <div class="text-center">
                    <asp:Button ID="SignUpSubmit" class="btn btn-coral" runat="server" OnClick="SignUpSubmit_Click" Text="Submit &#8658; " />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
            <div class="col-md-6">
                <asp:Image class="side-Image" ImageUrl="~/Images/ClothDonation.png" runat="server" alt="ClothDonation" />
            </div>
        </div>

        <%--------- Footer --------%>
        <footer class="container-fluid bg-dark p-3">
            <div class="text-white text-center">Copyright ©2021 | All rights reserved by  <span class="text-white-50"><i><asp:LinkButton ID="FooterButton" class="text-white-50" runat="server" PostBackUrl="~/Home.aspx">Salvation Foundation</asp:LinkButton></i></span></div>
        </footer>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
</body>
</html>
