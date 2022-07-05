﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductCRUD.aspx.cs" Inherits="WebSite_Project.Admin.ProductCRUD" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 153px;
        }
        .auto-style3 {
            width: 206px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Product Id</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; </td>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search By Id" OnClick="btnSearch_Click"  />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Name</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Price</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Select Category</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="ddlCategories" runat="server" DataSourceID="SqlDataSource2" DataTextField="CategoryName" DataValueField="CategoryId" Height="16px" Width="127px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Button ID="btnSave" runat="server" Text="Save" Width="74px" OnClick="btnSave_Click" />
&nbsp;&nbsp;
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="513px">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="PID" HeaderText="PID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
                                <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="cId" HeaderText="cId" SortExpression="cId" />
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbConnection %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
