<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_wanhatAutot.aspx.cs" Inherits="g2123_wanhatAutot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>Wanhat autot</h1>
    <div>
        Hakusana: <asp:TextBox ID="haku" runat="server" /> 
        Merkki: <asp:DropDownList ID="DropDownList1" runat="server" Width="120" ></asp:DropDownList>
        <asp:XmlDataSource ID="myDataSource" DataFile="~/App_Data/WanhatAutot.xml" runat="server" XPath="Wanhatautot/Auto"/>
        <asp:Button ID="btnHae" runat="server" Text="Hae" /> 
        <br />

    </div>
</asp:Content>

