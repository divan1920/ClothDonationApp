<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePickup.aspx.cs" Inherits="ClothDonationApp.ManagePickup" %>

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
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/VolunteerHome.aspx">Home</asp:LinkButton>
                        <asp:LinkButton ID="Contact" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/ContactUs.aspx">Contact Us</asp:LinkButton>
                        <asp:LinkButton ID="About" class="nav-item text-white nav-link" runat="server" PostBackUrl="~/Aboutus.aspx">About Us</asp:LinkButton>
                    </div>
                    <div class="navbar-nav">
                        <%--                        <asp:LinkButton ID="Signuplink" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/SignUp.aspx">Sign Up</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton1" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/Donation.aspx">Donation</asp:LinkButton>--%>
                        <asp:Button ID="Logout" runat="server" class="nav-item text-white nav-link bg-danger logout" Text="Logout" Style="border: 0px; border-radius: 5px" />
                    </div>
                </div>
            </div>
        </nav>



        <div class="container text-center">
            <h1 class="text-secondary mt-5"><i>Manage Pickup</i></h1>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DonationId" DataSourceID="SqlDataSource1" CssClass="table align-middle">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ControlStyle-CssClass="delete btn btn-danger" />
                    <asp:CommandField ShowEditButton="True" HeaderText="Edit" ControlStyle-CssClass="edit btn btn-info" />
                    <asp:BoundField DataField="DonationId" HeaderText="DonationId" InsertVisible="False" ReadOnly="True" SortExpression="DonationId" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="ContentSize" HeaderText="ContentSize" SortExpression="ContentSize" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="DonarName" HeaderText="DonarName" SortExpression="DonarName" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" DeleteCommand="DELETE FROM [Donation] WHERE [DonationId] = @original_DonationId AND [UserId] = @original_UserId AND [City] = @original_City AND [ContentSize] = @original_ContentSize AND [Status] = @original_Status AND [DonarName] = @original_DonarName AND [Mobile] = @original_Mobile" InsertCommand="INSERT INTO [Donation] ([UserId], [City], [ContentSize], [Status], [DonarName], [Mobile]) VALUES (@UserId, @City, @ContentSize, @Status, @DonarName, @Mobile)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Donation] WHERE ([City] = @City)" UpdateCommand="UPDATE [Donation] SET [UserId] = @UserId, [City] = @City, [ContentSize] = @ContentSize, [Status] = @Status, [DonarName] = @DonarName, [Mobile] = @Mobile WHERE [DonationId] = @original_DonationId AND [UserId] = @original_UserId AND [City] = @original_City AND [ContentSize] = @original_ContentSize AND [Status] = @original_Status AND [DonarName] = @original_DonarName AND [Mobile] = @original_Mobile">
                <DeleteParameters>
                    <asp:Parameter Name="original_DonationId" Type="Int32" />
                    <asp:Parameter Name="original_UserId" Type="Int32" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_ContentSize" Type="String" />
                    <asp:Parameter Name="original_Status" Type="String" />
                    <asp:Parameter Name="original_DonarName" Type="String" />
                    <asp:Parameter Name="original_Mobile" Type="Decimal" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="ContentSize" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="DonarName" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Decimal" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="City" SessionField="City" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="ContentSize" Type="String" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="DonarName" Type="String" />
                    <asp:Parameter Name="Mobile" Type="Decimal" />
                    <asp:Parameter Name="original_DonationId" Type="Int32" />
                    <asp:Parameter Name="original_UserId" Type="Int32" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_ContentSize" Type="String" />
                    <asp:Parameter Name="original_Status" Type="String" />
                    <asp:Parameter Name="original_DonarName" Type="String" />
                    <asp:Parameter Name="original_Mobile" Type="Decimal" />
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
