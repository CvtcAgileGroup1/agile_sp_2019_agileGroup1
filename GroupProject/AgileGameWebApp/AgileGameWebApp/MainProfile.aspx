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
                <br />
                <label class="userlbl">Username:</label>
                <asp:Label ID="Username1" runat="server" CssClass="userFN" Text="Label"></asp:Label>
                <asp:Label ID="FirstName" runat="server" CssClass="userLN" Text="Label"></asp:Label>
                <br /><br />

                <label class="contactdlbl">Contact:</label>
                <asp:Label ID="contactval" runat="server" CssClass="contactVal"  Text="Label"></asp:Label>

                <br /><br />

                <label class="localdlbl">Location:</label>
                <label class="locald" value="value">Ltest</label>

                <br /><br />

                <label class="biodlbl">Bio:</label>
                <asp:Label ID="bioval" runat="server" CssClass="bioVal" Text="Label"></asp:Label>

                <br /> <br /><br /><br />

                <h2 class="grouplbl">Group Activity</h2>
                <br />
                <label id="Groupd" class="groupCollect">Gtest</label>

                <br />

            </content>

        </main>

    </div>
</asp:Content>
