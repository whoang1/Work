<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EntityPage.aspx.cs" Inherits="EntityPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="EntityList" runat="server" AutoGenerateColumns="True" DataSourceID="ODSEntityList">
    </asp:GridView>

    <asp:GridView ID="QueryNav" runat="server" AutoGenerateColumns="False" DataSourceID="ODSQueryNav">
        <Columns>
            <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="HomePhone" HeaderText="HomePhone" SortExpression="HomePhone" />
            <asp:CheckBoxField DataField="Active" HeaderText="Active" SortExpression="Active" />
        </Columns>
    </asp:GridView>



    <asp:ObjectDataSource ID="ODSEntityList" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Entity_List" TypeName="RevertSystem.BLL.AdminController"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ODSQueryNav" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="QueryNav_List" TypeName="RevertSystem.BLL.AdminController"></asp:ObjectDataSource>
</asp:Content>

