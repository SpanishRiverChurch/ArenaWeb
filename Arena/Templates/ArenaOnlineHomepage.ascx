<%@ control language="c#" inherits="ArenaWeb.Templates.ArenaOnlineHomepage, Arena" %>
<div class="mainBox">
	<a href="http://localhost/arena/default.aspx"><img src="<%=Request.ApplicationPath%>/images/header.jpg" width="750" height="65" border="0"></a>

	<div class="content" align="left">
		<table cellpadding="0" cellspacing="0" border="0" width="730px">
		<tr>
			<td colspan="2">
				<asp:PlaceHolder ID="ph1" Runat="server"></asp:PlaceHolder>
			</td>
		</tr>
		<tr>
			<td valign="top">
				<asp:PlaceHolder ID="ph2" Runat="server"></asp:PlaceHolder>
			</td>
			<td align="left" valign="top">
				<asp:PlaceHolder ID="ph3" Runat="server"></asp:PlaceHolder>
			</td>
		</tr>
		<tr>
			<td id="ContentPane" runat="server" valign="top">
				<asp:PlaceHolder ID="ph4" Runat="server"></asp:PlaceHolder>
			</td>
		</tr>
		<tr>
			<td colspan="2" id="footer" runat="server" valign="top">
				<asp:PlaceHolder ID="ph5" Runat="server"></asp:PlaceHolder>
			</td>
		</tr>
		<tr>
			<td id="BottomPane" runat="server" valign="bottom"></td>
		</tr>
		</table>
	</div>	


	<table id="tblTitle" runat="server" width="100%" cellspacing="0" cellpadding="0" border="0" >
		<tr id="trTitle" runat="server">
			<td valign="top">
				<asp:PlaceHolder ID="phBreadCrumbs" visible="false" Runat="server"></asp:PlaceHolder>
				<div class="pageTitle" style="padding-top:0px"><asp:Label id="lblPageTitle" visible="false" Runat="server"></asp:Label></div> 
			</td>
		</tr>
	</table>
<a id="aMailThisPage" runat="server" href="#"></a>
</div>