<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageVolunteer.aspx.cs" Inherits="ClothDonationApp.ManageVolunteer" %>

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
                        <%--                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton3" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton4" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>
                        <br />--%>
                        <asp:Button ID="Logout" runat="server" class="nav-item text-white nav-link bg-danger logout" Text="Logout" Style="border: 0px; border-radius: 5px" />
                        <br />
                    </div>
                </div>
            </div>
        </nav>



        <div class="container text-center">
            <h1 class="text-secondary mt-5"><i>Manage Volunteer</i></h1>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserId" DataSourceID="VolunteerListForAdmin" ForeColor="#333333" GridLines="None" CssClass="table align-middle">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Action" ControlStyle-CssClass="delete btn btn-danger text-white" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="VolunteerListForAdmin" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" DeleteCommand="DELETE FROM [User] WHERE [UserId] = @original_UserId AND [Name] = @original_Name AND [Email] = @original_Email AND [Password] = @original_Password AND [Role] = @original_Role AND [Address] = @original_Address AND [City] = @original_City" InsertCommand="INSERT INTO [User] ([Name], [Email], [Password], [Role], [Address], [City]) VALUES (@Name, @Email, @Password, @Role, @Address, @City)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User] WHERE ([Role] = @Role)" UpdateCommand="UPDATE [User] SET [Name] = @Name, [Email] = @Email, [Password] = @Password, [Role] = @Role, [Address] = @Address, [City] = @City WHERE [UserId] = @original_UserId AND [Name] = @original_Name AND [Email] = @original_Email AND [Password] = @original_Password AND [Role] = @original_Role AND [Address] = @original_Address AND [City] = @original_City">
                <DeleteParameters>
                    <asp:Parameter Name="original_UserId" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Role" Type="Int32" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Role" Type="Int32" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Role" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Role" Type="Int32" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="original_UserId" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Role" Type="Int32" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
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
