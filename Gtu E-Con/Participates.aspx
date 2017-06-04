<%@ Page Title="Participation Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Participates.aspx.cs" Inherits="Gtu_E_Con.Participates" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>Search events by user info</h2>
<p>
    <asp:TextBox ID="UID" runat="server" Width="205px"></asp:TextBox>
</p>
<p>
    <asp:TextBox ID="UMAIL" runat="server" Width="205px"></asp:TextBox>
</p>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
</p>
    <p>
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True"></asp:ListBox>
</p>
    <p>
        &nbsp;</p>
    <h2><%: Title %>List event participants</h2>
<p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>
