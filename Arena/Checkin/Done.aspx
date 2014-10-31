<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Done, CheckIn" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">

    <script language="javascript">    
    function load(printReports, redirectUrl, confirmDelayms) 
    {
        if (printReports)
        {
            showWaitDialog("Printing... Please Wait...");

			// Send print job to winforms wrapper
			<%= addPrintJobScript %>
			window.external.PrintQueue();
        }
        else
        {
            showConfirm(redirectUrl, confirmDelayms);
        }
    }
    
    function done()
    {
		showConfirm('Welcome.aspx', 2000);
    }
    
    function showMessage(message)
    {
		window.alert(message);
    }
    
    function showConfirm(redirectUrl, confirmDelayms)
    {
        document.getElementById("Done_Confirm_Message_Container").style.visibility = 'visible';
        setTimeout(function(){location.href = redirectUrl;}, confirmDelayms);
    }
    </script>

    <div class="Title_Container" id="Done_Title_Container">
        <asp:Label ID="lblTitle" runat="server" CssClass="TitleText"></asp:Label>
    </div>
        
    <div class="Instructions_Container" id="Done_Instructions_Container">
        <asp:Label ID="lblInstructions" runat="server" CssClass="InstructionText"></asp:Label>
    </div>
    
    <div id="Done_Confirm_Message_Container" style="visibility:hidden">
        <asp:Label ID="lblConfirmMessage" runat="server" CssClass="ConfirmText"></asp:Label>
    </div>

</asp:Content>



