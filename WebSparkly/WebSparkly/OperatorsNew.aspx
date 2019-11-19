<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OperatorsNew.aspx.cs" Inherits="WebSparkly.OperatorsNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Create a new employee &nbsp;<table class="nav-justified">
            <tr>
                <td style="width: 125px">
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 125px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Data" />
                </td>
                <td>
        

                </td>
            </tr>
            <tr>
                <td style="width: 125px"></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="Label5" runat="server"></asp:Label>
    </p>
</asp:Content>
