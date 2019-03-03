<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BrowseGames.aspx.cs" Inherits="AgileGameWebApp.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Browse Games</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <a href='?sort=Name' class="sort">Name</a>
        <a href='?sort=Type' class="sort">Type</a>
        <a href='?sort=Rating' class="sort">Rating</a>
        <ul id="gamesList">
           <asp:PlaceHolder ID="MyPlaceholder" runat="server"></asp:PlaceHolder>
        </ul>
</asp:Content>
