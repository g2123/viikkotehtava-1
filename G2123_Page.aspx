<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="G2123_Page.aspx.cs" Inherits="G2123_Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    <div>Tänään on: <%=DateTime.Now.ToString("dd-MM-yyyy") %></div>
    
</asp:Content>

