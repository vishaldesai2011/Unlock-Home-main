using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class Plans : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["log"] as string == "true")
            {
                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
                con.Open();
                string uname = Session["username"] as string;
                string type = Session["user_type"] as string;

                Response.Write(uname+","+type);
                SqlCommand cmd = new SqlCommand("SELECT * FROM users where u_name = @u_name", con);
                cmd.Parameters.AddWithValue("@u_name", uname);


                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    String email = reader.GetString(0);
                    String fname = reader.GetString(1);
                    String lname = reader.GetString(2);
                    String mobile = reader.GetString(7);
                    Session["email"] = email;
                    Session["name"] = fname+ " " +lname;
                    Session["mobile"] = mobile;

                }
                con.Close();
            }
            else
            {
                Response.Redirect("login.aspx");
            }


        }
    }
}