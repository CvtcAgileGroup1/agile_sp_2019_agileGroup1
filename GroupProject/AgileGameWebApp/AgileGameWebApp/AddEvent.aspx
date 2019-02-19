<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="AgileGameWebApp.WebForm3" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Game Book - Add Event</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h3>Title</h3>
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
        <h3>Description</h3>
        <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
        <h3>Location</h3>
        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
        <h3>Start Time</h3>
        <asp:TextBox ID="txtStartTime" runat="server"></asp:TextBox>
        <h3>End Time</h3>
        <asp:TextBox ID="txtEndTime" runat="server"></asp:TextBox>
        <h3>Event Date</h3>
        <asp:TextBox ID="txtEventDate" runat="server"></asp:TextBox>
        <h3># of Participants Limit</h3>
        <asp:TextBox ID="txtLimit" runat="server"></asp:TextBox>
        <h3>Privacy</h3>
        <asp:RadioButtonList ID="rdoPrivacy" runat="server">
            <asp:ListItem>Public</asp:ListItem>
            <asp:ListItem>Private</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" Text="Submit Event" OnClick="click_addEvent" />
        <asp:Label ID="lblTest" runat="server" Text="Label"></asp:Label>
    </main>
</asp:Content>