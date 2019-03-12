<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddGame.aspx.cs" Inherits="AgileGameWebApp.AddGame" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Game Book - Add Event</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblGameName" runat="server" Text="Game Name: "></asp:Label>
    <asp:TextBox ID="txtGameName" runat="server" MaxLength="30"></asp:TextBox>
    <br /><br />
    <asp:Label ID="lblGameType" runat="server" Text="Game Type: "></asp:Label>
    <asp:TextBox ID="txtGameType" runat="server" MaxLength="10"></asp:TextBox>
    <br /><br />
    <asp:Label ID="lblDescription" runat="server" Text="Game Description"></asp:Label>
    <asp:TextBox ID="txtDescription" runat="server" Columns="50" Rows="5" TextMode="MultiLine" MaxLength="255"></asp:TextBox>
    <br /><br /> 
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
</asp:Content>
