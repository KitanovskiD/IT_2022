<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca6.aspx.cs" Inherits="IT_AV2.Zadaca6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
       <div class="row">
           <div class="col-md-3">
               <asp:TextBox ID="TextBox1" runat="server" style="width: 100%" ValidationGroup="grupa1"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="RequiredFieldValidator1"
                   CssClass="text-danger"
                   ControlToValidate="TextBox1"
                   runat="server" 
                   ErrorMessage="Првото поле е задолжително" ValidationGroup="grupa1"></asp:RequiredFieldValidator>
           </div>
       </div>

        <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Button2" runat="server" Text="Зачувај" ValidationGroup="grupa1" />
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="TextBox2" runat="server" style="width: 100%" ValidationGroup="grupa2"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="RequiredFieldValidator2"
                   CssClass="text-danger"
                   ControlToValidate="TextBox2"
                   runat="server" 
                   ErrorMessage="Второто поле е задолжително" ValidationGroup="grupa2"></asp:RequiredFieldValidator>
           </div>
       </div>

     

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Button1" runat="server" Text="Зачувај" ValidationGroup="grupa2" />
       </div>
   </div>
</asp:Content>
