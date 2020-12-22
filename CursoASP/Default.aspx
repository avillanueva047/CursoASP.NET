<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CursoASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Hello World!</h2>
    <p>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </p>
    <p>
        <asp:Button ID="ButtonMsg" runat="server" Text="Button" />
    </p>
    <p>Welcome to Beginning ASP.NET 4.8 on <%: DateTime.Now.ToString() %></p>
</asp:Content>
