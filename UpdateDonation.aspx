<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateDonation.aspx.cs" Inherits="ClothDonationApp.UpdateDonation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Donation | Cloth Donation</title>
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
                        <asp:LinkButton ID="Home" class="nav-item text-white nav-link " runat="server" PostBackUrl="~/DonorHome.aspx">Home</asp:LinkButton>
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

        <%------------ Table -------------%>
        <div class="container text-center">
            <h1 class="text-secondary mt-5"><i>Your Donations</i></h1>
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="DonationId" DataSourceID="SqlDataSource3" GridLines="None" CssClass="table align-middle">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Delete" ControlStyle-CssClass="delete btn btn-danger text-white" />
                    <asp:CommandField ShowEditButton="True" HeaderText="Edit" ControlStyle-CssClass="edit btn btn-info text-white" />
                    <asp:BoundField DataField="DonationId" HeaderText="DonationId" InsertVisible="False" ReadOnly="True" SortExpression="DonationId" />
                    <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="ContentSize" HeaderText="ContentSize" SortExpression="ContentSize" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="DonarName" HeaderText="DonarName" SortExpression="DonarName" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" SelectCommand="SELECT * FROM [Donation] WHERE ([UserId] = @UserId)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Donation] WHERE [DonationId] = @original_DonationId AND [UserId] = @original_UserId AND [City] = @original_City AND [ContentSize] = @original_ContentSize AND [Status] = @original_Status AND [DonarName] = @original_DonarName AND [Mobile] = @original_Mobile" InsertCommand="INSERT INTO [Donation] ([UserId], [City], [ContentSize], [Status], [DonarName], [Mobile]) VALUES (@UserId, @City, @ContentSize, @Status, @DonarName, @Mobile)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Donation] SET [UserId] = @UserId, [City] = @City, [ContentSize] = @ContentSize, [Status] = @Status, [DonarName] = @DonarName, [Mobile] = @Mobile WHERE [DonationId] = @original_DonationId AND [UserId] = @original_UserId AND [City] = @original_City AND [ContentSize] = @original_ContentSize AND [Status] = @original_Status AND [DonarName] = @original_DonarName AND [Mobile] = @original_Mobile">
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
                    <asp:SessionParameter Name="UserId" SessionField="UserId" Type="Int32" />
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
        <%-- <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Home.aspx">View</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/SignUp.aspx">SignUp</asp:LinkButton>--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" SelectCommand="SELECT * FROM [User]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GridviewUserConnection %>" SelectCommand="SELECT * FROM [City]"></asp:SqlDataSource>
    </form>
</body>
</html>
