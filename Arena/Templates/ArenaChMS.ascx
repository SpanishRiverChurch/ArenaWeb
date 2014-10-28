<%@ control language="c#" inherits="ArenaWeb.Templates.ArenaChMS, Arena" %>

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

	function highlightSearchMenu(divNode, cssClass, tableCssClass, imgSrc){
	
		var colIMGs = divNode.getElementsByTagName('IMG');
		for(i = 0; i < colIMGs.length; i++)
		    if (colIMGs[i].name == 'menuImage')
			    colIMGs[i].src = imgSrc;
			
		var colTDs = divNode.getElementsByTagName('TD');
		for(i = 0; i < colTDs.length; i++)
			colTDs[i].className = cssClass;
                    
		var colTables = divNode.getElementsByTagName('TABLE');
		for(i = 0; i < colTables.length; i++)
			colTables[i].className = tableCssClass;
	}
			
-->
</script>

<table border="0" cellspacing="0" cellpadding="0" width="100%" style="background-image:url(images/top_repeat.jpg);background-repeat:repeat-x">
    <tr id="Header">
        <td align="left" style="width:210px"><a href="default.aspx" style="text-decoration: none"><img src="images/top_left.jpg" style="border: 0px;" /></a></td>
        <td align="left"><img src="images/top_left_center.jpg" style="border: 0px;" /></td>
        <td align="right"><a href="http://www.arenachms.com/" target="_blank" style="text-decoration: none"><img src="images/top_right.jpg" style="border: 0px;" /></a></td>
    </tr>
</table>
<table id="MainTable" style="width: 100%; height: 100%" cellpadding="0" cellspacing="0" border="0">
    <tr id="Body">
        <td id="LeftPane" width="208px" style="width: 208px; vertical-align: top; background-image: url(Include/ComponentArt/Images/group_bg.jpg);
            background-repeat: repeat-y; max-width: 208px;">
            <div style="width: 208px;">
                <div id="pnlHeading" runat="server" onclick="expandCollapseQuickSearch(this);" onmouseout="highlightSearchMenu(this, 'TopItem', 'TopTable', 'include/componentArt/Images/search_button.jpg');"
                    onmouseover="highlightSearchMenu(this, 'TopItemHover', 'TopTableHover', 'include/componentArt/Images/search_button_sel.jpg');">
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="TopTable">
                        <tr>
                            <td width="30px" class="TopItem">
                                <img border="0" name="menuImage" src="include/componentArt/Images/search_button.jpg"></td>
                            <td valign="middle" style="padding-left: 10px" class="TopItem">
                                Quick Search</td>
                        </tr>
                    </table>
                </div>
                <div class="Level2Group">
                    <div><img src="include/componentArt/Images/item_drop_shadow.jpg" border="0" /></div>
                </div>
                <asp:PlaceHolder runat="server" ID="LeftPane" />
            </div>
        </td>
        <td id="Content" runat="server" align="left" style="width: auto; height: 100%; vertical-align: top;">
            <table id="TitleArea" style="width: 100%; vertical-align: top;" cellpadding="0" cellspacing="0"
                border="0">
                <tr>
                    <td colspan="2" valign="top">
                        <table id="tblTitle" height="94px" width="100%" runat="server" cellspacing="0" cellpadding="0"
                            border="0">
                            <tr>
                                <td id="tdImage" runat="Server" style="background: url(images/title_bar_background.jpg) repeat-x"
                                    valign="top">
                                    <img id="imgPageIcon" runat="server" border="0" /></td>
                                <td width="100%" style="background: url(images/title_bar_background.jpg) repeat-x;
                                    padding-top: 5px; padding-left: 5px" valign="top">
                                    &nbsp;
                                    <div class="pageTitle" style="padding-top: 5px">
                                        <asp:Label ID="lblPageTitle" runat="server" /></div>
                                    <div class="pageDescription" style="padding-top: 0px">
                                        <asp:Label ID="lblPageDesc" runat="server" /></div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table id="BreadCrumbArea" style="width: 100%; vertical-align: top;" cellpadding="0"
                cellspacing="0" border="0">
                <tr>
                    <td colspan="2" valign="top">
                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                            <tr>
                                <td valign="top">
                                    <asp:PlaceHolder ID="phBreadCrumbs" runat="server" />
                                </td>
                                <td align="right" valign="top">
                                    <img id="imgHelp" runat="server" src="~/images/help_page.jpg" onclick="showHelpWindow();"
                                        border="0" alt="Help" />
                                    <img src="images/print_page.jpg" onclick="printMainContent();" border="0" style="cursor: pointer;" alt="Use this button to print the main content area of this page without the banner or the left navigation area included." />
                                    <img src="images/about.jpg" onclick="openAboutWindow();" style="cursor: pointer;" border="0" alt="Use this button to show the version of Arena and database information." />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table id="PageContent" cellpadding="0" cellspacing="0" border="0">
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
