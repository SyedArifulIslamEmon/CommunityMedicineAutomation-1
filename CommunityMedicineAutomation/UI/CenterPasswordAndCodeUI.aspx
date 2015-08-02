<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CenterPasswordAndCodeUI.aspx.cs" Inherits="CommunityMedicineAutomation.UI.CenterPasswordAndCodeUI" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>New Center</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Center Name : "></asp:Label>
        <asp:Label ID="centerNameLabel" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Center Code : "></asp:Label>
        <asp:Label ID="centerCodeLabel" runat="server" Text=""></asp:Label><br /><br />
        <asp:Label ID="Label4" runat="server" Text="Password : "></asp:Label>
        <asp:Label ID="passwordLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
