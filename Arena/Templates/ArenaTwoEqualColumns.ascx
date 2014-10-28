<%@ control language="C#" autoeventwireup="true" inherits="ArenaWeb.Templates.ArenaTwoEqualColumns, Arena" %>
<link href="CSS/ArenaMaster.css" rel="stylesheet" type="text/css" />

<div id="container">
	<div id="header" class="pad">
        <asp:PlaceHolder ID="phHeader" runat="server"></asp:PlaceHolder>
    </div>
	<div id="horizNav" class="pad">
        <asp:PlaceHolder ID="phHorizNav" runat="server"></asp:PlaceHolder>
    </div>
    <div id="mainWrapper">
        <div id="twinLeft" class="pad">
            <asp:PlaceHolder ID="phTwinLeft" runat="server"></asp:PlaceHolder>
        </div>
      
        <div id="twinRight" class="pad">
            <asp:PlaceHolder ID="phTwinRight" runat="server"></asp:PlaceHolder>
        </div>
    </div>
	<div id="footer" class="pad">
		<asp:PlaceHolder ID="phFooter" runat="server"></asp:PlaceHolder>
	</div>
</div>