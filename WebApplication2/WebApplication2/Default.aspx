<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Employees</h2>
    <asp:DropDownList ID="DropDownList1" runat="server"  DataSourceID="EntityDataSource2" DataTextField="Job_nm" DataValueField="Job_id" AutoPostBack="True" Height="25px" Width="112px">
    </asp:DropDownList>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Entities" DefaultContainerName="Entities" EnableFlattening="False" EntitySetName="Jobs">
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="EmployeesEntityDataSource" runat="server" OnContextCreating="EmployeesEntityDataSource_ContextCreating" ContextTypeName="WebApplication2.Entities" EnableFlattening="False" EnableUpdate="True" EntitySetName="Employees" AutoGenerateWhereClause="True" ConnectionString="" DefaultContainerName="" EntityTypeFilter="" Select="" Where="">
        <WhereParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Job_id" PropertyName="SelectedValue" Type="Int32" />
        </WhereParameters>
        </asp:EntityDataSource>

    <asp:EntityDataSource ID="EntityDataSource1" runat="server" OnContextCreating="EmployeesEntityDataSource_ContextCreating" ContextTypeName="WebApplication2.Entities" EnableFlattening="False" EntitySetName="Jobs">
    </asp:EntityDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Emp_id" DataSourceID="EmployeesEntityDataSource">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:TemplateField HeaderText="Full name" SortExpression="First_name">
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
    <a runat="server" href="~/AddEmployee">Add new...</a>
</asp:Content>
