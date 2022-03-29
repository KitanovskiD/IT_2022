<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca2.aspx.cs" Inherits="IT_AV2.Zadaca2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">
       <div class="row">
           <div class="col-md-3">
               <asp:DropDownList ID="items" runat="server">
                   <asp:ListItem>(град)</asp:ListItem>
                   <asp:ListItem>Скопје</asp:ListItem>
                   <asp:ListItem>Велес</asp:ListItem>
                   <asp:ListItem>Охрид</asp:ListItem>
                   <asp:ListItem>Битола</asp:ListItem>
               </asp:DropDownList>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="itmesVal" 
                   runat="server" 
                   ControlToValidate="items"
                   InitialValue="(град)"
                   ErrorMessage="Немате селектирано вредност од листата!"></asp:RequiredFieldValidator>
           </div>
       </div>

       

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Submit" runat="server" Text="Зачувај" OnClick="Submit_Click" />
       </div>

          <div class="row" style="margin-left: 0px; margin-top: 10px;">
              <asp:Label ID="result" runat="server" Text=""></asp:Label>
       </div>
   </div>
</asp:Content>
