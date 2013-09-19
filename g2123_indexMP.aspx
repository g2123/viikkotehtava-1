<%@ Page Title="Seren kotisivu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_indexMP.aspx.cs" Inherits="g2123_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>tuntitehtävät vk 38</h1>
    </div>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/g2123_LocalDBDemo.aspx">Leffat</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2123_Page.aspx">Kalenteri</asp:HyperLink>
    </div>
    <div>
        <h1>VIIKKOTEHTÄVÄT 1 JA 2 </h1>
    </div>
    <div>
        <asp:TextBox ID="textbox1" runat="server" Text="kirjoita nimesi"></asp:TextBox>
        <asp:Button ID="btn1" runat="server" Text="Välitä parametreinä" />
        <asp:Button ID="btn2" runat="server" Text="Tallenna sessio" />
        <asp:Button ID="Btn3" runat="server" Text="Tallenna Cookie" />
    </div>
</asp:Content>

