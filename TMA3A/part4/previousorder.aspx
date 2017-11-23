<%@ Page Language="C#" AutoEventWireup="true" CodeFile="previousorder.aspx.cs" Inherits="part4_previousorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orders</title>
    <link rel="stylesheet" type="text/css" href="../shared/style.css"/>

</head>
<body>
    <form id="form1" runat="server">
             <div id="headerDiv">
             <header>
            <h2>CUSTOM PC PARTS ONLINE STORE</h2>
        </header>
        <nav>
            <ul>
                <li><asp:HyperLink ID="CustomPC" runat="server" NavigateUrl="~/part4/Index.aspx">Customize and Order PC</asp:HyperLink></li>
                <li><asp:HyperLink ID="Aboutpage" runat="server" NavigateUrl="~/part4/About.aspx">About</asp:HyperLink></li>
                <li class="current"><asp:HyperLink ID="PrevOrders" runat="server" NavigateUrl="~/part4/previousorder.aspx">Previous Orders</asp:HyperLink></li>

            </ul>
                 </nav>
            </div>
         <div id="homeContent">
    
        <div runat="server" id="mainContent">
         <h3>Please Login to check your previous orders</h3>
        
         
     
        <div id ="LoginDiv" runat="server">
        <label>Username: </label><asp:TextBox ID="LoginUsername" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RFVLoginU" runat="server" ControlToValidate="LoginUsername" Display="Dynamic" ErrorMessage="Please enter an username" ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="REVLoginU" runat="server" ControlToValidate="LoginUsername" Display="Dynamic" ErrorMessage="Please enter a valid username (length between 1 and 25 characters and only numbers and letters allowed)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z0-9]{1,25}$" ></asp:RegularExpressionValidator>

        <label>
            <br />
            Password: </label><asp:TextBox ID="LoginPassword" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFVLoginPass" runat="server" ControlToValidate="LoginPassword" Display="Dynamic" ErrorMessage="Please enter a password" ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVLoginPass" runat="server" ControlToValidate="LoginPassword" Display="Dynamic" ErrorMessage="Please enter a valid password (length between 1 and 25 characters and only numbers and letters allowed)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z0-9]{1,25}$" ></asp:RegularExpressionValidator>

      
            <br />

            <asp:Label ID="LoginErrorLabel" runat="server" ForeColor="Red" Visible="False"></asp:Label>

        

        <asp:Button ID="LoginSubmitBtn" runat="server" Text="Login" OnClick="LoginSubmitBtn_Click" ValidationGroup="Login" /><br />

        </div>
        </div>
             </div>
    </form>
    <footer>Assignment 3 part 4 by Su Gao3 part 4 by Su Gao</footer>
</body>
</html>
