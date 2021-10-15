<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.cs" Inherits="AJames_ITSD325.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
                <p class="lead" style="font-size: x-large; width: 1043px">Welcome to the all things <span style="color: #3399FF">string</span> related!</p>
    </div>
    <div id="menu">

</div>
    <div class="row">
        <div class="col-md-4">
            <h2>Products for Sale</h2>
            <p>
                Kitten&#39;s Corner is decicated to the love of things yarn related. Here you can purchase patterns and tools for crocheting, knitting, cross-stitch, and other yarn and thread related crafts. You can also purchase yarn and thread!</p>
        </div>
        <div class="col-md-4">
            <h2>Visit our &quot;Fine Threads&quot; Catalog</h2>
            <p>
                If you already have an idea of what you want, or just want to browse to plan your next project, click the button below to look at our catalog of &quot;Fine Threads&quot;. You can purchase tools, yarn, and thread for your next project.</p>
            <p>
                <a class="btn btn-default" href="Catalog.aspx">&quot;Fine Threads&quot; Catalog &raquo;</a>
            </p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Need Project Ideas?</h2>
            <p>
                Need a project but just not sure what to do. Look no further! Here are some patterns that may inspire you. Just browse our &quot;Pattern House&quot;.</p>
            <p>
                <a class="btn btn-default" href="PatternHouse.aspx">Pattern House &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
