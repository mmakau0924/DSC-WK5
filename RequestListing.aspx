<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestListing.aspx.cs" Inherits="DSC_WK5.RequestListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div class="nav">
        <ul>
       <li> <a href="Contact.aspx">Contact.aspx</a> </li>
       <li> <a href="RequestListing.aspx">RequestListing.aspx</a> </li>
            </ul>
    </div>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [FnUsrNfo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [FnUsrNfo] ([Name], [Age], [Email], [Phone], [MoreInfo]) VALUES (@Name, @Age, @Email, @Phone, @MoreInfo)" SelectCommand="SELECT * FROM [FnUsrNfo]" UpdateCommand="UPDATE [FnUsrNfo] SET [Name] = @Name, [Age] = @Age, [Email] = @Email, [Phone] = @Phone, [MoreInfo] = @MoreInfo WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="MoreInfo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="MoreInfo" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="MoreInfo" HeaderText="MoreInfo" SortExpression="MoreInfo" />
            </Columns>
        </asp:GridView>

    </form>
</body>
</html>
