﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_XMLData.aspx.cs" Inherits="XMLData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <asp:XmlDataSource ID="xmldatasource" runat="server" DataFile="~/App_Data/Records2.xml" />
        <asp:GridView ID="dataGrid" runat="server" DataSourceID="xmldatasource" />
        <br />
        <asp:XmlDataSource ID="xmldatasource1" runat="server" DataFile="~/App_Data/Records.xml" TransformFile="~/App_Data/Records.xsl" />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="xmldatasource1" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
                <asp:BoundField DataField="artisti" HeaderText="artisti" SortExpression="artisti" />
                <asp:BoundField DataField="maa" HeaderText="maa" SortExpression="maa" />
                <asp:BoundField DataField="vuosi" HeaderText="vuosi" SortExpression="vuosi" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>

