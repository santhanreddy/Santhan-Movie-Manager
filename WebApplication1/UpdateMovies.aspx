<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateMovies.aspx.cs" Inherits="WebApplication1.UpdateMovies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-xs-4 form-inline">
            <asp:Label runat="server">Enter movie title</asp:Label>
            <asp:TextBox CssClass="form-control" MaxLength="50" ID="title" runat="server"></asp:TextBox>            
        </div>
        <asp:Button CssClass="btn" Text="Search" OnClick="OnButton1_Click" runat="server" />
        <asp:GridView CssClass="table" ID="GridView1" runat="server"></asp:GridView>
        <h4>Enter fields below to update</h4>
        <div class="col-xs-10">
            <asp:Table runat="server" CssClass="table table-responsive table-bordered">
                <asp:TableRow>
                    <asp:TableCell>
            <asp:Label runat="server">Format</asp:Label>          
                    </asp:TableCell>
                    <asp:TableCell>
                        <div class="col-xs-5">
                            <asp:DropDownList CssClass="form-control" ID="format" runat="server">
                                <asp:ListItem Value="VHS" Text="VHS"></asp:ListItem>
                                <asp:ListItem Value="DVD" Text="DVD"></asp:ListItem>
                                <asp:ListItem Value="Streaming" Text="Streaming"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
            <asp:Label runat="server">Length In Mins</asp:Label>          
                    </asp:TableCell>
                    <asp:TableCell>
                        <div class="col-xs-4">
                            <asp:TextBox CssClass="form-control" ID="length" runat="server"></asp:TextBox>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
            <asp:Label runat="server">Release Year</asp:Label>            
                    </asp:TableCell>
                    <asp:TableCell>
                        <div class="col-xs-4">
                            <asp:TextBox CssClass="form-control" ID="releaseYear" runat="server"></asp:TextBox>
                        </div>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
            <asp:Label runat="server">Rating</asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="rating" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1" Text="1 "></asp:ListItem>
                            <asp:ListItem Value="2" Text="2 "></asp:ListItem>
                            <asp:ListItem Value="3" Text="3 "></asp:ListItem>
                            <asp:ListItem Value="4" Text="4 "></asp:ListItem>
                            <asp:ListItem Value="5" Text="5 "></asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                   <asp:Button runat="server" CssClass="btn btn-primary" Text="Update" OnClick="OnUpdateClick"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Label CssClass="alert-success" ID="message" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
