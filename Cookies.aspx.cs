using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            HttpCookie Cookie = new HttpCookie("user");

            Cookie["Name"] = NameTextBox.Text;
            Cookie["Id"] = IDTextBox.Text;
            Cookie["Age"] = AgeTextBox.Text;

            Cookie.Expires = DateTime.Now.AddDays(3);
            Response.Cookies.Add(Cookie);

            Response.Redirect("CookiesDisplay.aspx");
        }
    }
}