<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SingleEvent.aspx.cs" Inherits="AgileGameWebApp.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <asp:PlaceHolder ID="eventInfo" runat="server"></asp:PlaceHolder>
        <asp:Button ID="addToYourEvents" runat="server" Text="Add To Your Events" OnClick="addToEvents_Click" />
        <asp:PlaceHolder ID="response" runat="server"></asp:PlaceHolder>
    </section>
</asp:Content>
