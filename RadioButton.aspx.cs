using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class RadioButton : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton4.Checked)
            {
                Response.Write("10th Completed");
            }
            else if (RadioButton5.Checked)
            {
                Response.Write("puc  Completed");
            }
            else if (RadioButton6.Checked)
            {
                Response.Write("undergrated Completed");
            }
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            Response.Write("10th completed");
        }
    }
}