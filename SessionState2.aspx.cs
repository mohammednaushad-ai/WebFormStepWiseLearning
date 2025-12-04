using System;

namespace WebFormStepWiseLearning
{
    public partial class SessionState2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["count"] == null)
                {
                    Session["count"] = 0;
                }
                CountClick.Text = Session["count"].ToString();

            }

        }

        protected void CountButton_Click(object sender, EventArgs e)
        {

            int count = (int)Session["count"] + 1;


            CountClick.Text = count.ToString();
            Session["count"] = count;


        }
    }
}