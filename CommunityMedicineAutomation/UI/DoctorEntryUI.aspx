<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="DoctorEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.DoctorEntryUI" %>
<asp:Content ID="Content5" ContentPlaceHolderID="Title" runat="server">
    Doctor Entry
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
            <li class="current"><a href="DoctorEntryUI.aspx">Doctor Entry</a></li>
            <li><a href="TreatmentGivenUI.aspx">Treatment</a></li>
            <li><a href="MedicineStockReportUI.aspx">Medicine Stock Report</a></li>
            <li><a href="ShowAllHistoryUI.aspx">Treatment History</a></li>
              <li><a href="CenterLoginUI.aspx">Log Out</a></li>
          </ul>
        </div><!--close menu-->
        <br /><br />
        <div class="controlItem">
         <h1>Doctor Entry</h1> <hr/>
            </div>
        <div class="controlBody">
          <form id="form2" runat="server">
    <div>
        <asp:Label ID="Label4" runat="server" Text="Name" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="doctorNameTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="239px"></asp:TextBox><br /><br />
         <asp:Label ID="Label5" runat="server" Text="Degree" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="degreeTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="228px"></asp:TextBox><br /><br />
        <asp:Label ID="Label6" runat="server" Text="Specialization" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="specializationTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="227px"></asp:TextBox><br /><br />
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" /><br /><br />
        <asp:Label ID="mesLabel" runat="server" Font-Size="20" Font-Bold="true" ForeColor="Green"></asp:Label>
        <asp:Label ID="errorMegLabel" runat="server" Text="" Font-Size="20" Font-Bold="true" ForeColor="Red"></asp:Label>
    </div>
    </form>
        </div>

</asp:Content>











