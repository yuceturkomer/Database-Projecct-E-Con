<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eventops.aspx.cs" Inherits="Gtu_E_Con.Eventops" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="eventName" runat="server"></asp:TextBox>
    <br />
    <br />
    EventDate:&nbsp;&nbsp; <asp:TextBox ID="eventDate" runat="server"></asp:TextBox>
    <br />
    <br />
    Capacity :&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="capacity" runat="server"></asp:TextBox>
    <br />
    <br />
    Duration:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="duration" runat="server"></asp:TextBox>
    <br />
    <br />
    Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="eventType" runat="server">
        <asp:ListItem>Concert</asp:ListItem>
        <asp:ListItem>Conference</asp:ListItem>
        <asp:ListItem>Cocktail</asp:ListItem>
        <asp:ListItem>Cinema</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
    Saloon:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    Session:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    Description: <asp:TextBox ID="eventDescription" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Save" />
    <br />
    <br />
</asp:Content>
