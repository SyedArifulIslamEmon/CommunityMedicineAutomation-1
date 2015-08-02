<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="TreatmentGivenUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.TreatmentGivenUI" %>
<asp:Content ID="Content5" ContentPlaceHolderID="Title" runat="server">
    Treatment Entry
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
            <li class="current"><a href="TreatmentGivenUI.aspx">Treatment</a></li>
            <li><a href="MedicineStockReportUI.aspx">Medicine Stock Report</a></li>
            <li><a href="ShowAllHistoryUI.aspx">Treatment History</a></li>
              <li><a href="CenterLoginUI.aspx">Log Out</a></li>
          </ul>
        </div><!--close menu-->
        <br /><br />
        <div class="controlItem">
         <h1>Treatment Entry</h1> <hr/>
            </div>
        <div class="controlBody">
          <form id="form1" runat="server">
    <div style="width: 716px">
        <asp:Label ID="Label1" runat="server" Text="Voter Id" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="voterIdTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="257px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="showButton" runat="server" Text="Show Details" OnClick="showButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" /><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Name" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="nameTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="255px"></asp:TextBox><br /><br />
        <asp:Label ID="Label3" runat="server" Text="Address" Font-Size="20px" Font-Bold="true"></asp:Label><br />
        <asp:TextBox ID="addressTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="63px" Width="328px" TextMode="MultiLine"></asp:TextBox><br /><br />
        <asp:Label ID="Label4" runat="server" Text="Age" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ageTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="25px" Width="118px"></asp:TextBox><br /><br />
        <asp:Label ID="Label5" runat="server" Text="Service Given" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="serviceGivenTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="28px" Width="121px"></asp:TextBox><b>Times</b><br /><br />
        <asp:Label ID="Label6" runat="server" Text="Observation" Font-Size="20px" Font-Bold="true"></asp:Label><br />
        <asp:TextBox ID="observationTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="67px" TextMode="MultiLine" Width="340px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Date" Font-Size="20px" Font-Bold="true"></asp:Label>
         <input type="date" name="bday" id="bday" style="font-size:15px;"/>
        <asp:Label ID="Label8" runat="server" Text="Doctor" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="doctorDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Height="30px" Width="200px"></asp:DropDownList><br /><br />
        <asp:Label ID="Label9" runat="server" Text="Disease" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="diseaseDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Height="37px" Width="151px"></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Medicine" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="medicineDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Height="30px" Width="200px"></asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Dose" Font-Size="20px" Font-Bold="true"></asp:Label>
        &nbsp;<asp:DropDownList ID="doseDropDownList" runat="server" Font-Size="15px" Font-Bold="true" Height="24px" Width="74px">
            <asp:ListItem Value="1">0+0+1</asp:ListItem>
            <asp:ListItem Value="2">0+1+1</asp:ListItem>
            <asp:ListItem Value="3">1+1+1</asp:ListItem>
            <asp:ListItem Value="4">1+0+0</asp:ListItem>
            <asp:ListItem Value="5">1+1+0</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<br />
        <br />
        &nbsp;
        <asp:RadioButton ID="beforMealRadioButton" runat="server" Text="Before Meal" GroupName="redio" Font-Size="15px" Font-Bold="true" />
        <asp:RadioButton ID="afterMealRadioButton" runat="server" Text="After Meal" GroupName="redio" Font-Size="15px" Font-Bold="true" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Quantity Given" Font-Size="20px" Font-Bold="true"></asp:Label>
        <asp:TextBox ID="quantityTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="26px" Width="126px"></asp:TextBox><br />
        <asp:Label ID="Label13" runat="server" Text="Note" Font-Size="20px" Font-Bold="true"></asp:Label><br />
        <asp:TextBox ID="noteTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="50px" TextMode="MultiLine" Width="220px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addButton" runat="server" Text="Add" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" OnClick="addButton_Click" />
        <br /><br />
        
        
    </div>
        <asp:GridView ID="treatmentGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="Both">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="NameOfDisease" HeaderText="Disease" />
                <asp:BoundField DataField="NameOfMedicine" HeaderText="Medicine" />
                <asp:BoundField DataField="Dose" HeaderText="Dose" />
                <asp:BoundField DataField="TakenTime" HeaderText="Before/After Meal" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="Note" HeaderText="Note" />
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
        <asp:Label ID="megLabel" runat="server" Font-Size="20" Font-Bold="true" ForeColor="Green"></asp:Label>
        <br /><br />
        <asp:Button ID="saveButton" Text="Save" runat="server" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="YellowGreen" ForeColor="White" OnClick="saveButton_Click" Visible="False" />
    </form>
        </div>

</asp:Content>
