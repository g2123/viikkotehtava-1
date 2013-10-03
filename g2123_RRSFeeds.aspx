<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_RRSFeeds.aspx.cs" Inherits="g2123_RRSFeeds" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <asp:XmlDataSource ID="myDataSource" runat="server" XPath="rrs/channel/item" />

        <asp:Button ID="btnGetLiiga" runat="server" Text="Get Liiga" OnClick="btnGetLiiga_Click" />
        <asp:Button ID="btnGetMS" runat="server" Text="Microsoft" OnClick="btnGetMS_Click" />
        <asp:Button ID="btnGetIS" runat="server" Text="Ilta-Sanomat" OnClick="btnGetIS_Click" />

        <h1><asp:Label ID="lblHeader" runat="server" Text="..." /> </h1>
        <asp:Label ID="lblBody" runat="server" Text="..." />
        <asp:Table ID="myDataTable" runat="server" />
        <!-- rrs feedien haku ilman koodausta -->
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="<%$ AppSettings:rssFeeditSF %>" TransformFile="~/App_Data/rssfeeds.xsl" XPath="rrs/channel/item" />
        <asp:GridView ID="myGridView" runat="server" DataSourceID="XmlDataSource2" AutoGenerateColumns="true" />
    </div>

</asp:Content>

