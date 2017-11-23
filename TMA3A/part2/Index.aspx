<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="part2_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Client Info</title>
    <link rel="stylesheet" type="text/css" href="../shared/style.css"/>

</head>
<body>
    
    <form id="form1" runat="server">
         <header>
            <h2>User Info Tracking with Cookies</h2>
        </header>
    <div id="homeContent">
       
        <div runat="server" id="mainContent">

            <asp:Label ID="TimesVisitedLabel" runat="server"></asp:Label>
            <br />
            <asp:Label ID="IPAddressLabel" runat="server"></asp:Label>
            <br />
            <asp:Label ID="TimeLabel" runat="server"></asp:Label>


        </div>
    </div>

    </form>
    <script type="text/javascript">
        //when window loads, get client time and store it in the hidden label
        window.onload = getClientTime();

            function getClientTime() {
            var clientdate = new Date();
            var hour = clientdate.getHours();
            var minute = clientdate.getMinutes();
            document.getElementById('TimeLabel').innerText = "Client current time is: "+hour + ":" + minute;
            
        }
    </script>
    <footer>Assignment 3 part 2 by Su Gao</footer>
</body>
</html>
