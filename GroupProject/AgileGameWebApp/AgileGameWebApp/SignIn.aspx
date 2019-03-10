<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="AgileGameWebApp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <section>
            <h2>Sign In</h2>
            <h3>User Name</h3>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <h3>Password</h3>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />
            <asp:Label ID="lblNotFound" runat="server" Text=""></asp:Label>
        </section>
    </main>
</asp:Content>
