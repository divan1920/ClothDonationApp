<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageCity.aspx.cs" Inherits="ClothDonationApp.ManageCity" %>

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
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/AdminHome.aspx">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Aboutus.aspx">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <%--                        <asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton5" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>
                        <br />--%>
                        <asp:Button ID="Logout" runat="server" class="nav-item text-white nav-link bg-danger logout" Text="Logout" Style="border: 0px; border-radius: 5px" />
                        <br />
                    </div>
                </div>
            </div>
        </nav>

        <div class="container text-center">
            <h1 class="text-secondary mt-5"><i>List of Cities</i></h1>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" DataKeyNames="Id" DataSourceID="CityList" GridLines="None" CssClass="table align-middle">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ControlStyle-CssClass="delete btn btn-danger text-white" />
                    <asp:CommandField ShowSelectButton="True" HeaderText="Select" ControlStyle-CssClass="delete btn btn-info text-white" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
                </Columns>
                <%--                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />--%>
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="CityList" runat="server" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" DeleteCommand="DELETE FROM [City] WHERE [Id] = @Id" InsertCommand="INSERT INTO [City] ([Id], [CityName]) VALUES (@Id, @CityName)" SelectCommand="SELECT * FROM [City]" UpdateCommand="UPDATE [City] SET [CityName] = @CityName WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="CityName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CityName" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

        <div class="text-center mt-4">
            <asp:LinkButton ID="AddCityButton" runat="server" PostBackUrl="~/AddCity.aspx" CssClass=" btn btn-primary">Add New City</asp:LinkButton>
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
