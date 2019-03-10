<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUsers.aspx.cs" Inherits="AgileGameWebApp.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div id="wrapper">
        
        
        <main class="Forms">
            <section>
                <h2>Sign Up or <a href="SignIn.aspx">Sign In</a></h2>
                <h3>Username</h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtUsername" runat="server"></asp:TextBox>
                <h3>Email</h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtEmail" runat="server"></asp:TextBox>
                <h3>Password</h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtPassword" runat="server"></asp:TextBox>
                <h3>Confirm Password</h3>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password does not match"></asp:CompareValidator><br>
                <asp:TextBox CssClass="databox" ID="txtConfirmPassword" runat="server"></asp:TextBox>

                <h3>First Name</h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFname" ErrorMessage="First Name Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtFName" runat="server"></asp:TextBox>

                <h3>Last Name</h3>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="red" ControlToValidate="txtLName" ErrorMessage="Last Name Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtLName" runat="server"></asp:TextBox>

                <h3>Age</h3>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="red" ControlToValidate="txtAge" ErrorMessage="Age Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtAge" runat="server"></asp:TextBox>

                <h3>City</h3>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="red" ControlToValidate="txtCity" ErrorMessage="City Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtCity" runat="server"></asp:TextBox>

                <h3>State</h3>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="red" ControlToValidate="txtState" ErrorMessage="State Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtState" runat="server"></asp:TextBox>
            
                <h3>Zip</h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="red" ControlToValidate="txtZip" ErrorMessage="Zip Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtZip" runat="server"></asp:TextBox><br>

                <h3>Bio</h3>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="red" ControlToValidate="txtBio" ErrorMessage="Bio Required"></asp:RequiredFieldValidator><br>
                <asp:TextBox CssClass="databox" ID="txtBio" runat="server"></asp:TextBox><br>
            
                <asp:Button ID="Button1" runat="server" Text="Submit Event" OnClick="click_addUser" />
            </section>
        </main>

        <footer id="mainFooter" class="panel"> 
            <p>
                &copy GAMEBOOK 2019
            </p>
  
        </footer>
        
    </div>
</asp:Content>
