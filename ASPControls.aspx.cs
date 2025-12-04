using System;

namespace WebFormStepWiseLearning
{
    public partial class ASPControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("button as been clicked <br/>");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write(" text box 1 as been clicked");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Response.Write(" text box 2 as been clicked <br/>");
        }
    }
}