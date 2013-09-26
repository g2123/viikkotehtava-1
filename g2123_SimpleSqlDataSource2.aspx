<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2123_SimpleSqlDataSource2.aspx.cs" Inherits="g2123_SimpleSqlDataSource2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>
