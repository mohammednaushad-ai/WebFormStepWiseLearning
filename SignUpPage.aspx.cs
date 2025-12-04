using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebFormStepWiseLearning
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["MyLogin"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "insert into Signup values(@fname,@lname,@gender,@email,@address,@username,@password) ";
            SqlCommand cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@fname",FirstNameTextBox.Text);
            cmd.Parameters.AddWithValue("@lname",LastNameTextBox.Text);
            cmd.Parameters.AddWithValue("@gender",DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@email",EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@address",AddressTextBox.Text);
            cmd.Parameters.AddWithValue("@username",UserNameTextBox.Text);
            cmd.Parameters.AddWithValue("@password",PasswordTextBox.Text);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write(" Registration  Successful !!!");

                ClearControls();
            }
            else
            {
                Response.Write("failed");
            }
            con.Close();
        }
        void ClearControls()
        {
            FirstNameTextBox.Text = LastNameTextBox.Text = EmailTextBox.Text = AddressTextBox.Text = PasswordTextBox.Text = UserNameTextBox.Text = "";
            DropDownList1.ClearSelection();
        }
    }
}