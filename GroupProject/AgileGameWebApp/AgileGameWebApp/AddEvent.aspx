<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEvent.aspx.cs" Inherits="AgileGameWebApp.AddEvent" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <title>Game Book - Add Event</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <section>
    <asp:Label ID="lblEventName" runat="server" Text="Event Name"></asp:Label>
    <asp:TextBox ID="txtEName" runat="server" MaxLength="45"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvEName" runat="server" ControlToValidate="txtEName" ErrorMessage="Event Name Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Label ID="lblDesc" runat="server" Text="Description"></asp:Label>
    <asp:TextBox ID="txtDescription" runat="server" Columns="50" Rows="5" TextMode="MultiLine" MaxLength="255"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvDesc" runat="server" ControlToValidate="txtDescription" ErrorMessage="Description Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Label ID="lblLocation" runat="server" Text="Location"></asp:Label>
    <asp:TextBox ID="txtLocation" runat="server" MaxLength="50"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="txtLocation" ErrorMessage="Location Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
    <br /><br />
    <asp:Label ID="lblDateStart" runat="server" Text="Start Date"></asp:Label>
    <asp:TextBox ID="txtDateStart" runat="server" ReadOnly="True"></asp:TextBox>
    <asp:Button ID="btnDateStart" runat="server" Text="Choose Date Start" OnClick="btnDateStart_Click" />
    <asp:Calendar ID="Calendar1" runat="server" Visible="false" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
    <asp:RequiredFieldValidator ID="rfvDateStart" runat="server" ControlToValidate="txtDateStart" ErrorMessage="Start Date Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvDateStart" runat="server" ControlToValidate="txtDateStart" ErrorMessage="Date must start on todays date or later." ValidationGroup="vgReq"></asp:RangeValidator>
    <br /><br />
    <asp:Label ID="lblTimeStart" runat="server" Text="Start Time"></asp:Label>
    <asp:DropDownList ID="ddTimeStart" runat="server" >
        <asp:ListItem>12 AM</asp:ListItem>
        <asp:ListItem>1 AM</asp:ListItem>
        <asp:ListItem>2 AM</asp:ListItem>
        <asp:ListItem>3 AM</asp:ListItem>
        <asp:ListItem>4 AM</asp:ListItem>
        <asp:ListItem>5 AM</asp:ListItem>
        <asp:ListItem>6 AM</asp:ListItem>
        <asp:ListItem>7 AM</asp:ListItem>
        <asp:ListItem>8 AM</asp:ListItem>
        <asp:ListItem>9 AM</asp:ListItem>
        <asp:ListItem>10 AM</asp:ListItem>
        <asp:ListItem>11 AM</asp:ListItem>
        <asp:ListItem>12 PM</asp:ListItem>
        <asp:ListItem>1 PM</asp:ListItem>
        <asp:ListItem>2 PM</asp:ListItem>
        <asp:ListItem>3 PM</asp:ListItem>
        <asp:ListItem>4 PM</asp:ListItem>
        <asp:ListItem>5 PM</asp:ListItem>
        <asp:ListItem>6 PM</asp:ListItem>
        <asp:ListItem>7 PM</asp:ListItem>
        <asp:ListItem>8 PM</asp:ListItem>
        <asp:ListItem>9 PM</asp:ListItem>
        <asp:ListItem>10 PM</asp:ListItem>
        <asp:ListItem>11 PM</asp:ListItem>
    </asp:DropDownList>
       

    <br /><br />
    <asp:Label ID="lblDateEnd" runat="server" Text="End Date"></asp:Label>
    <asp:TextBox ID="txtDateEnd" runat="server" ReadOnly="True"></asp:TextBox>
    <asp:Button ID="btnDateEnd" runat="server" Text="Choose Date End" OnClick="btnDateEnd_Click" />
    <asp:Calendar ID="Calendar2" runat="server" Visible="false" OnSelectionChanged="Calendar2_SelectionChanged1"></asp:Calendar>
    <asp:RequiredFieldValidator ID="rfvDateEnd" runat="server" ControlToValidate="txtDateEnd" ErrorMessage="Date End Required" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="rvDateEnd" runat="server" ControlToValidate="txtDateEnd" ErrorMessage="Date must end on todays date or later." ValidationGroup="vgReg"></asp:RangeValidator>
    <asp:Label ID="lblEndDateInvalid" runat="server" Text="Ending of Event Can Not be Before Start" Visible="false"></asp:Label>

    <br /><br />
    <asp:Label ID="lblTimeEnd" runat="server" Text="EndTime"></asp:Label>
    <asp:DropDownList ID="ddTimeEnd" runat="server">
        <asp:ListItem>12 AM</asp:ListItem>
        <asp:ListItem>1 AM</asp:ListItem>
        <asp:ListItem>2 AM</asp:ListItem>
        <asp:ListItem>3 AM</asp:ListItem>
        <asp:ListItem>4 AM</asp:ListItem>
        <asp:ListItem>5 AM</asp:ListItem>
        <asp:ListItem>6 AM</asp:ListItem>
        <asp:ListItem>7 AM</asp:ListItem>
        <asp:ListItem>8 AM</asp:ListItem>
        <asp:ListItem>9 AM</asp:ListItem>
        <asp:ListItem>10 AM</asp:ListItem>
        <asp:ListItem>11 AM</asp:ListItem>
        <asp:ListItem>12 PM</asp:ListItem>
        <asp:ListItem>1 PM</asp:ListItem>
        <asp:ListItem>2 PM</asp:ListItem>
        <asp:ListItem>3 PM</asp:ListItem>
        <asp:ListItem>4 PM</asp:ListItem>
        <asp:ListItem>5 PM</asp:ListItem>
        <asp:ListItem>6 PM</asp:ListItem>
        <asp:ListItem>7 PM</asp:ListItem>
        <asp:ListItem>8 PM</asp:ListItem>
        <asp:ListItem>9 PM</asp:ListItem>
        <asp:ListItem>10 PM</asp:ListItem>
        <asp:ListItem>11 PM</asp:ListItem>
    </asp:DropDownList>

    <br /><br />

    <asp:Label ID="lblPublic" runat="server" Text="Label"></asp:Label>
    <asp:RequiredFieldValidator ID="rfvPublic" runat="server" ControlToValidate="rdoPrivacy" ErrorMessage="Event must be Public or Private" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
    <asp:RadioButtonList ID="rdoPrivacy" runat="server">
        <asp:ListItem>Private</asp:ListItem>
        <asp:ListItem>Public</asp:ListItem>
    </asp:RadioButtonList>
    <br /><br />
    <asp:Label ID="lblNumberOfPeople" runat="server" Text="Number of People"></asp:Label>
    <asp:TextBox ID="txtNumPeople" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Number of People is Required" ControlToValidate="txtNumPeople" ValidationGroup="vgReq"></asp:RequiredFieldValidator>
    <asp:Label ID="lblNotAValidNumber" runat="server" Text="Please Enter a Valid Number of People" Visible="false"></asp:Label>
    <br /><br />

    <asp:Button ID="Button1" runat="server" Text="Submit Event" OnClick="click_addEvent" ValidationGroup="vgReq"/>

    <br /><br />
    <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
    </section>
  
</asp:Content>
