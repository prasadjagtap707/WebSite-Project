﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Calculation.ascx.cs" Inherits="WebSite_Project.Customer.Calculation" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 240px;
    }
</style>
<div class="auto-style2">

    <table class="auto-style1">
        <tr>
            <td>Enter a Number</td>
            <td>
                <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Enter a Number</td>
            <td>
                <asp:TextBox ID="txtsecond" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Result</td>
            <td>
                <asp:TextBox ID="txtresult" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Addition" />
            </td>
        </tr>
    </table>

</div>