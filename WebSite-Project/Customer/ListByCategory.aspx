<%@ Page Language="C#" MasterPageFile="~/MasterDemoPage.Master" AutoEventWireup="true" CodeBehind="ListByCategory.aspx.cs" Inherits="WebSite_Project.WebForm1" %>


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

            <asp:Image ID="Image1" runat="server" Height="59px" ImageUrl="~/Images/logo.png" Width="137px" />
            <br />
            <br />
            <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp; |&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server">View Cart</asp:HyperLink>

        &nbsp;|
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/ListByCategory.aspx">List By Cateory</asp:HyperLink>
            <br />
            <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
            </asp:ScriptManagerProxy>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            </asp:UpdatePanel>
            <br />
            <table class="auto-style1">
                <tr>
                    <td rowspan="4">
                        <asp:HyperLink ID="HyperLink3" runat="server">Furniture</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server">Electronics</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink5" runat="server">Camera</asp:HyperLink>
                        <br />
                        <asp:HyperLink ID="HyperLink6" runat="server">Home Needs</asp:HyperLink>
                    </td>
                    <td aria-orientation="horizontal" class="auto-style2">
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategories_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                </asp:CheckBoxList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnOrder" runat="server" OnClick="btnOrder_Click" Text="Order" />
                    </td>
                    <td class="auto-style3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblProductCount" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
 </asp:Content>
