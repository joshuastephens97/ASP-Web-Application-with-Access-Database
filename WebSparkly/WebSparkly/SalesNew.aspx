<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SalesNew.aspx.cs" Inherits="WebSparkly.SalesNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <td>Client:</td>
            <td>
                <asp:DropDownList ID="listName" runat="server" Height="16px" Width="259px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Product:</td>
            <td>
                <asp:DropDownList ID="listProducts" runat="server" Height="16px" Width="256px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Amount:</td>
            <td>
                <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>Total:</td>
            <td>
                <asp:TextBox ID="txtTotalPrice" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>Date:</td>
            <td>
                <asp:Calendar ID="saledate" runat="server"></asp:Calendar>
            </td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp;Status:</td>
            <td>
                <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
            </td>
            <td></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save" />
        <asp:Button ID="btnhelp" runat="server" Text="Help!" OnClick="btnhelp_Click" />

    <br />

    </asp:Content>
