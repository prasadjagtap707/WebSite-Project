<%@ Page Language="C#" MasterPageFile="~/MasterDemoPage.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="WebSite_Project.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       
     <style type="text/css">
        .auto-style1 {
            width: 653px;
        }
        .auto-style2 {
            width: 215px;
        }
        .auto-style3 {
            width: 267px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div>
            <table class="auto-style1">
                <tr>
                    <td rowspan="4">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ReadQueryString.aspx?category=furniture">Furniture</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ReadQueryString.aspx?category=electronics">Electronics</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Customer/ListByCategory.aspx">Camera</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Customer/ListByCategory.aspx">Home Needs</asp:HyperLink>
                    </td>
                    <td aria-orientation="horizontal" class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" Text="Your Cart Items"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnDeleteProducts" runat="server" Text="Delete Products " OnClick="btnDeleteProducts_Click" />
                    </td>
                </tr>
            </table>

        </div>
</asp:Content>

