<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca3.aspx.cs" Inherits="IT_AV2.Zadaca3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin: 20px;">


        <div class="row">
            <asp:ValidationSummary ID="errors" runat="server" ShowMessageBox="False" />
       </div>

       <div class="row">
           <div class="col-md-3">
               Име на испит:<asp:TextBox ID="name" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
               <asp:RequiredFieldValidator 
                   ID="nameVal" 
                   runat="server" 
                   ControlToValidate="name"
                   ErrorMessage="Полето за име е задолжително!" Display="None"></asp:RequiredFieldValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               Оцнека:<asp:TextBox ID="grade" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                   ID="gradeVal" 
                   runat="server" 
                   ControlToValidate="grade"
                   ErrorMessage="Полето за оценка е задолжително!" Display="None"></asp:RequiredFieldValidator>
               <asp:RangeValidator 
                   ID="secondGradeVal" 
                   runat="server" 
                   ControlToValidate="grade"
                   ErrorMessage="Вредноста за оценка е невалидна!" 
                   Type="Integer"
                   MaximumValue="10" 
                   MinimumValue="5" Display="None"></asp:RangeValidator>
           </div>
       </div>

       <div class="row" style="margin-top: 10px;">
           <div class="col-md-3">
               Датум:<asp:TextBox ID="date" runat="server" style="width: 100%"></asp:TextBox>
           </div>
           <div class="col-md-9 text-left">
                <asp:RequiredFieldValidator 
                   ID="dateVal" 
                   runat="server" 
                   ControlToValidate="date"
                   ErrorMessage="Полето за датум е задолжително!" Display="None"></asp:RequiredFieldValidator>
               <asp:CompareValidator 
                   ID="secondDateVal" 
                   runat="server" 
                   ControlToValidate="date"
                   Type="Date"
                   ValueToCompare="2022-03-25"
                   ErrorMessage="Внесена е невалидна вредност за датум!" 
                   Operator="LessThanEqual" Display="None"></asp:CompareValidator>
           </div>
       </div>

       <div class="row" style="margin-left: 0px; margin-top: 10px;">
           <asp:Button ID="Submit" runat="server" Text="Зачувај!" OnClick="Submit_Click" />
       </div> 
        
        <div class="row" style="margin-left: 0px; margin-top: 10px;">
            <asp:Label ID="result" runat="server" Text=""></asp:Label>
       </div>


   </div>
</asp:Content>
