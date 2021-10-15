<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintenance.aspx.cs" Inherits="AJames_ITSD325.Maintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Maintenance</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Maintenance</h1>
            <div id="menu">
                <ul>
                    <li><a href="Home.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Catalog.aspx">Catalog</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ShoppingCart.aspx">Shopping Cart</a></li>
</ul>
</div>
        </div>
        Maintenance pages are to let visitors know that the site is temporarily down. If the site is down for any reason, vistors will see the maintenance page to ensure that the site is still operational.<br />
        <br />
        Planned maintenance would be setup in a way that the maintenance page will show to alert visitors that the site is just being updated.<br />
        <br />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProdID] = @ProdID" InsertCommand="INSERT INTO [Products] ([ProdID], [ProdName], [ProdDescription], [ProdSummary], [ProdPrice], [ProdImage]) VALUES (@ProdID, @ProdName, @ProdDescription, @ProdSummary, @ProdPrice, @ProdImage)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [ProdName] = @ProdName, [ProdDescription] = @ProdDescription, [ProdSummary] = @ProdSummary, [ProdPrice] = @ProdPrice, [ProdImage] = @ProdImage WHERE [ProdID] = @ProdID">
            <DeleteParameters>
                <asp:Parameter Name="ProdID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProdID" Type="String" />
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="ProdSummary" Type="String" />
                <asp:Parameter Name="ProdPrice" Type="String" />
                <asp:Parameter Name="ProdImage" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="ProdSummary" Type="String" />
                <asp:Parameter Name="ProdPrice" Type="String" />
                <asp:Parameter Name="ProdImage" Type="String" />
                <asp:Parameter Name="ProdID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProdID" DataSourceID="SqlDataSource1" GroupItemCount="3" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FAFAD2;color: #284775;">ProdID:
                    <asp:Label ID="ProdIDLabel" runat="server" Text='<%# Eval("ProdID") %>' />
                    <br />ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
                    <br />ProdDescription:
                    <asp:Label ID="ProdDescriptionLabel" runat="server" Text='<%# Eval("ProdDescription") %>' />
                    <br />ProdSummary:
                    <asp:Label ID="ProdSummaryLabel" runat="server" Text='<%# Eval("ProdSummary") %>' />
                    <br />ProdPrice:
                    <asp:Label ID="ProdPriceLabel" runat="server" Text='<%# Eval("ProdPrice") %>' />
                    <br />ProdImage:
                    <asp:Label ID="ProdImageLabel" runat="server" Text='<%# Eval("ProdImage") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br /></td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFCC66;color: #000080;">ProdID:
                    <asp:Label ID="ProdIDLabel1" runat="server" Text='<%# Eval("ProdID") %>' />
                    <br />ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />ProdDescription:
                    <asp:TextBox ID="ProdDescriptionTextBox" runat="server" Text='<%# Bind("ProdDescription") %>' />
                    <br />ProdSummary:
                    <asp:TextBox ID="ProdSummaryTextBox" runat="server" Text='<%# Bind("ProdSummary") %>' />
                    <br />ProdPrice:
                    <asp:TextBox ID="ProdPriceTextBox" runat="server" Text='<%# Bind("ProdPrice") %>' />
                    <br />ProdImage:
                    <asp:TextBox ID="ProdImageTextBox" runat="server" Text='<%# Bind("ProdImage") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">ProdID:
                    <asp:TextBox ID="ProdIDTextBox" runat="server" Text='<%# Bind("ProdID") %>' />
                    <br />ProdName:
                    <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                    <br />ProdDescription:
                    <asp:TextBox ID="ProdDescriptionTextBox" runat="server" Text='<%# Bind("ProdDescription") %>' />
                    <br />ProdSummary:
                    <asp:TextBox ID="ProdSummaryTextBox" runat="server" Text='<%# Bind("ProdSummary") %>' />
                    <br />ProdPrice:
                    <asp:TextBox ID="ProdPriceTextBox" runat="server" Text='<%# Bind("ProdPrice") %>' />
                    <br />ProdImage:
                    <asp:TextBox ID="ProdImageTextBox" runat="server" Text='<%# Bind("ProdImage") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #FFFBD6;color: #333333;">ProdID:
                    <asp:Label ID="ProdIDLabel" runat="server" Text='<%# Eval("ProdID") %>' />
                    <br />ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
                    <br />ProdDescription:
                    <asp:Label ID="ProdDescriptionLabel" runat="server" Text='<%# Eval("ProdDescription") %>' />
                    <br />ProdSummary:
                    <asp:Label ID="ProdSummaryLabel" runat="server" Text='<%# Eval("ProdSummary") %>' />
                    <br />ProdPrice:
                    <asp:Label ID="ProdPriceLabel" runat="server" Text='<%# Eval("ProdPrice") %>' />
                    <br />ProdImage:
                    <asp:Label ID="ProdImageLabel" runat="server" Text='<%# Eval("ProdImage") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br /></td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">ProdID:
                    <asp:Label ID="ProdIDLabel" runat="server" Text='<%# Eval("ProdID") %>' />
                    <br />ProdName:
                    <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
                    <br />ProdDescription:
                    <asp:Label ID="ProdDescriptionLabel" runat="server" Text='<%# Eval("ProdDescription") %>' />
                    <br />ProdSummary:
                    <asp:Label ID="ProdSummaryLabel" runat="server" Text='<%# Eval("ProdSummary") %>' />
                    <br />ProdPrice:
                    <asp:Label ID="ProdPriceLabel" runat="server" Text='<%# Eval("ProdPrice") %>' />
                    <br />ProdImage:
                    <asp:Label ID="ProdImageLabel" runat="server" Text='<%# Eval("ProdImage") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br /></td>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
