using System;

namespace WebFormStepWiseLearning
{
    public partial class ApplicationState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write($"Number of application :{Application["TotalApplication"]}");
            Response.Write("<br/>");
            Response.Write($"Number of User Online :{Application["TotalUserSession"]}");

        }
    }
}