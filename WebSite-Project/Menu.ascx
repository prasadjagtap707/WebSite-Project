﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu.ascx.cs" Inherits="WebSite_Project.Menu" %>
<div>
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
&nbsp;|
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login/Register.aspx">Register</asp:HyperLink>
&nbsp;|
<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Customer/ListByCategory.aspx">List By Category</asp:HyperLink>
&nbsp;|
<asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Customer/ViewCart.aspx">View Cart</asp:HyperLink>
&nbsp;&nbsp;|
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ReadQueryString.aspx">Read QueryString</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome&nbsp;&nbsp;
    <asp:LoginName ID="LoginName1" runat="server" />
    &nbsp;&nbsp;&nbsp;
    <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="RedirectToLoginPage" LogoutPageUrl="~/Login.aspx" />
</div>