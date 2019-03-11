<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProfileExample.aspx.cs" Inherits="AgileGameWebApp.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Games</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section>
    <div id="profileCard">

        <img class="avatar" height="220px" src="images/Avatar5.jpg">
        
        <%--This info needs to be pulled from the DB--%>
            <ul>
                <li>Game 1</li>
                <li>Game 2</li>
                <li>Game 3</li>
                <li>Game 4</li>
                <li>Game 5</li>
            </ul>
        
    </div>
    </section>

</asp:Content>

