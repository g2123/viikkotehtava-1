<%@ Page Language="C#" AutoEventWireup="true" CodeFile="g2123_SimpleSqlDataSource.aspx.cs" Inherits="SimpleSqlDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="srcMovies" ConnectionString="Data Source=eight.labranet.jamk.fi;Initial Catalog=movie;Persist Security Info=True;User ID=koodari;Password=koodari13"
    SelectCommand="SELECT title, director FROM Movies" runat="server" ></asp:SqlDataSource>
        
        <h1>Bulletlist</h1>
        <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="srcMovies" DataTextField="Title"></asp:BulletedList>
       
         <h1>Gridview</h1>
        <asp:GridView ID="grid" DataSourceID="srcMovies" runat="server" />

        <h1>DataList kontrolli</h1>
        <p>Datalist esittää datan HMTL-taulussa, määritetään esittävä data itemtemplate</p>
        <asp:DataList ID="datalist1" runat="server" DataSourceID="srcMovies">
            <ItemTemplate>
                Elokuvan <%#Eval("title")%> on ohjannut <%#Eval("director")%>
            </ItemTemplate>
        </asp:DataList>

        <h1>Repeater</h1>
        <p> Repeater näyttää datarivejä käyttäen templatea, ei renderöi automaattisesti HTML taulua</p>
        <asp:Repeater ID="repeater1" DataSourceID="srcMovies" runat="server">
            <ItemTemplate>
                Movie <%#Eval("title")%> on ohjannut <%#Eval("director")%>
            </ItemTemplate>
        </asp:Repeater>
        
        <h1>Listview</h1>
        <p>Tämäkin näyttää datarivejä käyttäen templatea, tukee sorttausta, sivustusta ja datan editointia</p>
        <asp:ListView ID="listview" runat="server" DataSourceID="srcMovies">
            <LayoutTemplate>
                <div id="itemPlaceholder" runat="server" />
                <asp:DataPager ID="pager1" PageSize="4" runat="server">
                    <Fields>
                        <asp:NumericPagerField />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate> 
               Movie <%#Eval("title") %> on ohjannut <%#Eval("director")%> <br />
            </ItemTemplate>              
        </asp:ListView>
    </div>
    </form>
</body>
</html>
