<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateMovies.aspx.cs" Inherits="WebApplication1.Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="col-xs-10">
            <asp:Table runat="server" CssClass="table table-responsive">
                <asp:TableRow>
                    <asp:TableCell>
            <asp:Label runat="server">Title</asp:Label>            
                    </asp:TableCell>
                    <asp:TableCell>
                        <div class="col-xs-10">
                            <asp:TextBox CssClass="form-control" MaxLength="50" ID="title" runat="server"></asp:TextBox>
                        </div>
                    </asp:TableCell>
                    <asp:TableCell >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="title" runat="server" ErrorMessage="Title is required"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>
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
                    <asp:TableCell>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="length" ErrorMessage="Length of movie is required"></asp:RequiredFieldValidator>
                        <asp:RangeValidator runat="server" ControlToValidate="length" MinimumValue="1" MaximumValue="500"></asp:RangeValidator>
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
                    <asp:TableCell>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="releaseYear" ErrorMessage="Release Year is required"></asp:RequiredFieldValidator>
                            <asp:RangeValidator runat="server" ControlToValidate="releaseYear" MinimumValue="1801" MaximumValue="2099" ErrorMessage="Year must be between 1800 and 2100"></asp:RangeValidator>
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

                    </asp:TableCell>
                    <asp:TableCell>
                   <asp:Button runat="server" CssClass="btn btn-primary" Text="Create"  OnClick="OnButton_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Label CssClass="alert-success" ID="message" runat="server"></asp:Label>
        </div>
    </div>

</asp:Content>
