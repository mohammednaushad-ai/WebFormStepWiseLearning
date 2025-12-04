using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class CustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //int number = int.Parse(EvenTextBox.Text);
            int number = int.Parse(args.Value);
            if (number % 2 == 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid=false;
            }
        }
    }
}