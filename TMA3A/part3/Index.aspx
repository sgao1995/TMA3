<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="part3_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SlideShow</title>
        <link rel="stylesheet" type="text/css" href="../shared/style.css"/>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <header>
            <h2>Ajax Image Slider</h2>
        </header>
        <div id="homeContent">
           
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                
                <asp:Label ID="SlideTitle" runat="server"></asp:Label>
                <br />
                
                <asp:Label ID="SlideImg" runat="server" Text=""></asp:Label>
                
                <br />
                <asp:Label ID="SlideDescr" runat="server"></asp:Label>
                <asp:Label ID="imgCount" runat="server" Text="1" Visible="False"></asp:Label>
                <br />
                
                <asp:Button ID="prevBtn" runat="server" Text="Previous Image" OnClick="prevBtn_Click" />
                <asp:Button ID="nextBtn" runat="server" Text="Next Image" OnClick="nextBtn_Click" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="prevBtn" EventName="Click">
                </asp:AsyncPostBackTrigger>
                <asp:AsyncPostBackTrigger ControlID="nextBtn" EventName="Click">
                </asp:AsyncPostBackTrigger>
            </Triggers>
        </asp:UpdatePanel>
              
            </div>
    </div>

    </form>
    <footer>Assignment 3 part 3 by Su Gao</footer>
</body>
</html>
