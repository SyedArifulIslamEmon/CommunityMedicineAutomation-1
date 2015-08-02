<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="DiseaseWiseReportUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.DiseaseWiseReportUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Disease Wise Report
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
    <div class="controlItem">
         <h1>Disease Wise Report</h1> <hr/>
            </div>
        <div class="controlBody">
           <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Select Disease: "></asp:Label>
        <asp:DropDownList ID="diseaseDropDownList" runat="server"></asp:DropDownList><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Date Between" Font-Size="20" Font-Bold="true"></asp:Label>
        <input type="date" name="dateFrom" id="dateFrom" style="font-size:15px;"/>
        <asp:Label ID="Label3" runat="server" Text="And" Font-Size="20" Font-Bold="true"></asp:Label>
        <input type="date" name="dateTo" id="dateTo" style="font-size:15px;"/><br /><br />
        <asp:Button ID="showButton" runat="server" Text="Show Report" OnClick="showButton_Click" /><br /><br />
        <asp:Label ID="megLabel" runat="server" Text=""></asp:Label><br /><br />
        <asp:GridView ID="reportGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="DistrictName" HeaderText="District Name" />
                <asp:BoundField DataField="Count" HeaderText="Total Patient" />
                <asp:BoundField DataField="Population" HeaderText="% Over Population" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
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
