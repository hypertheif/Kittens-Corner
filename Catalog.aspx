<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="AJames_ITSD325.Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Catalog</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>"Fine Threads" Catalog</h1>
            <div id="menu">
<ul>
<li><a href="Home.aspx">Home</a></li>
<li><a href="Catalog.aspx">Catalog</a></li>
<li><a href="PatternHouse.aspx">Pattern House</a></li>
<li><a href="ShoppingCart.aspx">Shopping Cart</a></li>
</ul>
</div>
    </div>
        
        <asp:DataList ID="DataList1" runat="server" DataSourceID="CatalogDataSource" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyField="ProdID" GridLines="Horizontal" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="AddToCart">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                ProdID:
                <asp:Label ID="ProdIDLabel" runat="server" Text='<%# Eval("ProdID") %>' />
                <br />
                ProdName:
                <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Eval("ProdName") %>' />
                <br />
                ProdDescription:
                <asp:Label ID="ProdDescriptionLabel" runat="server" Text='<%# Eval("ProdDescription") %>' />
                <br />
                ProdSummary:
                <asp:Label ID="ProdSummaryLabel" runat="server" Text='<%# Eval("ProdSummary") %>' />
                <br />
                ProdPrice:
                <asp:Label ID="ProdPriceLabel" runat="server" Text='<%# Eval("ProdPrice") %>' />
                <br />
                ProdImage:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("ProdImage", "Images/{0}") %>' Width="100px" />
                <br />
                <br />
                <asp:Button ID="butCart" runat="server" style="margin-left: 50px" Text="Add to Cart" />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
        <asp:SqlDataSource ID="CatalogDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    </form>

</body>
</html>
