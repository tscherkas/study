<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="WebApplication2.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:EntityDataSource ID="EmployeesEntityDataSource" runat="server" OnContextCreating="EmployeesEntityDataSource_ContextCreating" ContextTypeName="WebApplication2.Entities" EnableFlattening="False" EnableInsert="true" EntitySetName="Employees" >
    </asp:EntityDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="EmployeesEntityDataSource" AutoGenerateRows="False"
        DefaultMode="Insert" OnItemInserting="DetailsView1_ItemInserting">
        <Fields>
            <asp:BoundField DataField="First_name" HeaderText="First Name" 
                SortExpression="First_name" />
            <asp:BoundField DataField="Last_name" HeaderText="Last Name" 
                SortExpression="Last_name" />
            <asp:TemplateField HeaderText="Job">
                <InsertItemTemplate>
                    <asp:EntityDataSource ID="JobsEntityDataSource" runat="server" EnableFlattening="False" ContextTypeName="WebApplication2.Entities"
                        EntitySetName="Jobs" EntityTypeFilter="Jobs" OnContextCreating="JobsEntityDataSource_ContextCreating">
                    </asp:EntityDataSource>
                    <asp:DropDownList ID="JobsDropDownList" runat="server" DataSourceID="JobsEntityDataSource"
                        DataTextField="Job_nm" DataValueField="Job_id"
                        oninit="JobsDropDownList_Init">
                    </asp:DropDownList>
                </InsertItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Salary" HeaderText="Salary" 
                SortExpression="Salary" />
             <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <a runat="server" href="~/">To all employees</a>
</asp:Content>
