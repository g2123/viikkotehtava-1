<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_homeworks.aspx.cs" Inherits="g2123_homeworks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1> Tehtävä 1</h1>
    <div>
        <asp:TextBox ID="txtbox1" runat="server" Text="kirjoita nimesi"></asp:TextBox>
        <asp:Button ID="btn1" runat="server" Text="Välitä parametreinä" OnClick="btn1_Click" />
        <asp:Button ID="btn2" runat="server" Text="Tallenna sessio" OnClick="btn2_Click" />
        <asp:Button ID="Btn3" runat="server" Text="Tallenna Cookie" OnClick="Btn3_Click" />
    </div>

    <h1>Tehtävä 2</h1>
    <div>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/g2123_elakelaskuri.aspx">Eläkelaskuri</asp:HyperLink>
    </div>
    <h1>Tehtävä 3</h1>
    <div>
        <asp:HyperLink ID="hyperLink5" runat="server" NavigateUrl="~/g2123_palaute.aspx">Palaute</asp:HyperLink>
    </div>

</asp:Content>

