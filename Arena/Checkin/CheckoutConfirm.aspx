<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="CheckoutConfirm, CheckIn" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">

     <div class="Title_Container" id="CheckoutConfirm_Title_Container">
        <asp:Label ID="lblTitle" runat="server" CssClass="TitleText"></asp:Label>
    </div>
        
    <div class="Instructions_Container" id="CheckoutConfirm_Instructions_Container">
        <asp:Label ID="lblInstructions" runat="server" CssClass="InstructionText"></asp:Label>
    </div>
    
    <div id="CheckoutConfirm_Confirm_Message_Container">
        <asp:Label ID="lblConfirmMessage" runat="server" CssClass="ConfirmText"></asp:Label>
    </div>

</asp:Content>

