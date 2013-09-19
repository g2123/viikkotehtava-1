<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2123_index.aspx.cs" Inherits="g2123_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1> Viikkotehtava 1 </h1>

    </div>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/g2123_LocalDBDemo.aspx">Leffat</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2123_Page.aspx">Etusivu</asp:HyperLink>
    </div>
    </form>
</body>
</html>
