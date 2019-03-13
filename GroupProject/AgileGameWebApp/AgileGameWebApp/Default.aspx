<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AgileGameWebApp.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="wrapper">

        <main>

            <div id="profileCard">

                <img src="~/images/Avatar1.jpg" id="avatar" runat="server">
            </div>

            <section>
                <asp:Label ID="FirstName" runat="server" Text=""></asp:Label>
                <asp:Label ID="LastName" runat="server" Text=" "></asp:Label><br>
                <asp:Label ID="userID" runat="server" Text=""></asp:Label><br>
                <asp:Label ID="Username" runat="server" Text=""></asp:Label><br>
                <label id="contactdlbl">Contact:</label><br>
                <asp:Label ID="contactd" runat="server" Text="Label"></asp:Label>

                <br>

                <label>Age:</label><br>
                <asp:Label ID="lblAge" runat="server" Text=""></asp:Label>
                <br>

                <label>City:</label><br>
                <asp:Label ID="lblCity" runat="server" Text=""></asp:Label>
                <br>

                <label>State:</label><br>
                <asp:Label ID="lblState" runat="server" Text=""></asp:Label>
                <br>

                <label>Zip:</label><br>
                <asp:Label ID="lblZip" runat="server" Text=""></asp:Label>
                <br>

                <label id="biodlbl">Bio:</label><br>
                <asp:Label ID="biod" runat="server" Text=""></asp:Label>

            </section>

            <section>

                <h3>Your Games</h3>
                <%--<a href='?sort=Type' class="sort">Type</a>
                     <a href='?sort=Rating' class="sort">Rating</a>--%>
                <ul id="gamesList">
                    <asp:PlaceHolder ID="gamesPlaceholder" runat="server"></asp:PlaceHolder>
                </ul>

            </section>

            <section>

                <h3>Your Events</h3>
                <%--<a href='?sort=Type' class="sort">Type</a>
                     <a href='?sort=Rating' class="sort">Rating</a>--%>
                <ul>
                    <asp:PlaceHolder ID="eventsPlaceholder" runat="server"></asp:PlaceHolder>
                </ul>

            </section>


        </main>


    </div>

</asp:Content>
