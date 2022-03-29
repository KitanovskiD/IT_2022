<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT_AV2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row text-center mt-5">
        <div class="col-md-4 text-center">
            <asp:ListBox ID="CityList" runat="server" SelectionMode="Multiple">
                <asp:ListItem Value="0">Скопје</asp:ListItem>
                <asp:ListItem Value="200">Охрид</asp:ListItem>
                <asp:ListItem Value="60">Велес</asp:ListItem>
                <asp:ListItem Value="210">Битола</asp:ListItem>
            </asp:ListBox>
        </div>
    </div>

    <div class="row text-center">
        <asp:Button ID="Submit" runat="server" Text="Зачувај" OnClick="Submit_Click" />
    </div>
    <hr />
    <div class="row text-center">
        Селектираниот град е: <asp:Label ID="SelectedCity" runat="server" Text="(нема селектирано град)"></asp:Label>
    </div>

  <%--    <hr />
    <div class="row text-center">
        Растојанието од селектираниот град до Скопје е: <asp:Label runat="server" Text="(нема селектирано град)" ID="distance"></asp:Label>
    </div>--%>


</asp:Content>
