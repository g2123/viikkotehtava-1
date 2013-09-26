<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_records.aspx.cs" Inherits="records" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>RocoPecordsin alennuslaari</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Levyt</h1>
    <asp:Button ID="btnRecords" runat="server" Text="Näytä levyt" OnClick="btnRecords_Click" />
    <asp:GridView ID="gridView" runat="server" >

    </asp:GridView>
</asp:Content>

