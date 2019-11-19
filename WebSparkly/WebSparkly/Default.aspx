<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSparkly._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
    <tr>
        <td style="width: 209px">
            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 209px">
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 209px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
        </td>
        <td>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>

    </asp:Content>


