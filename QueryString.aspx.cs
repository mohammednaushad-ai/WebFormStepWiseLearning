using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("QueryStringDisplay.aspx?id="+IDTextBox.Text+"&name="+Server.UrlEncode( NameTextBox.Text)+"&age="+AgeTextBox.Text);
        }
    }
}