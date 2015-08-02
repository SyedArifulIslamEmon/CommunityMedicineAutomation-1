<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="MedicineStockReportUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.MedicineStockReportUI" %>
<asp:Content ID="Content5" ContentPlaceHolderID="Title" runat="server">
    Medicine Stock Report
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
    <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br />
                    <h2>Doc....</h2>
                    <hr class="star-primary">
                </div>
            </div>
            </div>
              <div id="menu_items">
     <ul id="menu">
            <li><a href="DoctorEntryUI.aspx">Doctor Entry</a></li>
            <li><a href="TreatmentGivenUI.aspx">Treatment</a></li>
            <li class="current"><a href="MedicineStockReportUI.aspx">Medicine Stock Report</a></li>
            <li><a href="ShowAllHistoryUI.aspx">Treatment History</a></li>
              <li><a href="CenterLoginUI.aspx">Log Out</a></li>
          </ul>
        </div><!--close menu-->
        <br /><br />
        <div class="controlItem">
         <h1>Medicine Stock Report</h1> <hr/>
            </div>
        <div class="controlBody">
         <form id="form1" runat="server">
    <div>
        <asp:GridView ID="reportGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="318px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="NameOfMedicine" HeaderText="Medicine Name" />
                <asp:BoundField DataField="Quantity" HeaderText="Present Stock " />
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
    </div>
    </form>
        </div>

</asp:Content>


