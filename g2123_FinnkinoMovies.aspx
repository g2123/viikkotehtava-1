<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_FinnkinoMovies.aspx.cs" Inherits="g2123_FinnkinoMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="btnGetTheatres" runat="server" Text="Hae teatterit" OnClick="btnGetTheatres_Click" /> <br />
    <h1></h1>
    <asp:ListBox ID="myListBox" runat="server" DataTextField="ID" Rows="18" OnSelectedIndexChanged="myListBox_SelectedIndexChanged" AutoPostBack="true" />

    <asp:XmlDataSource ID="myDataSource" runat="server" />
    <asp:Repeater ID="myRepeater" runat="server" DataSourceID="myDataSource" >
        <ItemTemplate>
            <!-- esitetään elokuvan kuva -->
            <asp:Image ID="image1" runat="server" ImageUrl='<%#XPath("Images/EventSmallImagePortrait") %>' />

        </ItemTemplate>
    </asp:Repeater>

</asp:Content>

