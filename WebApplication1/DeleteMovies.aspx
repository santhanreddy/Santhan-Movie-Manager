<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteMovies.aspx.cs" Inherits="WebApplication1.DeleteMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-xs-4 form-inline">
            <asp:Label runat="server">Enter movie title</asp:Label>
            <asp:TextBox CssClass="form-control" MaxLength="50" ID="title" runat="server"></asp:TextBox>
        </div>
        <asp:Button CssClass="btn" Text="Search" OnClick="OnButton1_Click" runat="server" />
        <asp:GridView CssClass="table" ID="GridView1" runat="server"></asp:GridView>
        <h4>Enter the movie id below to delete</h4>
        <div class="col-xs-4 form-inline">
            <asp:TextBox runat="server" CssClass="form-control" ID="movieID"></asp:TextBox>
        </div>
        <asp:Button runat="server" CssClass="btn btn-primary" Text="Delete" OnClick="OnDeleteClick" />

        <asp:Label CssClass="alert-success" ID="message" runat="server"></asp:Label>
    </div>

</asp:Content>
