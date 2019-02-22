<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GroupExample.aspx.cs" Inherits="AgileGameWebApp.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Events</title>
    
    <link rel="stylesheet" href="content/style.css">
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
            
 
            
        </main>
        
        <wrapper>
        
            
        
        </wrapper>

        <footer id="mainFooter" class="panel"> 
            <p>
                &copy GAMEBOOK 2019
            </p>
        
        </footer>
        
    </div>
</asp:Content>
