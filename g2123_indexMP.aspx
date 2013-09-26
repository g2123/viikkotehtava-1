<%@ Page Title="Seren kotisivu" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_indexMP.aspx.cs" Inherits="g2123_indexMP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Tuntitehtävät vk 38</h1>
    </div>
    <div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/g2123_LocalDBDemo.aspx">Leffat</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2123_Page.aspx">Kalenteri</asp:HyperLink> <br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/g2123_valuuttamuunnin.aspx">Valuuttamuunnin</asp:HyperLink>
    </div>
    <div>
        <h1>Kotitehtävä 1 </h1>
    </div>
    <div>
        <asp:TextBox ID="txtbox1" runat="server" Text="kirjoita nimesi"></asp:TextBox>
        <asp:Button ID="btn1" runat="server" Text="Välitä parametreinä" OnClick="btn1_Click" />
        <asp:Button ID="btn2" runat="server" Text="Tallenna sessio" OnClick="btn2_Click" />
        <asp:Button ID="Btn3" runat="server" Text="Tallenna Cookie" OnClick="Btn3_Click" />
    </div>
    <div>
        <h1>Kotitehtävä 2</h1>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/g2123_elakelaskuri.aspx">Eläkelaskuri</asp:HyperLink>
        <h1>Tuntitehtävät vk 39</h1>
        <asp:HyperLink ID="hyperLink5" runat="server" NavigateUrl="~/g2123_SimpleSqlDataSource.aspx">DataBindit</asp:HyperLink> <br />
        <asp:HyperLink ID="hyperLink6" runat="server" NavigateUrl="~/g2123_SimpleSqlDataSource2.aspx">DataBindit for single data</asp:HyperLink> <br />
        <asp:HyperLink ID="hyperLink7" runat="server" NavigateUrl="~/g2123_XMLData.aspx">XML dataGrid</asp:HyperLink>


    </div>
</asp:Content>

