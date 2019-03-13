<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="AgileGameWebApp.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <h1>See All Events or <a href="AddEvent.aspx">Create A New Event</a></h1>
        <ul id="gamesList">
        <asp:PlaceHolder ID="MyPlaceholder" runat="server"></asp:PlaceHolder>
        </ul>
    </section>
</asp:Content>
