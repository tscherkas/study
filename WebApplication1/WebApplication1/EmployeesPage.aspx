<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeesPage.aspx.cs" Inherits="WebApplication1.EmployeesPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" OnContextCreating="JobsEmployeesEntities_Creating" ContextTypeName="WebApplication1.JobsEmployeesEntities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Employees"></asp:EntityDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Emp_id" DataSourceID="EntityDataSource1" Width="332px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="First_name" SortExpression="First_name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("First_name") %>'></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Last_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("First_name") %>'></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Last_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
        </Columns>
    </asp:GridView>

</asp:Content>
