<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="AJames_ITSD325.Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

    .jumbotron {
        margin-top: 20px;
    }

    .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eeeeee;
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
  *,
  *:before,
  *:after {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 63px;
  }
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
    background-color: #F5CB82;
    width: 1047px;
}
        h1,
.h1,
h2,
.h2,
h3,
.h3 {
            margin-top: 20px;
            margin-bottom: 10px;
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            font-size: 36px;
            background-color: #FDE5CA;
        }
h1 {
  font-size: 2em;
  margin: 0.67em 0;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 21px;
  font-weight: 200;
    text-align: center;
}
  .lead {
    font-size: 21px;
  }
.lead {
  margin-bottom: 20px;
  font-size: 16px;
  font-weight: 300;
  line-height: 1.4;
}
p {
  margin: 0 0 10px 2px;
}
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  .row {
  margin-right: -15px;
  margin-left: -15px;
}
  .col-md-4 {
    width: 78%;
  }
  .col-md-1,
  .col-md-2,
  .col-md-3,
  .col-md-4,
  .col-md-5,
  .col-md-6,
  .col-md-7,
  .col-md-8,
  .col-md-9,
  .col-md-10,
  .col-md-11,
  .col-md-12 {
    float: left;
  }
  .col-xs-1,
.col-sm-1,
.col-md-1,
.col-lg-1,
.col-xs-2,
.col-sm-2,
.col-md-2,
.col-lg-2,
.col-xs-3,
.col-sm-3,
.col-md-3,
.col-lg-3,
.col-xs-4,
.col-sm-4,
.col-md-4,
.col-lg-4,
.col-xs-5,
.col-sm-5,
.col-md-5,
.col-lg-5,
.col-xs-6,
.col-sm-6,
.col-md-6,
.col-lg-6,
.col-xs-7,
.col-sm-7,
.col-md-7,
.col-lg-7,
.col-xs-8,
.col-sm-8,
.col-md-8,
.col-lg-8,
.col-xs-9,
.col-sm-9,
.col-md-9,
.col-lg-9,
.col-xs-10,
.col-sm-10,
.col-md-10,
.col-lg-10,
.col-xs-11,
.col-sm-11,
.col-md-11,
.col-lg-11,
.col-xs-12,
.col-sm-12,
.col-md-12,
.col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-right: 15px;
  padding-left: 15px;
            top: 0px;
            left: 0px;
        }
h2,
.h2 {
    font-size: 30px;
    background-color: #FDE5CA;
    font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
}
  h2,
  h3 {
    page-break-after: avoid;
  }
  .btn-default {
  color: #333;
  background-color: #FFCCFF;
  border-color: #ccc;
}
.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: normal;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  border-radius: 4px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
a {
  color: #337ab7;
  text-decoration: none;
}
  a,
  a:visited {
    text-decoration: underline;
  }
  a {
  background-color: transparent;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

    <div class="jumbotron">
        <h1>
            <img alt="" src="Images/Kitten%20yarn.jpg" style="width: 139px; height: 127px; margin-right: 24px; margin-top: 0px" /><span style="font-size: larger" class="h1">Kitten&#39;s Corner</span></h1>
        <p class="h2" style="font-size: x-large; width: 1043px">&quot;Fine Threads&quot; Catalog</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>&quot;Fine Threads&quot;</h2>
            <p>
                Kitten&#39;s Corner is decicated to the love of things yarn related. Here you can purchase patterns and tools for crocheting, knitting, cross-stitch, and other yarn and thread related crafts. You can also purchase yarn and thread!</p>
        </div>
    </div>

        </div>
    </form>
</body>
</html>
