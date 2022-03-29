<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Converter.aspx.cs" Inherits="IT_AV2.Converter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />

    <div class="row">
        <div class="col-xs-6 text-right">Име на валута:</div>
        <div class="col-xs-6"><asp:TextBox ID="ValutaIme" runat="server"></asp:TextBox></div>
    </div>
    <br />
     <div class="row">
        <div class="col-xs-6 text-right">Вредност на валута:</div>
        <div class="col-xs-6"><asp:TextBox ID="ValutaVrednost" runat="server"></asp:TextBox></div>
    </div>
    <br />
    <div class="row">
        <div class="col-xs-6 text-right"></div>
        <div class="col-xs-6">
            <asp:Button ID="Add" runat="server" Text="Додади" OnClick="Add_Click" />
            <asp:Button ID="Delete" runat="server" Text="Избриши" OnClick="Delete_Click"/>
        </div>
    </div>

    <br />
    <hr />
    <br />

    
     <div class="row">
        <div class="col-xs-6 text-right">Валути:</div>
        <div class="col-xs-6">
            <asp:RadioButtonList ID="ListaValuti" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged"></asp:RadioButtonList>
        </div>
    </div>
    <br />

     <div class="row">
        <div class="col-xs-6 text-right">Број на валути:</div>
        <div class="col-xs-6">
            <asp:Label ID="BrojValuti" runat="server" Text="Нема активни ставки во листата"></asp:Label>
        </div>
    </div>

    <br />

    <div class="row">
        <div class="col-xs-6 text-right">
            <asp:TextBox ID="Kolicina" runat="server" Text="0"></asp:TextBox>
        </div>
        <div class="col-xs-6">
            Конвертирано: <asp:Label ID="Konvertirano" runat="server" Text="(none)"></asp:Label>
        </div>
    </div>


</asp:Content>
