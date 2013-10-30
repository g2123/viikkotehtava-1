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
                    <br />
                    <asp:RequiredFieldValidator ControlToValidate="txtPvm" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Syötä päivämäärä muodossa PP.KK.VV" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:CompareValidator
                        id="dateValidator" runat="server" 
                        Type="Date"
                        Operator="DataTypeCheck"
                        ControlToValidate="txtPvm" 
                        ErrorMessage="Syötä päivämäärä muodossa PP.KK.VV"
                        ForeColor="Red">
                    </asp:CompareValidator>
                    <br />
                    Nimi: <asp:TextBox ID="txtNimi" runat="server" />
                    <br />
                    <asp:RequiredFieldValidator ControlToValidate="txtNimi" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Syötä nimesi" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    Olen oppinut: <asp:TextBox ID="txtOlenOppinut" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    <asp:RequiredFieldValidator ControlToValidate="txtOlenOppinut" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Täytä teksikenttä" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    Haluan oppia: <asp:TextBox ID="txtHaluanOppia" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    <asp:RequiredFieldValidator ControlToValidate="txtHaluanOppia" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Täytä tekstikenttä" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <h2>Palaute jatkuu</h2>
                    <br />
                    Hyvää: <asp:TextBox ID="txtHyvaa" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    <asp:RequiredFieldValidator ControlToValidate="txtHyvaa" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Täytä tekstikenttä" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    Parannettavaa: <asp:TextBox ID="txtParannettavaa" runat="server" Rows="2" TextMode="MultiLine" />
                    <br />
                    <asp:RequiredFieldValidator ControlToValidate="txtParannettavaa" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Täytä tekstikenttä" ForeColor="Red"></asp:RequiredFieldValidator>
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
        <asp:Button ID="btnNayta" runat="server" Text="Näytä palautteet" OnClick="btnNayta_Click" CausesValidation="false"  />
        <asp:GridView ID="gridView" runat="server" >

        </asp:GridView>

    </div>
    
</asp:Content>

