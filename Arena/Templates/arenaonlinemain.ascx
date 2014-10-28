<%@ control language="c#" inherits="ArenaWeb.Templates.ArenaOnlineMain, Arena" %>
<link href="css/arena_online_print.css" rel="stylesheet" type="text/css" media="print"/>
<div class="mainBox">
	<a href="default.aspx"><img src="images/PageBannerInner2.jpg" width="750" height="85" border="0"></a>	
	<div class="pageHeader">
		<a href="default.aspx?page=2321">About</a>
		&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
		<a href="default.aspx?page=2320">Contact</a>
		<a id="aMailThisPage" runat="server" visible="false" href="#">E-mail This Page</a>
	</div>
	<table cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td><asp:Panel ID="MenuPane" runat="server"></asp:Panel><hr /></td>
    </tr>
    </table>
	<div class="content" align="left">	    
		<table cellpadding="0" cellspacing="0" border="0" width="100%">
		<tr id="trTitle" runat="server">
			<td valign="top">
				<table id="tblTitle" runat="server" width="100%" cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td valign="top">
						<asp:PlaceHolder ID="phBreadCrumbs" Runat="server"></asp:PlaceHolder>
						<div class="pageTitle" style="padding-top:0px"><asp:Label id="lblPageTitle" Runat="server"></asp:Label></div>
					</td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td id="ContentPane" runat="server" valign="top"></td>
		</tr>
		<tr><td width="100%"><hr /></td></tr>
		<tr>
			<td id="BottomPane" runat="server" valign="bottom"></td>
		</tr>
		</table>
	</div>	
</div>