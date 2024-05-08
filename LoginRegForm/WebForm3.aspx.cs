using System;
using System.Web.UI;

namespace LoginRegForm
{
    public partial class Welcome : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    string username = Session["Username"].ToString();
                    lblWelcomeMessage.Text = $"Welcome, {username}!";
                }
                else
                {
                    Response.Redirect("WebForm2.aspx");
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Response.Redirect("WebForm2.aspx");
        }
    }
}
