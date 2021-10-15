<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="AJames_ITSD325.ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</head>
    <body>
    <form id="form1" runat="server">
        <div>
            <h1>Shopping Cart</h1>
    </div>
        <div id="menu">
<ul>
<li><a href="Home.aspx">Home</a></li>
<li><a href="Catalog.aspx">Catalog</a></li>
<li><a href="PatternHouse.aspx">Pattern House</a></li>
<li><a href="ShoppingCart.aspx">Shopping Cart</a></li>
</ul>

</div>
        <strong><span class="auto-style1">Your Current Cart:<br />
        <br />
        </span></strong>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp; $<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Check Out" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </form>
        </body>
</html>
