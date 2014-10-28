<%@ control language="c#" inherits="ArenaWeb.Templates.ArenaPlain, Arena" %>
<div class="PagePanel">

	<table cellpadding="0" cellspacing="0" border="0" width="100%">
	<tr id="trTitle" runat="server">
		<td colspan="3" valign="top" height="80px">
			<table id="tblTitle" runat="server" width="100%" cellspacing="0" cellpadding="0" border="0" >
	        <tr>
				<td id="tdImage" runat="Server" height="94"  style="BACKGROUND: url(images/title_bar_background.jpg) repeat-x" valign="top"><img id="imgPageIcon" runat="server" border="0"></td>
				<td height="94" width="100%" style="BACKGROUND: url(images/title_bar_background.jpg) repeat-x;padding-top:25px;padding-left:5px" valign="top">
					<div class="pageTitle" style="padding-top:5px"><asp:Label id="lblPageTitle" Runat="server"></asp:Label></div> 
					<div class="pageDescription" style="padding-top:0px"><asp:Label id="lblPageDesc" Runat="server"></asp:Label></div> 
				</td>
	        </tr>
			</table>
		</td>
	</tr>
	</table>

    <asp:Panel ID="ContentPanel" Runat="server" Visible="False" style="padding:10px"></asp:Panel>
    
</div>
