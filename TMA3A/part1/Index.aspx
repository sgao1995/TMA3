<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

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
                <li class ="current"><asp:HyperLink ID="CustomPC" runat="server" NavigateUrl="~/part1/Index.aspx">Customize and Order PC</asp:HyperLink></li>
                <li><asp:HyperLink ID="Aboutpage" runat="server" NavigateUrl="~/part1/About.aspx">About</asp:HyperLink></li>
            </ul>
        </nav>
        </div>
        <div id="homeContent">
        <div runat="server" id="mainContent">

            <h3>Welcome to the custom pc parts store!</h3>
            <h4>Select your pc parts:</h4>
            <p>
                <asp:Button ID="CPUbtn" runat="server" OnClick="CPUbtn_Click" Text="CPU" />
                <asp:RadioButtonList ID="RadioButtonListCPU" runat="server" Visible="False">
                    <asp:ListItem Value="350">Intel Core i7-6700K (Price: $350)</asp:ListItem>
                    <asp:ListItem Value="250">Intel Core i5-6600K (Price: $250)</asp:ListItem>
                    <asp:ListItem Value="160">AMD FX-8350 (Price: $160)</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCPU" runat="server" ControlToValidate="RadioButtonListCPU" Display="Dynamic" ErrorMessage="Please select a CPU" ForeColor="Red"></asp:RequiredFieldValidator>
             </p>
            <p>
                <asp:Button ID="MotherboardBtn" runat="server" Text="Motherboard" OnClick="MotherboardBtn_Click" />
                <asp:RadioButtonList ID="RadioButtonListMOBO" runat="server" Visible="False">
                    <asp:ListItem Value="290">MSI X99A GAMING PRO CARBON ATX LGA2011-3 Motherboard (Price: $290)</asp:ListItem>
                    <asp:ListItem Value="119">MSI Z97-GD65 Gaming ATX LGA1150 Motherboard (Price: $119)</asp:ListItem>
                    <asp:ListItem Value="118">Asus M5A99FX PRO R2.0 ATX AM3+ Motherboard (Price: $118)</asp:ListItem>
                    <asp:ListItem Value="89">ASRock 970 Extreme3 R2.0 AM3+ AMD 970 SATA 6Gb/s USB 3.0 ATX AMD Motherboard (Price: $89)</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorMOBO" runat="server" ControlToValidate="RadioButtonListMOBO" Display="Dynamic" ErrorMessage="Please select a Motherboard" ForeColor="Red"></asp:RequiredFieldValidator>
             </p>
            <p>
                <asp:Button ID="MemoryBtn" runat="server" Text="Memory" OnClick="MemoryBtn_Click" />
                <asp:CheckBoxList ID="CheckBoxListMem" runat="server" Visible="False">
                    <asp:ListItem Value="72">CORSAIR Vengeance Pro 16GB (2 x 8GB) 240-Pin DDR3 SDRAM DDR3 2400 (Price: $72)</asp:ListItem>
                    <asp:ListItem Value="30">Crucial 8GB (1 x 8GB) DDR4-2133 Memory (Price: $30)</asp:ListItem>
                    <asp:ListItem Value="30">G.Skill Aegis 8GB (1 x 8GB) DDR4-2133 Memory (Price: $30)</asp:ListItem>
                    <asp:ListItem Value="20">G.SKILL Ripjaws X Series 4GB 240-Pin DDR3 SDRAM DDR3 1600 (Price: $20)</asp:ListItem>
                </asp:CheckBoxList>
            </p>
            <p>
                <asp:Button ID="StorageBtn" runat="server" Text="Storage" OnClick="StorageBtn_Click" />
                <asp:CheckBoxList ID="CheckBoxListStor" runat="server" Visible="False">
                    <asp:ListItem Value="220">PNY CS1311 960GB 2.5&quot; Solid State Drive (Price: $220)</asp:ListItem>
                    <asp:ListItem Value="68">Seagate Barracuda 2TB 3.5&quot; 7200RPM Internal Hard Drive (Price: $68)</asp:ListItem>
                    <asp:ListItem Value="60">AMD Radeon R3 240GB 2.5&quot; Solid State Drive (Price: $60)</asp:ListItem>
                    <asp:ListItem Value="85">Toshiba 3TB 3.5&quot; 7200RPM Internal Hard Drive (Price: $85)</asp:ListItem>
                </asp:CheckBoxList>
            </p>
            <p>
                <asp:Button ID="VideoCardBtn" runat="server" Text="Video Card" OnClick="VideoCardBtn_Click" />
                <asp:RadioButtonList ID="RadioButtonListVC" runat="server" Visible="False">
                    <asp:ListItem Value="800">MSI GeForce GTX 1080 (Price: $800)</asp:ListItem>
                    <asp:ListItem Value="200">XFX Radeon RX 480 (Price: $200)</asp:ListItem>
                    <asp:ListItem Value="250">EVGA GeForce GTX 1060 (Price: $250)</asp:ListItem>
                    <asp:ListItem Value="0">No Video Card (Price: $0)</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorVC" runat="server" ControlToValidate="RadioButtonListVC" Display="Dynamic" ErrorMessage="Please select a Video Card" ForeColor="Red"></asp:RequiredFieldValidator>
             </p>
            <p>
                <asp:Button ID="CaseBtn" runat="server" Text="Computer Case" OnClick="CaseBtn_Click" />
                <asp:RadioButtonList ID="RadioButtonListCase" runat="server" Visible="False">
                    <asp:ListItem Value="45">NZXT Source 210 S210-001 Black SECC Steel, ABS Plastic ATX Mid Tower Computer Case (Price: $45)</asp:ListItem>
                    <asp:ListItem Value="120">NEW NZXT H440 STEEL Mid Tower Case (Price: $120)</asp:ListItem>
                    <asp:ListItem Value="80">Fractal Design Core 3300 Black Wide-body ATX Midtower Computer Case (Price: $80)</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCase" runat="server" ControlToValidate="RadioButtonListCase" Display="Dynamic" ErrorMessage="Please select a Case" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Button ID="OSBtn" runat="server" Text="Operating System" OnClick="OSBtn_Click" />
                <asp:RadioButtonList ID="RadioButtonListOS" runat="server" Visible="False">
                    <asp:ListItem Value="120">Windows 7 Professional (Price: $120) </asp:ListItem>
                    <asp:ListItem Value="169">Windows 8.1 (Price: $169)</asp:ListItem>
                    <asp:ListItem Value="129">Windows 10 Professional (Price: $129)</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorOS" runat="server" ControlToValidate="RadioButtonListOS" Display="Dynamic" ErrorMessage="Please select an Operating System" ForeColor="Red"></asp:RequiredFieldValidator>
            </p>
            <p>
                <asp:Button ID="PowerSupplyBtn" runat="server" Text="Power Supply Unit" OnClick="PowerSupplyBtn_Click" />
                <asp:RadioButtonList ID="RadioButtonListPSU" runat="server" Visible="False">
                    <asp:ListItem Value="78">EVGA SuperNOVA 650 G1 80+ GOLD, 650W Continuous Power, Fully Modular (Price: $78)</asp:ListItem>
                    <asp:ListItem Value="37">EVGA 500 W1 80+, 500W Continuous Power, 3 Year Warranty Power Supply (Price: $37)</asp:ListItem>
                    <asp:ListItem Value="60">Sentey MBP750-HM Power Supply, 750 watts, 80 Plus Bronze Modular (Price: $60)</asp:ListItem>
                    <asp:ListItem Value="120">Corsair RMx Series, RM850x, 850W, Fully Modular Power Supply, 80+ Gold Certified, 10 year warranty (Price: $120)</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorPSU" runat="server" ControlToValidate="RadioButtonListPSU" Display="Dynamic" ErrorMessage="Please select a Power Supply Unit" ForeColor="Red"></asp:RequiredFieldValidator>
           </p>
            <p>
                <asp:Button ID="SubmitBtn" runat="server" Text="Submit Order" OnClick="SubmitBtn_Click" CausesValidation ="true"/>
            </p>

        </div>
   
        <div id="resultDiv" runat="server" visible="false" >
        <asp:Label ID="ResultLabel" runat="server" Visible="False"><h2>Thank you for ordering! Here are the parts you ordered: </h2></asp:Label>
        </div>
             </div>
    </form>
    <footer>Assignment 3 part 1 by Su Gao</footer>
</body>
</html>
