<%@ control language="c#" inherits="ArenaWeb.Templates.MobileArenaChMS, Arena" %>

<asp:Label ID="lbBC" runat="server" CssClass="breadcrumbs"></asp:Label>
<div data-role="page" data-theme="c">
<asp:PlaceHolder ID="main" runat="server" />
<asp:PlaceHolder ID="footer" runat="server"></asp:PlaceHolder>
</div>