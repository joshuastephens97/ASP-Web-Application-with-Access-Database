<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="WebSparkly.Clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p style="font-size: x-large">
        Clients<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="ClientsDS">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="ClientsName" HeaderText="ClientsName" SortExpression="ClientsName" />
                <asp:BoundField DataField="ClientsBusiness" HeaderText="ClientsBusiness" SortExpression="ClientsBusiness" />
                <asp:BoundField DataField="ClientsAddress" HeaderText="ClientsAddress" SortExpression="ClientsAddress" />
                <asp:BoundField DataField="ClientsContact" HeaderText="ClientsContact" SortExpression="ClientsContact" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="ClientsDS" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SparklyWebConnectionString %>" DeleteCommand="DELETE FROM [tblClients] WHERE [ID] = ? AND (([ClientsName] = ?) OR ([ClientsName] IS NULL AND ? IS NULL)) AND (([ClientsBusiness] = ?) OR ([ClientsBusiness] IS NULL AND ? IS NULL)) AND (([ClientsAddress] = ?) OR ([ClientsAddress] IS NULL AND ? IS NULL)) AND (([ClientsContact] = ?) OR ([ClientsContact] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [tblClients] ([ID], [ClientsName], [ClientsBusiness], [ClientsAddress], [ClientsContact]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SparklyWebConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblClients]" UpdateCommand="UPDATE [tblClients] SET [ClientsName] = ?, [ClientsBusiness] = ?, [ClientsAddress] = ?, [ClientsContact] = ? WHERE [ID] = ? AND (([ClientsName] = ?) OR ([ClientsName] IS NULL AND ? IS NULL)) AND (([ClientsBusiness] = ?) OR ([ClientsBusiness] IS NULL AND ? IS NULL)) AND (([ClientsAddress] = ?) OR ([ClientsAddress] IS NULL AND ? IS NULL)) AND (([ClientsContact] = ?) OR ([ClientsContact] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ClientsName" Type="String" />
                <asp:Parameter Name="original_ClientsName" Type="String" />
                <asp:Parameter Name="original_ClientsBusiness" Type="String" />
                <asp:Parameter Name="original_ClientsBusiness" Type="String" />
                <asp:Parameter Name="original_ClientsAddress" Type="String" />
                <asp:Parameter Name="original_ClientsAddress" Type="String" />
                <asp:Parameter Name="original_ClientsContact" Type="String" />
                <asp:Parameter Name="original_ClientsContact" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="ClientsName" Type="String" />
                <asp:Parameter Name="ClientsBusiness" Type="String" />
                <asp:Parameter Name="ClientsAddress" Type="String" />
                <asp:Parameter Name="ClientsContact" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ClientsName" Type="String" />
                <asp:Parameter Name="ClientsBusiness" Type="String" />
                <asp:Parameter Name="ClientsAddress" Type="String" />
                <asp:Parameter Name="ClientsContact" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_ClientsName" Type="String" />
                <asp:Parameter Name="original_ClientsName" Type="String" />
                <asp:Parameter Name="original_ClientsBusiness" Type="String" />
                <asp:Parameter Name="original_ClientsBusiness" Type="String" />
                <asp:Parameter Name="original_ClientsAddress" Type="String" />
                <asp:Parameter Name="original_ClientsAddress" Type="String" />
                <asp:Parameter Name="original_ClientsContact" Type="String" />
                <asp:Parameter Name="original_ClientsContact" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="btnNewEntry" runat="server" Text="New Entry" PostBackUrl="~/ClientsNew.aspx"  /> 
        <asp:Button ID="btnhelp" runat="server" Text="Help!" OnClick="btnhelp_Click" />

    </p>

</asp:Content>
