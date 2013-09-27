<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_LocalDBDemo.aspx.cs" Inherits="g2123_LocalDBDemo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div>
        <h1> Leffoja (oliokokoelma) </h1>
        <asp:Button ID="btnGetMovies" runat="server" Text="Hae elokuvat (oliokokoelma)" OnClick="btnGetMovies_Click" />
        <asp:DataList ID="myDataList" runat="server">
            <ItemTemplate> 
               Elokuvan <%#Eval("Title") %> ohjannut <%#Eval("Director") %>
            </ItemTemplate>
        </asp:DataList>
    </div>


</asp:Content>