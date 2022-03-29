<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="IT_AV2.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-xs-12 text-center">
            <%--<asp:Image ID="Image1" runat="server" ImageUrl="~/download.jpg" />--%>
            <asp:ImageButton ID="SlikaB" runat="server" ImageUrl="~/download.jpg" OnClick="SlikaB_Click" />
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 text-center">
            <asp:Label ID="Koordinati" runat="server" Text="(none)"></asp:Label>
        </div>
    </div>

</asp:Content>
