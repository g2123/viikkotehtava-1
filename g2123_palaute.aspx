<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_palaute.aspx.cs" Inherits="g2123_palaute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Opintojakso palaute</h1>

    <div>
        <table border="1">

            <tr>
                <td>
                    <h2>Anna palaute</h2>
                    <br />
                    Pvm:<asp:TextBox ID="txtPvm" runat="server" />
                    Nimi: <asp:TextBox ID="txtNimi" runat="server" />
                    <br />
                    Olen oppinut: <asp:TextBox ID="txtOlenOppinut" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    Haluan oppia: <asp:TextBox ID="txtHaluanOppia" runat="server" Rows="2" TextMode="MultiLine" />
                </td>
                <td>
                    <h2>Palaute jatkuu</h2>
                    <br />
                    Hyvää: <asp:TextBox ID="txtHyvaa" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    Parannettavaa: <asp:TextBox ID="txtParennettavaa" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    Muuta: <asp:TextBox ID="txtMuuta" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    <asp:Button ID="btnLaheta" runat="server" Text="Lähetä" OnClick="btnLaheta_Click" />
                </td>            
            </tr>

            <tr>
                <td>empty</td>
            </tr>
        </table>

        <h2>Palautteet</h2>
        <asp:Button ID="btnNayta" runat="server" Text="Näytä palautteet" OnClick="btnNayta_Click"  />
        <asp:GridView ID="gridView" runat="server" >

        </asp:GridView>

    </div>
    
</asp:Content>

