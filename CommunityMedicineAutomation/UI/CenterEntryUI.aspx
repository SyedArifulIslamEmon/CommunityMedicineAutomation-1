<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="CenterEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.CenterEntryUI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Center Entry
</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
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
            <li class="current"><a href="CenterEntryUI.aspx">Create New Center</a></li>
            <li><a href="SendMedicineUI.aspx">Send Medicine</a></li>
          </ul>
        </div><!--close menu-->
        <br /><br />
        <div class="controlItem">
         <h1>Center Entry</h1> <hr/>
            </div>
        <div class="controlBody">
         <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Center Name" Font-Size="20px" Font-Bold="True"></asp:Label><br /> 
        <asp:TextBox ID="centerNameTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="33px" Width="597px"></asp:TextBox><br/><br/>
        <asp:Label ID="Label2" runat="server" Text="District" Font-Size="20px" Font-Bold="true"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="districtCenterDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="districtCenterDropDownList_SelectedIndexChanged" Font-Size="15px" Font-Bold="true" Height="25px" Width="155px"></asp:DropDownList><br/><br/>
        <asp:Label ID="Label3" runat="server" Text="Thana" Font-Size="20px" Font-Bold="true"></asp:Label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="thanaCenterDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="155px"></asp:DropDownList><br/><br/>
        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" OnClientClick="target='_blank';" /><br/><br/>
        <asp:Label ID="megLabel" runat="server" Text=""></asp:Label>
        <br/><br/>
    </form>
        </div>

</asp:Content>






 



    