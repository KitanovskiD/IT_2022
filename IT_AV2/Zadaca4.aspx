<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca4.aspx.cs" Inherits="IT_AV2.Zadaca4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
       <div class="row">
           <div class="col-md-3">
               <asp:TextBox ID="phone" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="RequiredFieldValidator1"
                   ControlToValidate="phone"
                   CssClass="text-danger"
                   runat="server" 
                   ErrorMessage="Полето за телефонски број е задолжително!"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator 
                   ID="RegularExpressionValidator1" 
                   ControlToValidate="phone"
                   CssClass="text-danger"
                   runat="server" 
                   ValidationExpression="\+389\s7[012345678]\/\d{3}-\d{3}"
                   ErrorMessage="Внесениот телефонски број е невалиден!"></asp:RegularExpressionValidator>
           </div>
       </div>

        <div class="row">
            <asp:Label ID="Label1" CssClass="text-sucess" runat="server" Text="Label"></asp:Label>
        </div>
      
       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Save" runat="server" Text="Зачувај" OnClick="Save_Click" />
       </div>
   </div>
</asp:Content>
