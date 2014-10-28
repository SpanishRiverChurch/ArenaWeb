<%@ control language="c#" inherits="ArenaWeb.Templates.SampleThree, Arena" %>

<table id="mainTable" cellspacing="0" cellpadding="0" align="center">
	<tr>
		<td id="header" colspan="3">
            <asp:PlaceHolder ID="HeaderCell" Runat="server"></asp:PlaceHolder>
        </td>
	</tr>
	<tr>
		<td colspan="3">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="3">
		    <table id="mainContent" border="0" cellspacing="0" cellpadding="0" align="center">
	            <tr>
	            	<td id="leftTopCell">&nbsp;</td>
	            	<td id="centerTopCell">&nbsp;</td>
	            	</tr>
	            <tr>
	            	<td id="nav">
                        <asp:PlaceHolder ID="NavCell" Runat="server"></asp:PlaceHolder>
                    </td>
	            	<td id="centerMiddleCell">
                        <table cellpadding="0" cellspacing="0" border="0" id="contentTable">
                            <tr>
                                <td id="mainCell">
		                            <asp:PlaceHolder ID="MainCell" Runat="server"></asp:PlaceHolder>
                                </td>
                                <td id="rightCell">
		                            <asp:PlaceHolder ID="RightCell" Runat="server"></asp:PlaceHolder>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td id="mainBottom">
                                    <asp:PlaceHolder ID="MainBottomCell" Runat="server"></asp:PlaceHolder>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
            	</tr>
	            <tr>
		            <td id="leftBottomCell">&nbsp;</td>
		            <td id="centerBottomCell">&nbsp;</td>
	               </tr>
	            <tr>
		            <td>&nbsp;</td>
		            <td id="footer">
                        <asp:PlaceHolder ID="FooterCell" Runat="server"></asp:PlaceHolder>
                    </td>
	               </tr>
	            <tr>
		            <td>&nbsp;</td>
		            <td id="arena">
                        <a href="http://www.arenachms.com/" target="_blank"><img src="Images/arena.png" border="0" alt="Arena ChMS" /></a><br />Powered by Arena, a Division of Shelby Systems, Inc.
                    </td>
	               </tr>
            </table>
		</td>
	</tr>
</table>
