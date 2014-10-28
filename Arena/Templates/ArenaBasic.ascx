<%@ control language="c#" inherits="ArenaWeb.Templates.ArenaBasic, Arena" %>

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
	function closeModuleSettings(saved) {
	    $find('mdlModuleSettings').hide();
	    if (saved && confirm('Do you want to refresh the cache now?')) {
	        var rr = document.location.href;
	        if (rr.indexOf("refreshcache=") > 0) {
	            window.location = rr;
	        }
	        else if (rr.indexOf("?") > 0) {
	            window.location = rr + "&refreshcache=true";
	        }
	        else {
	            window.location = rr + "?refreshcache=true";
	        }
	    }
    }
-->
</script>
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="banner">
<tr>
    <!--<td style="padding: 0 0 15px 15px; vertical-align: bottom;"><a href="default.aspx" style="text-decoration: none"><img src="images/arenaBasicLogo.png" style="border: 0px;" alt="Arena Home" /></a></td> -->
    <td style="padding: 0 0 5px 15px; vertical-align: bottom;"><a href="default.aspx" style="text-decoration: none"><asp:Image ID="imgLogo" runat="server" style="border: 0px;padding-top: 10px; height: 52px;" alt="Arena Home" /></a></td>
    <td align="right" valign="top" nowrap="nowrap">
        <asp:PlaceHolder ID="phLoginLogout" runat="server"></asp:PlaceHolder>
        <img id="imgHelp" runat="server" src="~/images/help.png" onclick="showHelpWindow();" border="0" alt="Help" />
        <img src="images/printer.png" onclick="printMainContent();" border="0" alt="Print" />
        <img src="images/about.png" onclick="openAboutWindow();" border="0" alt="About" />
        <asp:Literal ID="lcEditSettings" runat="server"></asp:Literal>
    </td>
</tr>
</table>
<table class="pageBanner" cellpadding="0" cellspacing="0">
<tr>
    <td style="width: 208px; padding-left: 6px;" class="formLabel" valign="top">
        <asp:PlaceHolder ID="SearchPane" runat="server"></asp:PlaceHolder>
    </td>
    <td valign="top">
        <table width="100%" style="height: 66px;" cellspacing="0" cellpadding="0" border="0">
            <tr class="pageTitle">
                <td valign="top" style="height: 10px;">
                    <asp:PlaceHolder ID="phBreadCrumbs" runat="server" />
                </td>
            </tr>
            <tr class="pageTitle">
                <td width="100%" style="padding-left: 5px;" valign="top">
                   <asp:Label ID="lblPageTitle" runat="server" />
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
<table style="width: 100%; height: 100%; margin-top: 4px;" cellpadding="0" cellspacing="0" border="0">
    <tr>
        <td width="208px" style="width: 208px; vertical-align: top; max-width: 208px;">
            <div style="width: 208px;">
                <asp:PlaceHolder runat="server" ID="LeftPane" />
            </div>
        </td>
        <td id="Content" runat="server" align="left" style="width: auto; padding: 0 0 0 10px; vertical-align: top;">
            <table id="PageContent" cellpadding="0" cellspacing="0" border="0">
            <tr class="pageDescription">
                <td width="100%" colspan="2">
                    <asp:Label ID="lblPageDesc" runat="server" />
                </td>
            </tr>
            <tr id="printContent" runat="server">
                <td valign="top" id="MainContent" runat="server" class="MainContent">
                    <asp:PlaceHolder runat="server" ID="MainPane" />
                </td>
                <td valign="top" id="RightContent" runat="server" class="RightContent">
                    <asp:PlaceHolder runat="server" ID="RightPane" />
                </td>
            </tr>
            <tr>
                <td colspan="2" id="FooterContent" runat="server" class="FooterContent">
                    <asp:PlaceHolder runat="server" ID="BottomPane" />
                </td>
            </tr>
            </table>
        </td>
    </tr>
</table>
<Arena:ModalPopupIFrame ID="mdlModuleSettings" runat="server" BehaviorID="mdlModuleSettings" 
    Title="Module Settings" Url="ModuleSettings.aspx?page=#page#"
    JSFunctionName="openModuleSettings(page)" Width="580" Height="480" />