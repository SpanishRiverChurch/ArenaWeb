<%@ control language="C#" autoeventwireup="true" inherits="ArenaWeb.Templates.ArenaThreeColumnsWideLeft, Arena" %>

<link href="CSS/ArenaMaster.css" rel="stylesheet" type="text/css" />

<div id="container">
	<div id="header" class="pad">
        <asp:PlaceHolder ID="phHeader" runat="server"></asp:PlaceHolder>
    </div>

	<div id="horizNav" class="pad">
        <asp:PlaceHolder ID="phHorizNav" runat="server"></asp:PlaceHolder>
    </div>

    <div id="mainWrapper">
        <div id="leftSidebarThreeWide" class="pad">
            <asp:PlaceHolder ID="phLeftSidebar" runat="server"></asp:PlaceHolder>
        </div>
      
        <div id="mainContentThree" class="pad">
            <asp:PlaceHolder ID="phMainContent" runat="server"></asp:PlaceHolder>
        </div>

        <div id="rightSidebarThree" class="pad">
            <asp:PlaceHolder ID="phRightSidebar" runat="server"></asp:PlaceHolder>
        </div>
    </div>

	<div id="footer" class="pad">
		<asp:PlaceHolder ID="phFooter" runat="server"></asp:PlaceHolder>
	</div>
</div>