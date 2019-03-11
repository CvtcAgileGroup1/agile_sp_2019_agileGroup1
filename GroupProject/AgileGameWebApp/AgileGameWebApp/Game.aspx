<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Game.aspx.cs" Inherits="AgileGameWebApp.WebForm1" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Events</title>
    
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <asp:PlaceHolder ID="gameInfo" runat="server"></asp:PlaceHolder>
        <asp:Button ID="addToGames" runat="server" Text="Add To Your Games" OnClick="addToGames_Click" />
        <asp:PlaceHolder ID="alreadyAdded" runat="server"></asp:PlaceHolder>
    </section>
</asp:Content>