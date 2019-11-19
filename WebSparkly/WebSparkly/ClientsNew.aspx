<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClientsNew.aspx.cs" Inherits="WebSparkly.ClientsNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Create a new client&nbsp; &nbsp;<table class="nav-justified">
            <tr>
                <td style="width: 125px">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    <asp:Label ID="Label2" runat="server" Text="Buisness"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtBuisness" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    <asp:Label ID="Label4" runat="server" Text="Contact Info"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtContact" runat="server" ></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Data" />
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </p>
</asp:Content>
