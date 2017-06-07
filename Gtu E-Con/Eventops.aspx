<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Eventops.aspx.cs" Inherits="Gtu_E_Con.Eventops" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center">
        <h1 style="background-color: #44009F; font-family: Calibri; font-size: x-large; color: #FFAE35;">&nbsp;
            Add new event
        </h1>
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="eventName" runat="server"></asp:TextBox>
        <br />
        <br />
        EventDate:&nbsp;&nbsp;
        <asp:TextBox ID="eventDate" runat="server"></asp:TextBox>
        <br />
        <br />
        Capacity :&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="capacity" runat="server"></asp:TextBox>
        <br />
        <br />
        Duration:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="duration" runat="server"></asp:TextBox>
        <br />
        <br />
        Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="eventType" runat="server" Height="28px" Width="127px">
            <asp:ListItem>Concert</asp:ListItem>
            <asp:ListItem>Conference</asp:ListItem>
            <asp:ListItem>Cocktail</asp:ListItem>
            <asp:ListItem>Cinema</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Description:
        <asp:TextBox ID="eventDescription" runat="server" Height="30px" Width="250px"></asp:TextBox>
        <br />
        <br />
&nbsp; Address:
        <asp:TextBox ID="address" runat="server" Height="30px" Width="298px"></asp:TextBox>
        <br />
        <br />
        Organizer:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MAIL" DataValueField="ID" Width="250px" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM USERS U WHERE U.TYPE = 'organiser'"></asp:SqlDataSource>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Save Event" BackColor="#3333CC" ForeColor="#66FF99" Width="94px" />
        <br />
        <br />
    </div>
</asp:Content>
