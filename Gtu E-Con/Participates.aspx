<%@ Page Title="Participation Info" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Participates.aspx.cs" Inherits="Gtu_E_Con.Participates" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center">

        <h2 style="background-color: #44009F; font-family: Calibri; font-size: x-large; color: #FFAE35;">Search events by user info</h2>
        <p>
            Search by user ID:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="UID" runat="server" Width="205px"></asp:TextBox>
        </p>
        <p>
            Search by user mail:
            <asp:TextBox ID="UMAIL" runat="server" Width="205px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" CssClass="btn-primary" />
        </p>
        <p>
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Width="463px"></asp:ListBox>
        </p>
        <p>
            &nbsp;
        </p>
        <h2 style="background-color: #44009F; font-family: Calibri; font-size: x-large; color: #FFAE35;">List event participants</h2>
        <p>
            Search by event ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="EID" runat="server" Width="207px"></asp:TextBox>
        </p>
        <p>
            Search by event name:
            <asp:TextBox ID="ENAME" runat="server" Width="209px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button2" runat="server" CssClass="btn-primary" Text="Search" OnClick="Button2_Click" />
        </p>
        <p>
            <asp:ListBox ID="ListBox2" runat="server" Width="599px"></asp:ListBox>
        </p>
        <p>&nbsp;</p>
    </div>
</asp:Content>
