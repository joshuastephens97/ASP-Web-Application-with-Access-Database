<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Operators.aspx.cs" Inherits="WebSparkly.Operators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large">
        Operators<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="EmployeeID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
               
                <asp:CheckBoxField DataField="Sales" HeaderText="Sales" SortExpression="Sales" />
                <asp:CheckBoxField DataField="Admin" HeaderText="Admin" SortExpression="Admin" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="SELECT [EmployeeID], [Username], [Password], [Sales], [Admin] FROM [tblEmployees]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblEmployees] WHERE [EmployeeID] = ? AND (([Username] = ?) OR ([Username] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL)) AND [Sales] = ? AND [Admin] = ?" InsertCommand="INSERT INTO [tblEmployees] ([EmployeeID], [Username], [Password], [Sales], [Admin]) VALUES (?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblEmployees] SET [Username] = ?, [Password] = ?, [Sales] = ?, [Admin] = ? WHERE [EmployeeID] = ? AND (([Username] = ?) OR ([Username] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL)) AND [Sales] = ? AND [Admin] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Sales" Type="Boolean" />
                <asp:Parameter Name="original_Admin" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Sales" Type="Boolean" />
                <asp:Parameter Name="Admin" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Sales" Type="Boolean" />
                <asp:Parameter Name="Admin" Type="Boolean" />
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Sales" Type="Boolean" />
                <asp:Parameter Name="original_Admin" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="ClientsDS" runat="server" ConnectionString="<%$ ConnectionStrings:SparklyWebConnectionString %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:SparklyWebConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblEmployees]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblEmployees] WHERE [EmployeeID] = ? AND (([Username] = ?) OR ([Username] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL)) AND [EmployeeSales] = ? AND [OperatorAdmin] = ?" InsertCommand="INSERT INTO [tblEmployees] ([EmployeeID], [Username], [Password], [EmployeeSales], [OperatorAdmin]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE [tblEmployees] SET [Username] = ?, [Password] = ?, [EmployeeSales] = ?, [OperatorAdmin] = ? WHERE [EmployeeID] = ? AND (([Username] = ?) OR ([Username] IS NULL AND ? IS NULL)) AND (([Password] = ?) OR ([Password] IS NULL AND ? IS NULL)) AND [EmployeeSales] = ? AND [OperatorAdmin] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_EmployeeSales" Type="Boolean" />
                <asp:Parameter Name="original_OperatorAdmin" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="EmployeeSales" Type="Boolean" />
                <asp:Parameter Name="OperatorAdmin" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="EmployeeSales" Type="Boolean" />
                <asp:Parameter Name="OperatorAdmin" Type="Boolean" />
                <asp:Parameter Name="original_EmployeeID" Type="Int32" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Username" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_EmployeeSales" Type="Boolean" />
                <asp:Parameter Name="original_OperatorAdmin" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="btnNewEntry" runat="server" Text="New Entry" PostBackUrl="~/OperatorsNew.aspx"  />
        <asp:Button ID="btnhelp" runat="server" Text="Help!" OnClick="btnhelp_Click" />

    </p>
</asp:Content>
