<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom PC Parts Store</title>
    <link rel="stylesheet" type="text/css" href="../shared/style.css"/>
</head>
<body>
    <form id="form1" runat="server">

         <div id="headerDiv1">
         <header>
            <h2>CUSTOM PC PARTS ONLINE STORE</h2>
        </header>
        <nav>
            <ul>
                <li><asp:HyperLink ID="CustomPC" runat="server" NavigateUrl="~/part1/Index.aspx">Customize and Order PC</asp:HyperLink></li>
                <li class="current"><asp:HyperLink ID="Aboutpage" runat="server" NavigateUrl="~/part1/About.aspx">About</asp:HyperLink></li>
            </ul>
        </nav>
        </div>
    <div id="homeContent">
      
      
        <div runat="server" id="mainContent">

           
            <h3>Welcome to the Online PC Store!</h3>
            <p>
                In order to place orders for a custom PC, please go to the &quot;Customize and Order PC&quot; tab. You will then have to select parts, click the buttons with the part category name (CPU, Motherboard, etc) and make your selection.</p>
            <p>
                After making your selection, please press the submit order button, this will place the order and you will be shown your choices along with the total price. Please make sure to have selected something in every category besides optional ones (memory and storage).</p>

           

        </div>
    </div>

    </form>
    <footer>Assignment 3 part 1 by Su Gao</footer>
</body>
</html>
