using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class CookiesDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie= Request.Cookies["user"];
            if (cookie != null)
            {
                IDLabel.Text = cookie["Id"];
                NameLabel.Text = cookie["Name"];
                AgeLabel.Text = cookie["Age"];
            }
        }
    }
}