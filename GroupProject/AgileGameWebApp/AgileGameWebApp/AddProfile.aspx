<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProfile.aspx.cs" Inherits="AgileGameWebApp.AddProfile" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Game Book - Add Profile</title>
    <link rel="stylesheet" type="text/css" href="../content/style.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>
        <asp:Label ID="lblName" runat="server" Text="Input Name"></asp:Label>
        <asp:TextBox ID="txtPName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPName" runat="server" ControlToValidate="txtPName" ErrorMessage="Profile Name Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblDropAvatar" runat="server" Text="Choose Avatar"></asp:Label>
            <asp:DropDownList ID="dropAvatar" runat="server">
                <asp:ListItem Value="images/Avatar1.jpg">Red Logo</asp:ListItem>
                <asp:ListItem Value="images/Avatar2.jpg">Orange Logo</asp:ListItem>
                <asp:ListItem Value="images/Avatar3.jpg">Yellow Logo</asp:ListItem>
                <asp:ListItem Value="images/Avatar4.jpg">Green Logo</asp:ListItem>
                <asp:ListItem Value="images/Avatar5.jpg">Blue Logo</asp:ListItem>
                <asp:ListItem Value="images/Avatar6.jpg">Pink Logo</asp:ListItem>
            </asp:DropDownList>
        <br />
        <asp:Label ID="lblPEmail" runat="server" Text="Input Email"></asp:Label>
        <asp:TextBox ID="txtPEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPEmail" runat="server" ControlToValidate="txtPEmail" ErrorMessage="Email Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPLocation" runat="server" Text="Input Location"></asp:Label>
        <asp:TextBox ID="txtPLocation" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPLocation" runat="server" ControlToValidate="txtPLocation" ErrorMessage="Location Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPBio" runat="server" Text="Tell us about yourself"></asp:Label>
        <asp:TextBox ID="txtPBio" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="ProfileSubmit" runat="server" Text="Submit Profile" OnClick="click_addProfile" ValidationGroup="vgReq"/>

    </main>

</asp:Content>
