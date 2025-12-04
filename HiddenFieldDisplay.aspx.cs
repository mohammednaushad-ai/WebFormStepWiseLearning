using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class HiddenFieldDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Name = Request["HiddenField1"];
            Response.Write($"Welcome to the website {Name}");
        }
    }
}