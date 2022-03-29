<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="IT_AV2.Katalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-xs-offset-4 col-xs-8">
        <asp:LinkButton ID="sl" runat="server" OnClick="sl_Click">Стручна Литература</asp:LinkButton>
        <br />
        <asp:LinkButton ID="be" runat="server" OnClick="be_Click">Белетристика</asp:LinkButton>
        <br />
        <asp:LinkButton ID="mg" runat="server" OnClick="mg_Click">Магазини</asp:LinkButton>
    </div>
</asp:Content>
