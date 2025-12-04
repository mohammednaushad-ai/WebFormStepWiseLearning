using System;

namespace WebFormStepWiseLearning
{
    public partial class FristWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write($"Number of application :{Application["TotalApplication"]}");
            Response.Write("<br/>");
            Response.Write($"Number of User Online :{Application["TotalUserSession"]}");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}