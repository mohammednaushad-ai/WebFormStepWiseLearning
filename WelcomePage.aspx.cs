using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Write("Welcome To Your page " + Session["user"].ToString());
            }
            else
            {
                Response.Redirect("LoginFormWithDatabase.aspx");
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Session["user"] = null;
                Response.Redirect("LoginFormWithDatabase.aspx");

            }
        }
        }
}