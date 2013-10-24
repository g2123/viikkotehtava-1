<%@ Page Title="RegularExpressionTesti" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_MyRegEx.aspx.cs" Inherits="g2123_MyRegEx"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Validointi</h1>
    <asp:TextBox ID="nimi" runat="server" /> 
    <br />
    <asp:RegularExpressionValidator ID="Name" runat="server" ControlToValidate="nimi"
    SetFocusOnError="true" Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid first name"
    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Ei käy</asp:RegularExpressionValidator>
    <asp:Button ID="validate" runat="server" Text="Validate" />
    <br />
    <asp:Label ID="txt" runat="server" text=""/>
    <h2>Sivun teeman vaihto</h2>
    <asp:Image ID="image1" runat="server" SkinID="CompanyLogo" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/g2123_MyRegEx.aspx?theme=teema">Teema</asp:HyperLink>
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/g2123_MyRegEx.aspx?theme=teema2">Teema2</asp:HyperLink>
</asp:Content>

