<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CategoireCRUD.aspx.cs" Inherits="WebSite_Project.Admin.CategoireCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Category Id</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSearch" runat="server" Text="Search by Id" Width="116px" OnClick="btnSearch_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Category Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtCategoryName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategoryName" ErrorMessage="Category name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnSave" runat="server" Text="Save" Width="76px" />
&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" />
                    </td>
                    <td>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="584px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="cId" HeaderText="cId" InsertVisible="False" ReadOnly="True" SortExpression="cId" />
                                <asp:BoundField DataField="cName" HeaderText="cName" SortExpression="cName" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" DeleteCommand="DELETE FROM [Category] WHERE [CategoryId] = @CategoryId" InsertCommand="INSERT INTO [Category] ([CategoryName]) VALUES (@CategoryName)" SelectCommand="SELECT * FROM [Category]" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [CategoryId] = @CategoryId">
                            <DeleteParameters>
                                <asp:Parameter Name="CategoryId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="CategoryName" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="CategoryName" Type="String" />
                                <asp:Parameter Name="CategoryId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
