<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="SendMedicineUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.SendMedicineUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Send Medicine
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
    <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br />
                    <h2>Head Office</h2>
                    <hr class="star-primary">
                </div>
            </div>
            </div>
                <div id="menu_items">
            <ul id="menu">
            <li><a href="DiseaseEntryUI.aspx">Disease Entry</a></li>
            <li><a href="MedicineEntryUI.aspx">Medicine Entry</a></li>
            <li><a href="CenterEntryUI.aspx">Create New Center</a></li>
            <li class="current"><a href="SendMedicineUI.aspx">Send Medicine</a></li>
          </ul>
        </div><!--close menu-->
        <br /><br />
        <div class="controlItem">
         <h1>Send Medicine</h1> <hr/>
            </div>
        <div class="controlBody">
         <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="District" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="districtSendMedicineDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtSendMedicineDropDownList_SelectedIndexChanged" Font-Size="15px" Font-Bold="true" Width="155px" Height="25px"></asp:DropDownList><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Thana" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="thanaSendMedicineDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="thanaSendMedicineDropDownList_SelectedIndexChanged" Font-Size="15px" Font-Bold="true" Width="155px" Height="25px"></asp:DropDownList><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Center" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="centerSendMecinieDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="299px"></asp:DropDownList><br /><br />
        <asp:Label ID="Label5" runat="server" Text="Select Medicine" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="selectMedicineDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Width="237px" Height="25px"></asp:DropDownList>
         <br />
        <br />
         <asp:Label ID="Label6" runat="server" Text="Quantity" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="sendMedicineQuantityTextBox" runat="server" Font-Size="15px" Font-Bold="true"></asp:TextBox><br /><br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addButton" runat="server" Text="Add" OnClick="addButton_Click"  Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" /><br /><br />
        <asp:GridView ID="sendMedicineGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="OnPaging" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="NameOfMedicine" HeaderText="Medicine Name" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click"  Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" Visible="false" /><br /><br />
        <asp:Label ID="megLabel" runat="server" Text="" Font-Size="20px" Font-Bold="true" ForeColor="Green"></asp:Label>
    
    </div>
    </form>
        </div>

</asp:Content>












 
