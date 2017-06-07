<%@ Page Title="User Operations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Userops.aspx.cs" Inherits="Gtu_E_Con.Userops" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        <h1 style="background-color: #44009F; font-family: Calibri; font-size: x-large; color: #FFAE35;">
            Register a new user
        </h1>
        <p>
            Mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="mailbox" runat="server"></asp:TextBox>
        </p>
        <p>
            Pw:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="pwbox" runat="server"></asp:TextBox>
        </p>
        <p>
            Realname:<asp:TextBox ID="namebox" runat="server"></asp:TextBox>
        </p>
        <p>
            Birthday:&nbsp;&nbsp; 
        <asp:TextBox ID="bdbox" runat="server"></asp:TextBox>
        </p>
        <p>
            Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="typelist" runat="server" AutoPostBack="True" OnSelectedIndexChanged="typelist_SelectedIndexChanged">
            <asp:ListItem Selected="True" Value="admin">Admin</asp:ListItem>
            <asp:ListItem Value="onstage">On Stage</asp:ListItem>
            <asp:ListItem Value="regular">Regular</asp:ListItem>
            <asp:ListItem Value="organiser">Organiser</asp:ListItem>
        </asp:DropDownList>
        </p>
        <p id="paragraph1">
            Participate to :
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="NAME" DataValueField="ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;EVENTS&quot;"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Button ID="addbutton" runat="server" OnClick="Button1_Click" Text="Add user" BackColor="#006600" ForeColor="White" />
            &nbsp;
        </p>
        <h1 style="background-color: #44009F; font-family: Calibri; font-size: x-large; color: #FFAE35;">
            Delete user
        </h1>
        <p>
            Mail:&nbsp;<asp:TextBox ID="mailbox0" runat="server"></asp:TextBox>
        </p>
        <p>
            Pw:&nbsp;&nbsp; <asp:TextBox ID="pwbox0" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Button ID="delbutton" runat="server" OnClick="delbutton_Click" Text="Delete user" BackColor="#CC3300" ForeColor="White" />
        </p>
        <p>
            &nbsp;
        </p>
    </div>
</asp:Content>
