using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class HiddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            HiddenField1.Value=NameTextBox.Text;
            Response.Write(HiddenField1.Value);
            Response.Redirect("HiddenFieldDisplay.aspx");
        }
    }
}