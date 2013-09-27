<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_elakelaskuri.aspx.cs" Inherits="g2123_elakelaskuri" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <h1>Eläkelaskuri</h1>
    </div>

     <div>

         Ikä <br /> 
         <tr>
             <td>
                 <asp:Button ID="minusIka" runat="server" Text="-" OnClick="minusIka_Click" />
                 <asp:TextBox ID="txtBoxIka" AutoPostBack="true" Text="0" runat="server" OnTextChanged="txtBoxIka_TextChanged" />
                 <asp:Button ID="plusIka" runat="server" Text="+" OnClick="plusIka_Click" />
                 <asp:Label ID="Label2" runat="server" Text="Lakisääteinen eläke:" />
                 <asp:Label ID="LakiElake" Text="" runat="server" /> €
                 <br />
                 Palkka
                 <br />
                 <asp:Button ID="minusPalkka" runat="server" Text="-" OnClick="minusPalkka_Click" />
                 <asp:TextBox ID="TxtBoxPalkka" AutoPostBack="true" Text="0" runat="server" OnTextChanged="TextBoxPalkka_TextChanged"/>
                 <asp:Button ID="plusPalkka" runat="server" Text="+" OnClick="plusPalkka_Click" />
                 <asp:Label  runat="server" Text="Elinaikakertoimen vaikutus" />
                 <asp:Label runat="server" ID="vaikutus" text="" /> €
                 <br />
                 <asp:Label ID="Label1"  runat="server" Text="Arvio lakisääteisestä eläkkeestä:" />
                 <asp:Label ID="tulos" runat="server" Text=""></asp:Label>€
             </td>
         </tr>         
     </div> 
    </asp:Content>