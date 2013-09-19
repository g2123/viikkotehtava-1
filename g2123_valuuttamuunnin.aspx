<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_valuuttamuunnin.aspx.cs" Inherits="g2123_valuuttamuunnin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <h1>Tervetuloa</h1>
        Nimesi: <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        BitCoin <asp:TextBox ID="txtMuunnin" runat="server" ></asp:TextBox>
        <br />
        <asp:Button ID="btnMuunna" runat="server" Text="Muunna" OnClick="btnMuunna_Click"/> 
        <asp:Label ID="lblCurrency" runat="server" Text="..."></asp:Label>
        <br />
        <asp:ListBox ID="lstOne" Width="200" runat="server"></asp:ListBox>
        <asp:ListBox ID="lstTwo" Width="200" runat="server" EnableViewState="False"></asp:ListBox>
    </div>
</asp:Content>

