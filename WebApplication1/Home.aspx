<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">

        <h2>Santhan Movie Manager</h2>
        <p class="col-md-6 text-justify ">
            Santhan Movie Manager is one of the most popular movie management websites available today. 
                         Giving you a beautiful, dynamic, up-to-the-minute website without lifting a finger. 
                         So you can get on with running your cinema not your website.
        </p>
        <asp:Image runat="server" ImageUrl="~/Images/Home.jpg" />
        <asp:Table runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <h3>
                        How Movie Manager helps your cinema
                    </h3>
                    <p class="col-md-6 text-justify">
                        Save time by having your website and email newsletters automatically synchronized with your ticketing software and our extensive movie database. You’re still in complete control and can edit any page on your site, all in one simple package.
                    </p>
                </asp:TableCell>
                <asp:TableCell>
                    <h3>
                        How Movie Manager helps your customers
                    </h3>
                    <p class="col-md-6 text-justify">
                        Your site becomes a live hub of movie information with film data and branded trailers automatically added to your site. Engage your moviegoers with a beautiful site that combines social media, online competitions and movie commenting.
                    </p>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

</asp:Content>
