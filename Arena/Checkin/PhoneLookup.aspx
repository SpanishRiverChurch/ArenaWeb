<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="PhoneLookup, CheckIn" title="Untitled Page" %>
<%@ Register Src="UserControls/PhoneLookup.ascx" TagName="PhoneLookup" TagPrefix="uc1" %>
<%@ Register TagPrefix="anthem" Namespace="Anthem" Assembly="Anthem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">
     
    <div class="Title_Container" id="Phone_Title_Container">
        <asp:Label ID="lblTitle" runat="server" CssClass="TitleText"><p>Phone Lookup...</p></asp:Label>
    </div>
    
    <div class="Instructions_Container" id="Phone_Instructions_Container">
        <asp:Label ID="lblInstructions" runat="server" CssClass="InstructionText"><p>Please enter at least the last 4 digits of your home phone number, then click "Search".</p></asp:Label>
    </div>
    
    <div class="Content_Container" id="Phone_Content_Container">
		<uc1:PhoneLookup ID="phoneLookup" runat="server" />
    </div>
    
</asp:Content>

