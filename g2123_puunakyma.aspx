<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_puunakyma.aspx.cs" Inherits="g2123_puunakyma" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <asp:XmlDataSource ID="DataSource" runat="server" XPath="catalog" DataFile="~/App_Data/Records.xml" />
        <asp:TreeView ID="PageTreeView" runat="server" DataSourceID="DataSource">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="title" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="artist" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="country" TextField="#InnerText" />
                <asp:TreeNodeBinding DataMember="year" TextField="#InnerText" />
            </DataBindings>
        </asp:TreeView>
    </div>

</asp:Content>


