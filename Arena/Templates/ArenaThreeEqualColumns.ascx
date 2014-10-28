<%@ control language="C#" autoeventwireup="true" inherits="ArenaWeb.Templates.ArenaThreeEqualColumns, Arena" %>

<link href="CSS/ArenaMaster.css" rel="stylesheet" type="text/css" />

<div id="container">
	<div id="header" class="pad">
        <asp:PlaceHolder ID="phHeader" runat="server"></asp:PlaceHolder>
    </div>

	<div id="horizNav" class="pad">
        <asp:PlaceHolder ID="phHorizNav" runat="server"></asp:PlaceHolder>
    </div>

    <div id="mainWrapper">
        <div id="leftEqualCol" class="pad">
            <asp:PlaceHolder ID="phLeftEqualCol" runat="server"></asp:PlaceHolder>
        </div>
      
        <div id="centerEqualCol" class="pad">
            <asp:PlaceHolder ID="phCenterEqualCol" runat="server"></asp:PlaceHolder>
        </div>

        <div id="rightEqualCol" class="pad">
            <asp:PlaceHolder ID="phRightEqualCol" runat="server"></asp:PlaceHolder>
        </div>
    </div>

	<div id="footer" class="pad">
		<asp:PlaceHolder ID="phFooter" runat="server"></asp:PlaceHolder>
	</div>
</div>