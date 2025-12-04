using System;

namespace WebFormStepWiseLearning
{
    public partial class ServerControlEvent : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write(" Page initialisation event " + "<br />");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(" Page load event " + "<br />");

        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            Response.Write(" Page loadComplete  event " + "<br />");

        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write(" Page REnder  event " + "<br />");

        }
        protected void Page_unLoad(object sender, EventArgs e)
        {
            // cannot write the code 
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write(" Chache event triggered" + "<br />");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(" Button is clicked Postback event" + "<br />");
        }
    }
}