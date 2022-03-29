<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca1.aspx.cs" Inherits="IT_AV2.Zadaca1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
       <div class="row">
           <div class="col-md-3">
               <asp:TextBox ID="email" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="emailVal" 
                   CssClass="text-danger"
                   ControlToValidate="email"
                   runat="server" 
                   ErrorMessage="Полето за емаил е задолжително!"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator 
                   ID="regEmailVal" 
                   ControlToValidate="email"
                   CssClass="text-danger"
                   runat="server" 
                   ErrorMessage="Внесена е невалидна вредност за емаил!" 
                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="password" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="passwordVal"
                   CssClass="text-danger"
                   ControlToValidate="password"
                   runat="server" 
                   ErrorMessage="Полето за лозинка е задолжително"></asp:RequiredFieldValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               <asp:TextBox ID="cpassword" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="reqCPasswordVal"
                   CssClass="text-danger"
                   ControlToValidate="cpassword"
                   runat="server" 
                   ErrorMessage="Полето за лозинка е задолжително"></asp:RequiredFieldValidator>
               <asp:CompareValidator 
                   ID="cpasswordVal"
                   ControlToValidate="cpassword"
                   CssClass="text-danger"
                   ControlToCompare="password"
                   runat="server" 
                   ErrorMessage="Лозинките не се совпаѓаат!"></asp:CompareValidator>
           </div>
       </div>

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Submit" runat="server" Text="Регистрирај се!" OnClick="Submit_Click" />
       </div>

         <div class="row" style="margin-left: 0px; margin-top: 10px;">
             <asp:Label ID="result" runat="server" Text="Label"></asp:Label>
        </div>
   </div>
</asp:Content>
