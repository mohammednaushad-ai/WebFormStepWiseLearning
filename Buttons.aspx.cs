using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class Buttons : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Button_command(object sender, CommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Submit":
                    Response.Write($"{e.CommandName} is clicked");
                    break;
                case "Link":
                    Response.Write($"{e.CommandName} is clicked");
                    break;
                case "Image":
                    Response.Write($"{e.CommandName} is clicked");
                    break;
                case "Show":
                    if(e.CommandArgument == "Top10")
                    {
                        Response.Write($"{e.CommandArgument} selected");
                    }
                    if(e.CommandArgument == "Bottom10")
                    {
                        Response.Write($"{e.CommandArgument} selected");
                    }
                    break;
            }
        }
    }
}