<%@ Page Title="Seren kotisivu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_indexMP.aspx.cs" Inherits="g2123_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div>
            <h1> Viikkotehtava 1 </h1>
        </div>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/g2123_LocalDBDemo.aspx">Leffat</asp:HyperLink> <br />

    </div>
    <div>
        <h1>tuntitehtävät vk 38</h1>
    </div>
    <div>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2123_Page.aspx">Kalenteri</asp:HyperLink>
    </div>
</asp:Content>

