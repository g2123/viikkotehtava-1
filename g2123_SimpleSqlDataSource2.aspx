<%@ Page Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="g2123_SimpleSqlDataSource2.aspx.cs" Inherits="g2123_SimpleSqlDataSource2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>
        <asp:SqlDataSource ID="srcMovies" ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
        SelectCommand="SELECT title, director, year FROM Movies" runat="server" ></asp:SqlDataSource>
       
        <h1>DataControls to display a single data item</h1>

        <h2>DetailsView -control</h2>
        <p>Näyttää datan HTML taulussa, tarvittaessa mahdollistaa lisäämisen ja muokkauksen </p>
        <asp:DetailsView ID="detailsview1" DataSourceID="srcMovies" runat="server" AllowPaging="true"></asp:DetailsView>

        <h2>FormView -control</h2>
        <p>Näyttää data itemTemplaten avulla</p>
        <asp:FormView ID="FormView" DataSourceID="srcMovies" runat="server" AllowPaging="true">
            <ItemTemplate>
                <h3><%#Eval("title") %></h3> directed by <%#Eval("director")%> at <%#Eval("year")%>
            </ItemTemplate>
        </asp:FormView>


    </div>
</asp:Content>

