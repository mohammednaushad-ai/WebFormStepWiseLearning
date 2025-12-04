using System;

namespace WebFormStepWiseLearning
{
    public partial class Count : System.Web.UI.Page
    {
        int count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                CountClick.Text = "0";
            }

        }

        protected void CountButton_Click(object sender, EventArgs e)
        {
            if (ViewState["count"] != null)
            {
                count = (int)ViewState["count"] + 1;
            }

            CountClick.Text = Convert.ToString(count);
            ViewState["count"] = count;

            // int count = Convert.ToInt32(CountClick.Text);
            //count++;
            //CountClick.Text = count.ToString();

        }
    }
}

