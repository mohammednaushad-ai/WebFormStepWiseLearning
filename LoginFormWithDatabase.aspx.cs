using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormStepWiseLearning
{
    public partial class LoginFormWithDatabase : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["MyLogin"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand("sp_UserLogin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user",UserTextBox.Text);
            cmd.Parameters.AddWithValue("@pass",PassTextBox.Text);
            con.Open();
            SqlDataReader dr =cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["user"] = UserTextBox.Text;
                Response.Redirect("WelcomePage.aspx");
            }
            else { Response.Write("login failed try again"); }
            con.Close();

        }
    }
}