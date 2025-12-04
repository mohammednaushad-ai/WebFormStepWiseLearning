using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class QueryStringDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                IDLabel.Text = Request.QueryString["id"];
                NameLabel.Text = Request.QueryString["name"];
                AgeLabel.Text = Request.QueryString["age"];


        }
    }
}