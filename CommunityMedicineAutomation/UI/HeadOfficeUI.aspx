<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="HeadOfficeUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.HeadOfficeUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
   Head Office 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
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
            <li><a href="SendMedicineUI.aspx">Send Medicine</a></li>
          </ul>
        </div><!--close menu-->
</asp:Content>