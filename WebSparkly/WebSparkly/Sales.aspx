<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="WebSparkly.Sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large">
        Sales<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
    <p style="font-size: x-large">
        &nbsp;</p>
    <p style="font-size: x-large">
        <asp:GridView ID="DGV" runat="server" BorderColor="Black" BorderWidth="1px" CellPadding="1" OnRowCommand="salesGV_RowCommand">
            <Columns>
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnEdit" runat="server" CausesValidation="false" CommandArgument='<%# Eval("ID") %>' CommandName="Edit" Text="Edit"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDelete" runat="server" CausesValidation="false" CommandArgument='<%# Eval("ID") %>' CommandName="DeleteRecord" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p style="font-size: x-large">
        <asp:Button ID="btnAddSale" runat="server" Text="Add Sale" PostBackUrl="~/SalesNew.aspx"  />
    </p>
</asp:Content>
