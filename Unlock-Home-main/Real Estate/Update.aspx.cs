using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class Update : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GETdata(object sender, EventArgs e)
        {
            getProperty(Request.QueryString["ID"]);

        }

        protected void update(object sender, EventArgs e)
        {
            UpdateProp();

        }
        public void getProperty(string id)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM property where prop_id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                Owner.Text = reader.GetString(3);
                contact.Text = reader.GetString(2);
                price.Text = reader.GetString(8);
                r_year.Text = reader.GetString(6);
                ac.Text = reader.GetString(17);
                cctv.Text = reader.GetString(27);
                security.Text = reader.GetString(28);
                school.Text = reader.GetString(31);
                hospital.Text = reader.GetString(32);
                metro.Text = reader.GetString(33);
                univercity.Text = reader.GetString(34);
                Gym_distance.Text = reader.GetString(35);
                market.Text = reader.GetString(36);
                city_mall.Text = reader.GetString(37);


            }

        }
        public void UpdateProp()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            String id = Request.QueryString["ID"];
            string query = "UPDATE property SET prop_owner = @prop_owner, contact = @contact, price = @Price, r_year = @r_year, ac = @ac, cctv = @cctv, security = @security, school = @school, hospital = @hospital, bustop = @metro, univercity = @univercity, gym_near = @gym_near, market = @market, mall = @mall WHERE prop_id = @prop_id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@prop_owner", Owner.Text);
            cmd.Parameters.AddWithValue("@contact", contact.Text);
            cmd.Parameters.AddWithValue("@Price", price.Text);
            cmd.Parameters.AddWithValue("@r_year", r_year.Text);
            cmd.Parameters.AddWithValue("@ac", ac.Text);
            cmd.Parameters.AddWithValue("@cctv", cctv.Text);
            cmd.Parameters.AddWithValue("@security", security.Text);
            cmd.Parameters.AddWithValue("@school", school.Text);
            cmd.Parameters.AddWithValue("@hospital", hospital.Text);
            cmd.Parameters.AddWithValue("@metro", metro.Text);
            cmd.Parameters.AddWithValue("@univercity", univercity.Text);
            cmd.Parameters.AddWithValue("@gym_near", Gym_distance.Text);
            cmd.Parameters.AddWithValue("@market", market.Text);
            cmd.Parameters.AddWithValue("@mall", city_mall.Text);
            cmd.Parameters.AddWithValue("@prop_id", id);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Home.aspx");
        }

    }
}