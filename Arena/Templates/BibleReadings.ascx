<%@ control language="c#" inherits="ArenaWeb.Templates.BibleReadings, Arena" %>

<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
	background-position:50% top;
	margin:20px 0px 20px 0px;
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	line-height: 1.5em;
	text-align: center;
}
.date {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 9px;
	color: #FFFFFF;
}
.smallText {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #333333;
	text-decoration: none;
}
.smallText:Hover {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #333333;
	text-decoration: underline;
}
.blueText {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #365987;
	font-size: 10px;
	text-decoration: none;
}
.blueText:Hover {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	color: #365987;
	font-size: 10px;
	text-decoration: underline;
}
.normalText {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	line-height: 16px;
}

.heading1 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: normal;
	color: #666666;
	line-height: 22px;
}
.newsletterBullets {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	color: #8C8C8C;
	letter-spacing: 2px;
}
.criticalItemList
{
	list-style-type: disc;
	margin-top: 0px;
  	padding: 0;
}

.criticalItemTitle
{
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #333333;
	padding: 0px;
}
.NewsletterPromotionTitle
{
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: 18px;
	font-weight: normal;
	color: #666666;
	line-height: 22px;
}
.NewsletterPromotionSummary
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	line-height: 16px;
}
.NewsletterPromotionLink
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
	color: #333333;
	line-height: 16px;
	margin-bottom: 20px;
}
-->
</style>

<table border="0" align="center" width="573" background="#FFFFFF" cellpadding="0" cellspacing="0">
<tr>
	<td bgcolor="#ffffff" width="12">&nbsp;
	</td>
	<td>
		<asp:PlaceHolder ID="ph1" Runat="server"></asp:PlaceHolder>
	</td>
</tr>
<tr>
<td>&nbsp;
</td>
<td><!--##unsubscribe##--></td>
</tr>
</table>



<asp:PlaceHolder ID="ph2" Runat="server"></asp:PlaceHolder>
<asp:PlaceHolder ID="ph3" Runat="server"></asp:PlaceHolder>
<asp:PlaceHolder ID="ph4" Runat="server"></asp:PlaceHolder>	
<asp:PlaceHolder ID="ph5" Runat="server"></asp:PlaceHolder>
					
					


