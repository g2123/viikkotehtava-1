﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2123_LocalDBDemo.aspx.cs" Inherits="g2123_LocalDBDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paikalliset videot</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1> Leffoja (oliokokoelma) </h1>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae elokuvat (oliokokoelma)" OnClick="btnGetMovies_Click" />
        <asp:DataList ID="myDataList" runat="server">
            <ItemTemplate> 
               Elokuvan <%#Eval("Title") %> ohjannut <%#Eval("Director") %>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </form>
</body>
</html>
