<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEventExample.aspx.cs" Inherits="AgileGameWebApp.WebForm3" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Game Book - Add Event</title>
    <link rel="stylesheet" type="text/css" href="../content/style.css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div id="wrapper">
        
        <header class="panel">
            
            <img class="imagelogo" height="100px" src="images/GAMEBOOk_image_logo.png">
            <img class="textlogo" height="45px" src="images/GAMEBOOK_text_logo.png">

        </header>
        
        <div class="panel" id="nav">
            
        <div id="profileNavCard">  
            
            <h3>HI, USER</h3>
            
        </div>
            
            <ul>
                
               <li><a href="ProfileExample.aspx">DASHBOARD</a></li>

                <li><a href="AddEventExample.aspx">EVENTS</a></li>

                <li><a href="GameExample.aspx">GAMES</a></li>

                <li><a href="GroupExample.aspx">GROUP</a></li>
                
            </ul>
            
        </div>
        
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

        <footer id="mainFooter" class="panel"> 
            <p>
                &copy GAMEBOOK 2019
            </p>
  
        </footer>
        
    </div>

</asp:Content>