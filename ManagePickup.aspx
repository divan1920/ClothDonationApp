<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManagePickup.aspx.cs" Inherits="ClothDonationApp.ManagePickup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ManagePickup Page
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DonationId" DataSourceID="SqlDataSource1" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
    </form>
</body>
</html>
