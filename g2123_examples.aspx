<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_examples.aspx.cs" Inherits="Examples_examples" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>

        <h1> Vk 38 </h1>

        <div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/g2123_LocalDBDemo.aspx">Leffat</asp:HyperLink> <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2123_Page.aspx">Kalenteri</asp:HyperLink> <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/g2123_valuuttamuunnin.aspx">Valuuttamuunnin</asp:HyperLink>
        </div>

        <h1>Vk 39</h1>
        
        <div>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/g2123_records.aspx">Levyt</asp:HyperLink> <br />
            <asp:HyperLink ID="hyperLink5" runat="server" NavigateUrl="~/g2123_SimpleSqlDataSource.aspx">DataBindit</asp:HyperLink> <br />
            <asp:HyperLink ID="hyperLink6" runat="server" NavigateUrl="~/g2123_SimpleSqlDataSource2.aspx">DataBindit for single data</asp:HyperLink> <br />
            <asp:HyperLink ID="hyperLink7" runat="server" NavigateUrl="~/g2123_XMLData.aspx">XML dataGrid</asp:HyperLink>
        </div>
    </div>
</asp:Content>

