using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class CheckBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CheckBox5.Focus();
            CheckBox4.Checked = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            StringBuilder sbUserChoice = new StringBuilder();
            if (CheckBox4.Checked)
            {
                sbUserChoice.Append(CheckBox4.Text);
            }
            if (CheckBox5.Checked)
            {
                sbUserChoice.Append(" "+ CheckBox5.Text);
            }
            if (CheckBox6.Checked)
            {
                sbUserChoice.Append(" "+ CheckBox6.Text);
            }
            Response.Write(" Your selection "+sbUserChoice.ToString());

        }
    }
}