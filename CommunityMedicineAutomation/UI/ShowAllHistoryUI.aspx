<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="ShowAllHistoryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.ShowAllHistoryUI" %>
<asp:Content ID="Content5" ContentPlaceHolderID="Title" runat="server">
    Show All History
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
            <li><a href="MedicineStockReportUI.aspx">Medicine Stock Report</a></li>
            <li class="current"><a href="ShowAllHistoryUI.aspx">Treatment History</a></li>
              <li><a href="CenterLoginUI.aspx">Log Out</a></li>
          </ul>
        </div><!--close menu-->
        <br /><br />
        <div class="controlItem">
         <h1>Show All History</h1> <hr/>
            </div>
        <div class="controlBody">
           <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="National Id"></asp:Label>
        <asp:TextBox ID="nationalIdTextBox" runat="server"></asp:TextBox> &nbsp;
        <asp:Button ID="showButton" runat="server" Text="Show" OnClick="showButton_Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
        <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox><br />
        <asp:Label ID="megLabel" runat="server" Text=""></asp:Label>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="pdfButton" runat="server" OnClick="pdfButton_Click" Text="Create PDF" Visible="False" Width="90px" OnClientClick="target ='_blank';" />
    </form>
        </div>

</asp:Content>
