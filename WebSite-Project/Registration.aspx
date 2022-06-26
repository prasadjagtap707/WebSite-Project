﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebSite_Project.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 311px;
        }
        .auto-style2 {
            width: 245px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#0033CC" Text="User Sign Up"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter First Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Last Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Email Id</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email id is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email id is not in proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Contact Number</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="check" ControlToValidate="txtContactNo" ErrorMessage="Text not allowed in phone number" ForeColor="Red">*</asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Address</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Age</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="Age should be between 18 - 60" ForeColor="Red" MaximumValue="60" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Enter Confirm Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password does not match" ForeColor="Red">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style2">
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" style="width: 70px" Text="Register" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </div>
    </form>

    <script type="text/javascript">
        function check(sender,data) {
            if (isNaN(data.Value)) { // isNaN (is not a number)
                data.IsValid = false;
            }
            else {
                data.IsValid = true;
            }
        }
    </script>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
