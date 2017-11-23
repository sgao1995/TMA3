<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="part4_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom PC Parts Store (part 4)</title>
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
                <li class="current"><asp:HyperLink ID="CustomPC" runat="server" NavigateUrl="~/part4/Index.aspx">Customize and Order PC</asp:HyperLink></li>
                <li><asp:HyperLink ID="Aboutpage" runat="server" NavigateUrl="~/part4/About.aspx">About</asp:HyperLink></li>
                <li><asp:HyperLink ID="PrevOrders" runat="server" NavigateUrl="~/part4/previousorder.aspx">Previous Orders</asp:HyperLink></li>

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
                <asp:Button ID="SubmitBtn" runat="server" Text="Submit Order" OnClick="SubmitBtn_Click" CausesValidation ="true"/>

       
    </div>
        <div id ="RegisterDiv" runat="server" Visible ="false">
        <asp:Label ID="UserRegisterLabel" runat="server"><h2>Please Register to submit order: </h2></asp:Label>
        <label>Username: </label><asp:TextBox ID="RegisUsername" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RFVRegisU" runat="server" ControlToValidate="RegisUsername" Display="Dynamic" ErrorMessage="Please enter an username" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
           
        <asp:RegularExpressionValidator ID="REVRegisU" runat="server" ControlToValidate="RegisUsername" Display="Dynamic" ErrorMessage="Please enter a valid username (length between 1 and 25 characters and only numbers and letters allowed)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z0-9]{1,25}$" ></asp:RegularExpressionValidator>

        <label>
            <br />
            Password: </label><asp:TextBox ID="RegisPassword" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFVRegisPass" runat="server" ControlToValidate="RegisPassword" Display="Dynamic" ErrorMessage="Please enter a password" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVRegisPass" runat="server" ControlToValidate="RegisPassword" Display="Dynamic" ErrorMessage="Please enter a valid password (length between 1 and 25 characters and only numbers and letters allowed)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z0-9]{1,25}$" ></asp:RegularExpressionValidator>

        <label>
            <br />
            Email: </label><asp:TextBox ID="Regisemail" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ControlToValidate="Regisemail" Display="Dynamic" ErrorMessage="Please enter an email" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            <!--reg expression from: http://stackoverflow.com/questions/24115303/max-length-for-email-validation-with-regular-expression-->
            <asp:RegularExpressionValidator ID="REVEmail" runat="server" ControlToValidate="Regisemail" Display="Dynamic" ErrorMessage="Please enter a valid email (max length 100 characters)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^(?=.{1,100}$)[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$" ></asp:RegularExpressionValidator>


        <label>
            <br />
            Address: </label><asp:TextBox ID="RegisAddress" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ControlToValidate="RegisAddress" Display="Dynamic" ErrorMessage="Please enter an address" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
           <!--reg expression from: http://regexlib.com/Search.aspx?k=street-->
             <asp:RegularExpressionValidator ID="REVAddress" runat="server" ControlToValidate="RegisAddress" Display="Dynamic" ErrorMessage="Please enter a valid address (Example: 400 Whitney Avenue, make sure the first letters and capitalized and there is a max of 6 numbers in front)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^\d{1,6}\040([A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,})$|^\d{1,6}\040([A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,})$|^\d{1,6}\040([A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,}\040[A-Z]{1}[a-z]{1,})$" ></asp:RegularExpressionValidator>

        <label>
            <br />
            First Name: </label><asp:TextBox ID="fname" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFVfname" runat="server" ControlToValidate="fname" Display="Dynamic" ErrorMessage="Please enter a first name" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVfname" runat="server" ControlToValidate="fname" Display="Dynamic" ErrorMessage="Please enter a valid name (length between 1 and 25 letters)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z]{1,25}$" ></asp:RegularExpressionValidator>

        <label>
            <br />
            Last Name: </label><asp:TextBox ID="lname" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFVlname" runat="server" ControlToValidate="lname" Display="Dynamic" ErrorMessage="Please enter a last name" ForeColor="Red" ValidationGroup="Register"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVlname" runat="server" ControlToValidate="lname" Display="Dynamic" ErrorMessage="Please enter a valid name (length between 1 and 25 letters)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z]{1,25}$" ></asp:RegularExpressionValidator>

            <br />

            <asp:Label ID="RegisterError" runat="server" ForeColor="Red" Visible="False"></asp:Label>

            <br />

        <asp:Button ID="RegisterSubmitBtn" runat="server" Text="Register and Submit order" OnClick="RegisterSubmitBtn_Click" ValidationGroup="Register" /><br />
        </div>
        <div id ="LoginDiv" runat="server" Visible ="false">
        <asp:Label ID="UserLoginLabel" runat="server"><h2>If you already have an account, please log in: </h2></asp:Label>
        <label>Username: </label><asp:TextBox ID="LoginUsername" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RFVLoginU" runat="server" ControlToValidate="LoginUsername" Display="Dynamic" ErrorMessage="Please enter an username" ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="REVLoginU" runat="server" ControlToValidate="LoginUsername" Display="Dynamic" ErrorMessage="Please enter a valid username (length between 1 and 25 characters and only numbers and letters allowed)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z0-9]{1,25}$" ></asp:RegularExpressionValidator>

        <label>
            <br />
            Password: </label><asp:TextBox ID="LoginPassword" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RFVLoginPass" runat="server" ControlToValidate="LoginPassword" Display="Dynamic" ErrorMessage="Please enter a password" ForeColor="Red" ValidationGroup="Login"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVLoginPass" runat="server" ControlToValidate="LoginPassword" Display="Dynamic" ErrorMessage="Please enter a valid password (length between 1 and 25 characters and only numbers and letters allowed)" ForeColor="Red" ValidationGroup="Register" ValidationExpression="^[a-zA-Z0-9]{1,25}$" ></asp:RegularExpressionValidator>

      
            <br />

            <asp:Label ID="LoginErrorLabel" runat="server" ForeColor="Red" Visible="False"></asp:Label><br />

        <asp:Button ID="LoginSubmitBtn" runat="server" Text="Login and Submit order" OnClick="LoginSubmitBtn_Click" ValidationGroup="Login" /><br />

        </div>
         </div>
    </form>
    <footer>Assignment 3 part 4 by Su Gao3 part 4 by Su Gao</footer>
</body>
</html>
