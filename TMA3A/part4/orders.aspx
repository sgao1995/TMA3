<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orders.aspx.cs" Inherits="part4_orders" %>

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

           
            <asp:Button ID="Logout" runat="server" Text="Click to Log out" OnClick="Logout_Click" />

            <br />
            <asp:Label ID="orderLabel" runat="server" Text="Here are your orders "></asp:Label>
            <asp:Label ID="EmptyLabel" runat="server" Text="" Visible="False"></asp:Label>
            <asp:LinqDataSource ID="storeDataSource" runat="server" ContextTypeName="StoreClassesDataContext" EntityTypeName="" OrderBy="OrderId desc" TableName="OrderInfos" Select="new (CPU, Mobo, Memory, Storage, VideoC, Case, OS, PSU, tPrice)" Where="UserID == @UserID">
                <WhereParameters>
                    <asp:SessionParameter Name="UserID" SessionField="uID" Type="Int32" />
                </WhereParameters>
            </asp:LinqDataSource>

           

            <asp:ListView ID="ListView1" runat="server" DataSourceID="storeDataSource" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                <AlternatingItemTemplate>
                    <span style="background-color: #FFF8DC;">CPU:
                    <asp:Label ID="CPULabel" runat="server" Text='<%# Eval("CPU") %>' />
                    <br />
                    Motherboard:
                    <asp:Label ID="MoboLabel" runat="server" Text='<%# Eval("Mobo") %>' />
                    <br />
                    Memory:
                    <asp:Label ID="MemoryLabel" runat="server" Text='<%# Eval("Memory") %>' />
                    <br />
                    Storage:
                    <asp:Label ID="StorageLabel" runat="server" Text='<%# Eval("Storage") %>' />
                    <br />
                    Video Card:
                    <asp:Label ID="VideoCLabel" runat="server" Text='<%# Eval("VideoC") %>' />
                    <br />
                    Case:
                    <asp:Label ID="CaseLabel" runat="server" Text='<%# Eval("Case") %>' />
                    <br />
                    Operating System:
                    <asp:Label ID="OSLabel" runat="server" Text='<%# Eval("OS") %>' />
                    <br />
                    Power Supply Unit:
                    <asp:Label ID="PSULabel" runat="server" Text='<%# Eval("PSU") %>' />
                    <br />
                    Total Price:
                    <asp:Label ID="tPriceLabel" runat="server" Text='<%# Eval("tPrice") %>' />
                    <br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="background-color: #008A8C;color: #FFFFFF;">CPU:
                    <asp:TextBox ID="CPUTextBox" runat="server" Text='<%# Bind("CPU") %>' />
                    <br />
                    Motherboard:
                    <asp:TextBox ID="MoboTextBox" runat="server" Text='<%# Bind("Mobo") %>' />
                    <br />
                    Memory:
                    <asp:TextBox ID="MemoryTextBox" runat="server" Text='<%# Bind("Memory") %>' />
                    <br />
                    Storage:
                    <asp:TextBox ID="StorageTextBox" runat="server" Text='<%# Bind("Storage") %>' />
                    <br />
                    Video Card:
                    <asp:TextBox ID="VideoCTextBox" runat="server" Text='<%# Bind("VideoC") %>' />
                    <br />
                    Case:
                    <asp:TextBox ID="CaseTextBox" runat="server" Text='<%# Bind("Case") %>' />
                    <br />
                    Operating System:
                    <asp:TextBox ID="OSTextBox" runat="server" Text='<%# Bind("OS") %>' />
                    <br />
                    Power Supply Unit:
                    <asp:TextBox ID="PSUTextBox" runat="server" Text='<%# Bind("PSU") %>' />
                    <br />
                    Total Price:
                    <asp:TextBox ID="tPriceTextBox" runat="server" Text='<%# Bind("tPrice") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">CPU:
                    <asp:TextBox ID="CPUTextBox" runat="server" Text='<%# Bind("CPU") %>' />
                    <br />Motherboard:
                    <asp:TextBox ID="MoboTextBox" runat="server" Text='<%# Bind("Mobo") %>' />
                    <br />Memory:
                    <asp:TextBox ID="MemoryTextBox" runat="server" Text='<%# Bind("Memory") %>' />
                    <br />Storage:
                    <asp:TextBox ID="StorageTextBox" runat="server" Text='<%# Bind("Storage") %>' />
                    <br />Video Card:
                    <asp:TextBox ID="VideoCTextBox" runat="server" Text='<%# Bind("VideoC") %>' />
                    <br />Case:
                    <asp:TextBox ID="CaseTextBox" runat="server" Text='<%# Bind("Case") %>' />
                    <br />Operating System:
                    <asp:TextBox ID="OSTextBox" runat="server" Text='<%# Bind("OS") %>' />
                    <br />Power Supply Unit:
                    <asp:TextBox ID="PSUTextBox" runat="server" Text='<%# Bind("PSU") %>' />
                    <br />Total Price:
                    <asp:TextBox ID="tPriceTextBox" runat="server" Text='<%# Bind("tPrice") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /><br /></span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="background-color: #DCDCDC;color: #000000;">CPU:
                    <asp:Label ID="CPULabel" runat="server" Text='<%# Eval("CPU") %>' />
                    <br />
                    Motherboard:
                    <asp:Label ID="MoboLabel" runat="server" Text='<%# Eval("Mobo") %>' />
                    <br />
                    Memory:
                    <asp:Label ID="MemoryLabel" runat="server" Text='<%# Eval("Memory") %>' />
                    <br />
                    Storage:
                    <asp:Label ID="StorageLabel" runat="server" Text='<%# Eval("Storage") %>' />
                    <br />
                    Video Card:
                    <asp:Label ID="VideoCLabel" runat="server" Text='<%# Eval("VideoC") %>' />
                    <br />
                    Case:
                    <asp:Label ID="CaseLabel" runat="server" Text='<%# Eval("Case") %>' />
                    <br />
                    Operating System:
                    <asp:Label ID="OSLabel" runat="server" Text='<%# Eval("OS") %>' />
                    <br />
                    Power Supply Unit:
                    <asp:Label ID="PSULabel" runat="server" Text='<%# Eval("PSU") %>' />
                    <br />
                    Total Price:
                    <asp:Label ID="tPriceLabel" runat="server" Text='<%# Eval("tPrice") %>' />
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">CPU:
                    <asp:Label ID="CPULabel" runat="server" Text='<%# Eval("CPU") %>' />
                    <br />
                    Motherboard:
                    <asp:Label ID="MoboLabel" runat="server" Text='<%# Eval("Mobo") %>' />
                    <br />
                    Memory:
                    <asp:Label ID="MemoryLabel" runat="server" Text='<%# Eval("Memory") %>' />
                    <br />
                    Storage:
                    <asp:Label ID="StorageLabel" runat="server" Text='<%# Eval("Storage") %>' />
                    <br />
                    Video Card:
                    <asp:Label ID="VideoCLabel" runat="server" Text='<%# Eval("VideoC") %>' />
                    <br />
                    Case:
                    <asp:Label ID="CaseLabel" runat="server" Text='<%# Eval("Case") %>' />
                    <br />
                    Operating System:
                    <asp:Label ID="OSLabel" runat="server" Text='<%# Eval("OS") %>' />
                    <br />
                    Power Supply Unit:
                    <asp:Label ID="PSULabel" runat="server" Text='<%# Eval("PSU") %>' />
                    <br />
                    Total Price:
                    <asp:Label ID="tPriceLabel" runat="server" Text='<%# Eval("tPrice") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>

           

        </div>
    </div>

    </form>
    <footer>Assignment 3 part 4 by Su Gao</footer>
</body>
</html>
