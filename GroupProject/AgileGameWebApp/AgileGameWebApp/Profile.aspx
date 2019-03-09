<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="AgileGameWebApp.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="wrapper">

        <main>

            <div id="profileCard">

                <img class="avatar" height="220px" src="images/Avatar5.jpg">
                <h1>nameArea</h1>
                <form id="buttonForm" action="NewProfile.html">

                    <button id="newUser" type="submit">New User</button>

                </form>
                
            </div>
    
            <content>

                <asp:Label ID="userID" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Username" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="First Name" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Last Name" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <label id="contactdlbl">Contact:</label>
                <label id="contactd" value="value">Ctest</label>

                <br>

                <label id="localdlbl">Location:</label>
                <label id="locald" value="value">Ltest</label>

                <br>

                <label id="biodlbl">Bio:</label>
                <label id="biod" value="value">Btest</label>

                <br>

                <h2 id="Grouplbl">Group Activity</h2>
                <label input type="checkbox" id="Groupd" value="value">Gtest</label>

            </content>


        </main>



        <footer id="mainFooter" class="panel">
            <p>
                &copy; GAMEBOOK 2019
            </p>

        </footer>

    </div>

</asp:Content>
