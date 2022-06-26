<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReadQueryString.aspx.cs" Inherits="WebSite_Project.ReadQueryString" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h3>Your Products</h3>
            <asp:BulletedList ID="BulletedList1" runat="server" OnClick="BulletedList1_Click"></asp:BulletedList>
        

        </div>
    </form>
</body>
</html>
