<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_lasnaolot.aspx.cs" Inherits="g2123_lasnaolot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="srcIlmot" runat="server" ConnectionString="<%$ ConnectionStrings:LasnaolotConnectionstring %>"
        SelectCommand="SELECT asioid, lastname, firstname, date FROM lasnaolot WHERE course like 'IIO13200%' ORDER BY asioid">
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="srcCource" runat="server" ConnectionString="<%$ ConnectionStrings:LasnaolotConnectionstring %>"
        SelectCommand="SELECT DISTINCT course FROM lasnaolot ORDER BY course">
    </asp:SqlDataSource>

    <h2>Syksyn läsnäolot</h2>
    
    <asp:TextBox ID="txtNimi" runat="server"></asp:TextBox>     
    <asp:DropDownList ID="ddlCourses" DataSourceID="srcCource" DataTextField="course" runat="server" AutoPostBack="false">
    </asp:DropDownList> 
    <asp:Button ID="btnHae" runat="server" OnClick="btnHae_Click" Text="hae"/>
    <br />
    <!-- tarkistetaan käyttäjän syöte SqlIncektion varalta -->
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Sukunimi voi sisältää vain kirjaimia" ForeColor="Red"
        ControlToValidate="txtNimi" ValidationExpression="^[a-öA-Ö]*$" ></asp:RegularExpressionValidator>




    <asp:GridView runat="server" DataSourceID="srcIlmot"></asp:GridView>

</asp:Content>

