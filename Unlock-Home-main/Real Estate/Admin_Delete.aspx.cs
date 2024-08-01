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
    public partial class Admin_Delete : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();



            string id = Request.QueryString["ID"];

         
                // use the id value
                Response.Write(id);
                SqlCommand cmd = new SqlCommand("Delete from property where prop_id = @id", con);
                cmd.Parameters.AddWithValue("@id", id);
                //SqlDataReader reader = cmd.ExecuteReader();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Delete_as_Admin.aspx");
            
            //else
            //{
            //    Response.Redirect("CarCompany.aspx");
            //    // handle the case where the id parameter is missing or empty
            //}


        }
    }
}