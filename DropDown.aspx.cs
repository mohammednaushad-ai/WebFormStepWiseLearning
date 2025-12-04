using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebFormStepWiseLearning
{
    public partial class DropDown : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["MyLogin"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem l0 = new ListItem("Select City", "-1");

                ListItem l1 = new ListItem("Mangaluru","1");
                ListItem l2 = new ListItem("bangaluru","2");
                ListItem l3 = new ListItem("Mumbai","3");
                ListItem l4 = new ListItem("Delhi","4");
                DropDownList1.Items.Add(l0);

                DropDownList1.Items.Add(l1);
                DropDownList1.Items.Add(l2);
                DropDownList1.Items.Add(l3);
                DropDownList1.Items.Add(l4);
                BindDropDownList();
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Please Select a city");
            }
            else
            {
                Response.Write($"Selected a city Text: {DropDownList1.SelectedItem.Text} <br/>");
                Response.Write($"Selected a city Value: {DropDownList1.SelectedValue} <br/>");
                Response.Write($"Selected a city Index :{DropDownList1.SelectedIndex} <br/>");

            }
        }

        void BindDropDownList()
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "Select * from Employee";
            SqlDataAdapter sda =new SqlDataAdapter(query, con);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "name";
            DropDownList2.DataValueField = "salary";
            DropDownList2.DataBind();

            ListItem SelectItem = new ListItem("Select Employee","-1");
            SelectItem.Selected = true;
            DropDownList2.Items.Add(SelectItem);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "-1")
            {
                Response.Write("please Select Employee name");
            }
            else
            {
                //Response.Write($"Selected Employee Name:{DropDownList2.SelectedItem.Text} <br/>");
                //Response.Write($"Selected Employee Salary:{DropDownList2.SelectedValue} <br/>");

                DisplayGridView();
            }
            void DisplayGridView()
            {
                SqlConnection con = new SqlConnection(cs);
                string query = "Select * from Employee where name =@name";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.SelectCommand.Parameters.AddWithValue("@name", DropDownList2.SelectedItem.Text);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                GridView1.DataSource = dt;

                GridView1.DataBind();
            }

                
            

        }
    }
}