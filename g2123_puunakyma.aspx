<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_puunakyma.aspx.cs" Inherits="g2123_puunakyma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <asp:XmlDataSource ID="xmldatasource" runat="server" DataFile="~/App_Data/Records2.xml" />
        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="xmldatasource"></asp:TreeView>

        <asp:XmlDataSource ID="xmldatasource1" runat="server" DataFile="~/App_Data/Records.xml" TransformFile="~/App_Data/Records.xsl" XPath="/catalog/record" />
        <asp:TreeView ID="GridView1" runat="server" DataSourceID="xmldatasource1" AutoGenerateColumns="False" >
        </asp:TreeView>
    </div>

</asp:Content>


