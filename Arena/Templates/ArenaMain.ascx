<%@ control language="c#" inherits="ArenaWeb.Templates.ArenaMain, Arena" %>
<script language='javascript'>
<!--

	function setLayer(showFlag, innnerHtml)
	{
		if(document.divPopup)   
		{
			if (showFlag) 
			{
				document.divPopup.style.visibility='visible';
				document.divPopup.innerHTML = innerHtml;
			}
			else 
			{
				document.divPopup.style.visibility='hidden'; 
			}
		}
		else
		{
			if(document.getElementById("divPopup"))
			{
				if (showFlag)
				{
					document.getElementById("divPopup").style.visibility = 'visible';
					document.getElementById("divPopup").innerHTML = innerHtml;
				}
				else
				{
					document.getElementById("divPopup").style.visibility = 'hidden';
				}
			}
		}
	}

-->
</script>
	    
<table border="0" cellspacing="0" cellpadding="0" width="100%" height="100%">
<tr>
    <td width="210" height="100%" valign="top"><a href="default.aspx" style="text-decoration:none"><img src="images/top_left.jpg" 
		width="210" height="76" border="0"></a><table border="0" cellspacing="0" cellpadding="0" height="100%" width="100%">
        <tr>
			<td id="LeftPane" runat="server" background="images/left_side_background.jpg" valign="top"></td>
            <td background="images/left_side_background_border.jpg" width="7"><img src="images/blank.gif" width="7" height="1"></td>
        </tr>
        </table>
    </td>
	<td valign="top" width="*">
		<table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%">
		<tr>
			<td height="64" valign="top" colspan="3">
				<table border="0" cellspacing="0" cellpadding="0" width="100%">
					<tr>
						<td width="317"><img src="images/top_left_center.jpg" width="317" height="76"></td>
						<td background="images/top_repeat.jpg">&nbsp;</td>
						<td width="527"><img src="images/top_right.jpg" width="527" height="76"></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr id="trTitle" runat="server">
			<td colspan="3" valign="top" height="80px">
				<table id="tblTitle" runat="server" width="100%" cellspacing="0" cellpadding="0" border="0" >
				<tr>
					<td bgcolor="#EDEBEB" style="BACKGROUND: url(images/header_background_left.jpg) no-repeat right bottom" valign="top">
						<asp:PlaceHolder ID="phBreadCrumbs" Runat="server"></asp:PlaceHolder>
						<div class="pageTitle" style="padding-top:5px"><asp:Label id="lblPageTitle" Runat="server"></asp:Label></div> 
					</td>
					<td background="images/header_background_middle.jpg" align="right" height="80"><img id="imgPageIcon" runat="server" border="0"></td>
				</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="right" height="25px">
				<img id="imgHelp" runat="server" src="~/images/help_page.jpg" onclick="showHelpWindow();" border="0" style="cursor:pointer"
					alt="Help">&nbsp;
				<img src="images/print_page.jpg" onclick="printMainContent();" border="0" style="cursor:pointer"
					alt="Use this button to print the main content area of this page without the banner or the left navigation area included.">
			</td>
		</tr>
		<tr>
			<td id="ContentPane" runat="server" valign="top"></td>
			<td id="RightPane" runat="server" visible="false" valign="top"></td>
            <td width="7" rowspan="2"><img src="images/blank.gif" width="7" height="1"></td>
		</tr>
		<tr>
			<td id="BottomPane" runat="server" valign="bottom" colspan="2"></td>
		</tr>
		</table>
    </td>
</tr>
</table>
