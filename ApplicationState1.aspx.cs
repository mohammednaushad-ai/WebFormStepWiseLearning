using System;

namespace WebFormStepWiseLearning
{
    public partial class ApplicationState1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Application["count"] == null)
                {
                    Application["count"] = 0;
                }
                CountClick.Text = Application["count"].ToString();

            }

        }

        protected void CountButton_Click(object sender, EventArgs e)
        {

            int count = (int)Application["count"] + 1;


            CountClick.Text = count.ToString();
            Application["count"] = count;


        }
    }
}