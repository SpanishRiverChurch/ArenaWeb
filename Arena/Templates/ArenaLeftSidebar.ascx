<%@ control language="C#" autoeventwireup="true" inherits="ArenaWeb.Templates.ArenaLeftSidebar, Arena" %>
<link href="CSS/ArenaMaster.css" rel="stylesheet" type="text/css" />

<div id="container">
	<div id="header" class="pad">
        <asp:PlaceHolder ID="phHeader" runat="server"></asp:PlaceHolder>
    </div>

	<div id="horizNav" class="pad">
        <asp:PlaceHolder ID="phHorizNav" runat="server"></asp:PlaceHolder>
    </div>

    <div id="mainWrapper">
        <div id="leftSidebar" class="pad">
            <asp:PlaceHolder ID="phLeftSidebar" runat="server"></asp:PlaceHolder>
        </div>
      
        <div id="mainContent" class="pad">
            <asp:PlaceHolder ID="phMainContent" runat="server"></asp:PlaceHolder>
        </div>
      
        <div style="clear:both"></div>
    </div>

	<div id="footer" class="pad">
		<asp:PlaceHolder ID="phFooter" runat="server"></asp:PlaceHolder>
	</div>
</div>