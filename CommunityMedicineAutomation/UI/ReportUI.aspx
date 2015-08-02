<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="ReportUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.ReportUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Barchart Report
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
    <div class="controlItem">
         <h1>Barchart Report</h1> <hr/>
            </div>
        <div class="controlBody">
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label2" runat="server" Text="From" Font-Size="20" Font-Bold="true"></asp:Label>
        <input type="date" name="dateFrom" id="dateFrom" style="font-size:15px; height: 23px;"/>
        <asp:Label ID="Label1" runat="server" Text="To" Font-Size="20" Font-Bold="true"></asp:Label>
        <input type="date" name="dateTo" id="dateTo" style="font-size:15px; height: 23px;"/><br /><br />
        <asp:Label ID="Label" runat="server" Text=""></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="District" Font-Size="20" Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="districtDropDownList" runat="server" Font-Size="15" Font-Bold="true" Width="120px"></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="showReportButton" runat="server" Text="Show Report" Font-Size="20" Font-Bold="true" ForeColor="White" BackColor="Green" OnClick="showReportButton_Click" /><br /><br />
        <asp:Label ID="megLabel" runat="server" Text=""></asp:Label>
    </div>
       
      <asp:Panel runat="server" ID="Barchat">
        <asp:Chart ID="Chart1" runat="server">
            <series>
                <asp:Series Name="Series1">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        
    </asp:Panel>
       
    </form>
 </div>
    </asp:Content>
