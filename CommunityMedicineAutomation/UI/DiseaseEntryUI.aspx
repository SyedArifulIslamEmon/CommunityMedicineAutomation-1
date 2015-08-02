<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="DiseaseEntryUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.DiseaseEntryUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Disease Entry
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
            <li class="current"><a href="DiseaseEntryUI.aspx">Disease Entry</a></li>
            <li><a href="MedicineEntryUI.aspx">Medicine Entry</a></li>
            <li><a href="CenterEntryUI.aspx">Create New Center</a></li>
            <li><a href="SendMedicineUI.aspx">Send Medicine</a></li>
          </ul>
        </div><!--close menu-->
        <br /><br />
        <div class="controlItem">
         <h1>Disease Entry</h1> <hr/>
            </div>
        <div class="controlBody">
        <form id="form1" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Name" Font-Size="20px" Font-Bold="true"></asp:Label><br />
                        <asp:TextBox ID="nameDiseaseEntryTextBox" runat="server" Height="29px" Width="386px" Font-Size="15px" Font-Bold="true"></asp:TextBox><br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Description" Font-Size="20px" Font-Bold="true"></asp:Label><br />
                        <asp:TextBox ID="descriptionDiseaseEntryTextBox" runat="server" Height="60px" Width="387px" Font-Size="15px" Font-Bold="true" TextMode="MultiLine"></asp:TextBox><br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Treatment Procedure" Font-Size="20px" Font-Bold="true"></asp:Label><br />
                        <asp:TextBox ID="treatmentProcedureDiseaseEntryTextBox" runat="server" Height="60px" Width="387px" Font-Size="15px" Font-Bold="true" TextMode="MultiLine"></asp:TextBox><br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="errorMegLabel" runat="server" Font-Size="20" Font-Bold="true" ForeColor="Red"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="megLabel" runat="server" Font-Size="20" Font-Bold="true" ForeColor="Green"></asp:Label>
                        <br />
                        <br />
                        <asp:GridView ID="diseaseEntryGridView" runat="server" AutoGenerateColumns="False" AllowPaging="True" OnPageIndexChanging="OnPaging" PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="SerialNo" HeaderText="Serial No." />
                                <asp:BoundField DataField="NameOfDisease" HeaderText="Name Of Disease" />
                                <asp:BoundField DataField="Description" HeaderText="Description" />
                                <asp:BoundField DataField="TreatmentProcedure" HeaderText="Treatment Procedure" />
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
                    </form>
        </div>

</asp:Content>



