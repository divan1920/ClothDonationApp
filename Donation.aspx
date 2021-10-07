<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="ClothDonationApp.Donation1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Make Donation | Cloth Donation</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            float: left;
        }

        .auto-style2 {
            width: 151px;
        }
    </style>
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
                        <a href="#" class="nav-item text-white nav-link active">Home</a>
                        <asp:HyperLink ID="HyperLink1" href="#" runat="server" class="nav-item text-white nav-link ">Contact Us</asp:HyperLink>
                        <a href="#" class="nav-item text-white nav-link ">About us</a>
                    </div>
                    <div class="navbar-nav">
                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>
                    </div>
                </div>
            </div>
        </nav>

        <%------------ Hero Section -------------%>

        <div class="row">
            <div class="container col-md-6 px-5 ">
                <h2 class="py-3  text-sm-center">Make a Donation</h2>
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>

                <div class="form-group my-3">
                    Donor Name :                
                        <asp:TextBox ID="DonarName" class="form-control" placeholder="Enter Donor's Name" runat="server" ToolTip="Enter Donar's Name"></asp:TextBox>
                </div>

                <div class="form-group my-3">
                    Mobile Number :                
                        <asp:TextBox ID="MobileNo" runat="server" class="form-control" placeholder="Enter Donor's Mobile Number" TextMode="Phone" ToolTip="Enter your contact Number"></asp:TextBox>
                </div>

                <div class="form-group my-3">
                    Choose City :                
                    <asp:DropDownList ID="CityList" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityName">
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Nadiad</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-group my-3">
                    Content Size :                
                     <asp:DropDownList ID="ContentList" class="form-control" runat="server">
                         <asp:ListItem>Low</asp:ListItem>
                         <asp:ListItem>Medium</asp:ListItem>
                         <asp:ListItem>High</asp:ListItem>
                     </asp:DropDownList>
                </div>

                <div class="text-center form-group">
                    <asp:Button ID="Donation_Submit" runat="server" class="form-control btn-primary px-3" OnClick="Donation_Submit_Click" Text="Submit" />
                </div>
            </div>
        </div>

        <asp:Label ID="Label1" runat="server" />


        <%------ footer -------%>
        <footer class="container-fluid bg-dark p-3 mt-5 login-footer">
            <div class="text-white text-center">
                Copyright ©2021 | All rights reserved by  <span class="text-white-50"><i>
                    <asp:LinkButton ID="FooterButton" class="text-white-50" runat="server" PostBackUrl="~/Home.aspx">Salvation Foundation</asp:LinkButton></i></span>
            </div>
        </footer>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/SignUp.aspx">SignUp</asp:LinkButton>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
    </form>
</body>
</html>


<%--        <div>
            <table align="left" class="auto-style1">
                <tr>
                    <td class="auto-style2">Donar Name:</td>
                    <td>
                        <asp:TextBox ID="DonarName" runat="server" ToolTip="Enter Donar's Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Mobile No:</td>
                    <td>
                        <asp:TextBox ID="MobileNo" runat="server" TextMode="Phone" ToolTip="Enter your contact Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Choose City : </td>
                    <td>
                        <asp:DropDownList ID="CityList" runat="server" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityName">
                            <asp:ListItem>Ahmedabad</asp:ListItem>
                            <asp:ListItem>Nadiad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Content Size :</td>
                    <td>
                        <asp:DropDownList ID="ContentList" runat="server">
                            <asp:ListItem>Low</asp:ListItem>
                            <asp:ListItem>Medium</asp:ListItem>
                            <asp:ListItem>High</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Donation_Submit" runat="server" OnClick="Donation_Submit_Click" Text="Submit" />
            &nbsp;
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
        </div>--%>