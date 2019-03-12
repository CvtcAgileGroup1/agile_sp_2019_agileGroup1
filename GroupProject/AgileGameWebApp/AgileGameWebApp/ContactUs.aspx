<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="AgileGameWebApp.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section>
    <h2>Contact Us</h2>
    <p>
        We are happy to hear from you. Please fill out the form below, and we will get back to you with in 168 hours.
    </p>
    <br>
    <div id="formContactUs">
        <form action="thankYou.php" method="post">
            <label for="uName">Name:</label>
            <input type="text" name="uName" id="uName">
            <br>
            <label for="uEmail">Email:</label>
            <input type="email" name="uEmail" id="uEmail">
            <br>
            <label for="uReason">Reason for Contact:</label>
            <select name="uReason" id="uReason">
            <option value="AcctIssue">Account Issue</option>
            <option value="GenFeedback">General Feedback</option>
            <option value="FeatureRequest">New Feature Request</option>
            <option value="ReportUser">Report User</option>
            <option value="ReportWebIssue">Reposrt Website Issue</option>
            </select>
            <br>
            <label for="uMessage">Message:</label>
            <br>
            <textarea name="uMessage" id="" cols="35" rows="10"></textarea>
            <br>
            <button type="reset">Reset</button>
            <button type="submit">Submit</button>
        </form>
    </div>
    </section>
 
</asp:Content>
