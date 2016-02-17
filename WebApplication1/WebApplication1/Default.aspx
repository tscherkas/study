<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Hello
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        
        <p>
            &nbsp;</p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" EnableSortingAndPagingCallbacks="False" AutoGenerateColumns="False" DataKeyNames="Emp_id" DataSourceID="EmployeesEntityDataSource" PageSize="2">
            <Columns>
                <asp:TemplateField HeaderText="First_name" SortExpression="First_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("First_name") %>'></asp:TextBox>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Last_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("First_name") %>'></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Last_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            </Columns>
        </asp:GridView>
        
        <asp:EntityDataSource ID="EmployeesEntityDataSource" runat="server" OnContextCreating="JobsEmployeesEntities_Creating" ContextTypeName="WebApplication1.JobsEmployeesEntities" EnableFlattening="False" EntitySetName="Employees"  EnableUpdate="True">
        </asp:EntityDataSource>
        
    </form>
</body>
</html>
