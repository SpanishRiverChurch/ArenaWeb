namespace ArenaWeb.Templates
{
	using System;
	using System.Text;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI;
	using System.IO;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using System.Configuration;
	using Arena.Portal;

	/// <summary>
	///		Summary description for ArenaMain.
	/// </summary>
	public partial class MobileArenaChMS : PortalControl
	{
		#region Content Areas
		public PlaceHolder Main { get { return main; } }
		public PlaceHolder Footer { get { return footer; } }
		#endregion

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if (CurrentPortalPage.BreadCrumbs.Count > 1)
			{
				this.CurrentPortalPage.BreadCrumbs.RenderAsList = true;
				lbBC.Text = CurrentPortalPage.BreadCrumbs.ToString();
			}
			else
			{
				lbBC.Visible = false;
			}
			BasePage.AddMetaTag(this.Page, "viewport", "width=device-width, initial-scale=1");
			BasePage.AddCssLink(this.Page, "https://cdn.shelbyinc.com/jquery.mobile-1.0rc2.min.css");
			BasePage.AddCssLink(this.Page, "css/arenamobile.css");
			BasePage.AddJavascriptScript(this.Page, "mobileInit", @"// Test23
		$(document).bind('mobileinit', function () {
            $.extend($.mobile, {
                ajaxEnabled: false
            });
        });");
			BasePage.AddJavascriptInclude(this.Page, "https://cdn.shelbyinc.com/jquery.mobile-1.0rc2.min.js");
			Page.ClientScript.RegisterClientScriptBlock(typeof(string), "mobileScript", @"
        $(document).ready(function () {
            var breadcrumbs = $('.breadcrumbs');
            if (breadcrumbs){
                breadcrumbs.hide();
            };
			$('h1').click(function () {
				$('.breadcrumbs').slideToggle(500);
			});
		});", true);
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
		}
		#endregion

	}
}
