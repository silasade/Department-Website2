using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Department_Website
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            try
            {
                con.Open();
                string command = "INSERT INTO regi(matric,passwd) VALUES(@matric,@passwd)";
                SqlCommand cmd = new SqlCommand(command, con);

                cmd.Parameters.AddWithValue("@matric", txtmatric.Text);
                cmd.Parameters.AddWithValue("@passwd", txtpasswd.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("signin.aspx");
            }
            catch (Exception) 
            {

                throw;
            }
            finally{
                con.Close();
            }
        }
    }
}