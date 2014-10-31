<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Welcome, CheckIn" title="Untitled Page" %>
<%@ Register Src="UserControls/KeyPressScanner.ascx" TagName="KeyPressScanner" TagPrefix="uc1" %>
<%@ Register Src="UserControls/PhoneLookup.ascx" TagName="PhoneLookup" TagPrefix="uc1" %>
<%@ Register TagPrefix="anthem" Namespace="Anthem" Assembly="Anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" Runat="Server">

    <script type="text/javascript">
    function showPhoneLookup()
    {
		document.location.href = 'PhoneLookup.aspx';
    }
    
    function statusUpdated()
    {
		document.getElementById("lblStatus").innerText = "Status checked " + new Date().toString();
    }
    </script>
       
	<asp:Panel runat="server" ID="pnlLocation" Visible="false">
            
		<div id="Welcome_Class_Name_Container">
			<asp:Label ID="lblEventName" runat="server" CssClass="StatusText"></asp:Label>
		</div>
        
		<div id="Welcome_Class_Location_Container">
			<asp:Label ID="lblEventLocation" runat="server" CssClass="StatusText"></asp:Label>
		</div>
        
		<div id="Welcome_Attendance_Count_Container">
			<asp:Label ID="lblAttendanceCount" runat="server" CssClass="StatusText"></asp:Label>
		</div>
    
	</asp:Panel>

	<div class="Content_Container" id="Welcome_Content_Container">    
		<uc1:PhoneLookup ID="phoneLookup" runat="server" />
    </div>
    
	<div class="Title_Container" id="Welcome_Title_Container">
		<asp:Label ID="lblTitle" runat="server" CssClass="TitleText"></asp:Label>
	</div>
    
	<div class="Instructions_Container" id="Welcome_Instructions_Container">
		<asp:Label ID="lblInstructions" runat="server" CssClass="InstructionText"></asp:Label>
	</div>
        
	<asp:Panel ID="pnlAvailable" runat="server">
    
		<div id="Welcome_ScanNowImage_Container">
			<asp:Image runat="server" id="imgScanNow" ImageUrl='<%# kiosk.Theme.MapImageUrl("scan_now.png") %>' />
		</div>
	    
		<div id="Welcome_PhoneLookupButton_Container">
			<input type="button" id="btnPhoneLookup" value="<%= phoneButtonText %>" class="PhoneLookupButton_Up" onmousedown="down(this); clickButtonSound();" onmouseup="up(this);" onmouseout="up(this);" onclick="showPhoneLookup();" />
		</div>
    
	</asp:Panel>
    
	<!--- Barcode Scanner input --->       
	<uc1:KeyPressScanner ID="scanner" runat="server" />	
	
	<!--- /Barcode Scanner input --->       
    
	<div id="Welcome_Status_Container">
		<span id="lblStatus"></span>
	</div>

    
</asp:Content>

