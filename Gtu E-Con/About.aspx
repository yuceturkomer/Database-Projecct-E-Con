<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Gtu_E_Con.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Mail:<asp:TextBox ID="mailbox" runat="server"></asp:TextBox>
    </p>
    <p>
        Pw:<asp:TextBox ID="pwbox" runat="server"></asp:TextBox>
    </p>
    <p>
        Realname:<asp:TextBox ID="namebox" runat="server"></asp:TextBox>
    </p>
    <p>
        Birthday:<asp:TextBox ID="bdbox" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="addbutton" runat="server" OnClick="Button1_Click" Text="Add user" />
        <asp:Button ID="delbutton" runat="server" OnClick="Button1_Click" Text="Delete user" />
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" OnPageIndexChanging="FormView1_PageIndexChanging" Width="208px">
            <EditItemTemplate>
                MAİL:
                <asp:TextBox ID="MAİLTextBox" runat="server" Text='<%# Bind("MAİL") %>' />
                <br />
                PW:
                <asp:TextBox ID="PWTextBox" runat="server" Text='<%# Bind("PW") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                MAİL:
                <asp:TextBox ID="MAİLTextBox" runat="server" Text='<%# Bind("MAİL") %>' />
                <br />
                PW:
                <asp:TextBox ID="PWTextBox" runat="server" Text='<%# Bind("PW") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                MAİL:
                <asp:Label ID="MAİLLabel" runat="server" Text='<%# Bind("MAİL") %>' />
                <br />
                PW:
                <asp:Label ID="PWLabel" runat="server" Text='<%# Bind("PW") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MUZ&quot;"></asp:SqlDataSource>
    </p>
</asp:Content>
