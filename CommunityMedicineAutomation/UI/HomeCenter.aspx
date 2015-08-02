<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="HomeCenter.aspx.cs" Inherits="CommunityMedicineAutomation.UI.WebForm2" %>
<asp:Content ID="Content5" ContentPlaceHolderID="Title" runat="server">
   Head Office 
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
    <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <br />
                    <h2>Center</h2>
                    <hr class="star-primary">
                </div>
            </div>
            </div>
                <div id="menu_items">
            <ul id="menu">
            <li><a href="DoctorEntryUI.aspx">Doctor Entry</a></li>
            <li><a href="TreatmentGivenUI.aspx">Treatment</a></li>
            <li><a href="MedicineStockReportUI.aspx">Medicine Stock Report</a></li>
            <li><a href="ShowAllHistoryUI.aspx">Treatment History</a></li>
              <li><a href="CenterLoginUI.aspx">Log Out</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>
