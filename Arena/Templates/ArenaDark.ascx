<%@ control language="C#" autoeventwireup="true" inherits="ArenaDark, Arena" %>
<link type="text/css" rel="stylesheet" href="css/ArenaDark.css" />
<div id="container">
<div id="logo">
	<a href="#" alt="Arena ChMS Homepage" title="Arena ChMS Homepage"><img src="images/arena-header.png" alt="Arena ChMS Homepage" title="Arena ChMS Homepage" /></a>
</div>
	<div id="header">
		<div id="menu">
			<asp:PlaceHolder ID="NavCell" Runat="server"></asp:PlaceHolder>
		</div>
	</div>
	<div id="content">
		<div id="inner">
			<asp:PlaceHolder ID="MainCell" Runat="server"></asp:PlaceHolder>
		</div>
	</div>
	<div id="footer">
		<asp:PlaceHolder ID="FooterCell" Runat="server"></asp:PlaceHolder>
	</div>
</div>