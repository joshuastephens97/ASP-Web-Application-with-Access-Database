<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebSparkly.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        <asp:Label ID="lblstatus" runat="server"></asp:Label>
    </h2>
    <h3>Your application description page.</h3>
<table class="nav-justified">
    <tr>
        <td style="width: 128px">
            <asp:Button ID="btnOperators" runat="server" Text="Operators" OnClick="btnOperators_Click" />
        </td>
        <td>
            <asp:Button ID="btnClients" runat="server" Text="Clients" OnClick="btnClients_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 128px">
            <asp:Button ID="btnSales" runat="server" Text="Sales" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 128px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 128px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    <p>Use this area to provide additional information.</p>
</asp:Content>
