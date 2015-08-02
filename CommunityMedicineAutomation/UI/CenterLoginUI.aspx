<%@ Page Title="" Language="C#" MasterPageFile="~/UI/CommunityMedicine.Master" AutoEventWireup="true" CodeBehind="CenterLoginUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.CenterLoginUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    LogIn Your Center
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMainItem" runat="server">
    <div class="container">
            <div class="row">
                 <div class="col-lg-12 text-center">
                    <h2>Log In</h2>
                    <hr class="star-primary">
                </div>
            </div>
            </div>
        <br /><br />
        <div class="controlItem">
         <h1>Please Log In Your Center</h1> <hr/>
            </div>
        <div class="controlBody">
       <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Center Code" Font-Size="20px" Font-Bold="true"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="centerCodeTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="36px" Width="288px"></asp:TextBox><br/><br/>
          <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="20px" Font-Bold="true"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="passwordTextBox" runat="server" Font-Size="15px" Font-Bold="true" Height="33px" TextMode="Password" Width="289px"></asp:TextBox><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="loginButton" runat="server" class="fa fa-download" Text="Log In" OnClick="loginButton_Click" Height="37px" Width="129px" Font-Size="20px" Font-Bold="true" BackColor="#0099ff" ForeColor="White"  /><br/><br/>
        <asp:Label ID="megLabel" runat="server" Text="" Font-Size="18" Font-Bold="true" ForeColor="Red"></asp:Label>
    </div>
    </form>
  
</asp:Content>

