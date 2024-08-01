using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;

namespace Real_Estate
{
    public partial class favourite : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String uname;
        String pname;
        String ptype;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["log"] as string == "true")
            {
                get_pro(Request.QueryString["id"]);
            }
            else
            {
                Response.Write("login.aspx");
            }
                
        }
        public void add(string pid,string pname,string type) {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into fav(pid,uname,pname,type)values(@pid,@uname,@pname,@type)", con);

            cmd.Parameters.AddWithValue("@pid",pid);
            cmd.Parameters.AddWithValue("@uname", Session["username"] as string);
            cmd.Parameters.AddWithValue("@pname",pname);
            cmd.Parameters.AddWithValue("@type", type);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("home.aspx");
        }
        public void get_pro(string pid)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM property where prop_id = @prop_id", con);
            cmd.Parameters.AddWithValue("@prop_id", pid);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                //string p = reader.GetString(4);
                pname = reader.GetString(5);
                ptype = reader.GetString(6);
            }
            reader.Close();
            con.Close();
            add(pid, pname, ptype);

        }

    }
}