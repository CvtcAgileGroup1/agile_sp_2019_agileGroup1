<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainProfile.aspx.cs" Inherits="AgileGameWebApp.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">

        <main>

            <div id="profileCard">

                <img class="avatar" height="220px" src="images/Avatar5.jpg">
                <label ID="nameArea">nameArea</label>
                <form id="buttonForm" action="AddUsers.aspx">

                    <asp:Button id="newUser" runat="server" CssClass="addUser" Text="New User"></asp:Button>

                </form>
                
            </div>
    
            <content>
                
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Username1" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="FirstName" runat="server" Text="Label"></asp:Label>
                
                <br />

                <label id="contactdlbl">Contact:</label>
                <asp:Label ID="contactval" runat="server" Text="Label"></asp:Label>

                <br>

                <label id="localdlbl">Location:</label>
                <label id="locald" value="value">Ltest</label>

                <br>

                <label id="biodlbl">Bio:</label>
                <asp:Label ID="bioval" runat="server" Text="Label"></asp:Label>

                <br /> <br /><br /><br />

                <h2 id="Grouplbl">Group Activity</h2>
                <label input type="checkbox" id="Groupd" CssClass="groupCollect">Gtest</label>

            </content>

        </main>

    </div>
</asp:Content>
