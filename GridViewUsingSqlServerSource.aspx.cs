using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class GridViewUsingSqlServerSource : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["name"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("InsertNameTextBox")).Text;
            SqlDataSource2.InsertParameters["gender"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList1")).SelectedValue;
            SqlDataSource2.InsertParameters["class"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("InsertClassTextBox")).Text;
            int a = SqlDataSource2.Insert();
            if (a > 0)
            {
                Response.Write("New data added successfully");
            }
            else
            {
                Response.Write("Insertion failed");
            }
        }
    }
}