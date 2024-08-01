using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace Real_Estate
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String val;
        int users = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] as string == "true")
            {
                Brokrage();
                usercount();
                //props();
                //property1();
                view();
                readView();
            }
            else
            {
                Response.Redirect("Admin_login.aspx");
            }
          
        }
        public void data()
        {

        }
        public void usercount()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM users", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                users++;
            }
            USERS1.Text = users.ToString();
            reader.Close();
            con.Close();
        }
        //public void property1()
        //{
        //    con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
        //    con.Open();
        //    int p = 0;
        //    SqlCommand cmd = new SqlCommand("SELECT * FROM property", con);
        //    SqlDataReader reader = cmd.ExecuteReader();
        //    while (reader.Read())
        //    {
        //        p++;
        //    }
        //    reader.Close();
        //    con.Close();
        //    CARS1.Text = p.ToString();


        //}
        public void Brokrage()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            //int Rev = 0;
            int a1;
            int a2 = 0;
            SqlCommand cmd = new SqlCommand("SELECT * FROM brokrages", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                a1 = Int32.Parse(reader.GetString(7));
                a2 += a1;

            }
            
            REVS.Text = a2.ToString();
            reader.Close();
            con.Close();
        }

        public void view()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            //int Rev = 0;
            int a1;
            int a2 = 0;
            SqlCommand cmd = new SqlCommand("SELECT * FROM views", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                a1 = Int32.Parse(reader.GetString(1));
                a2 += a1;

            }

            VISITOR.Text = a2.ToString();
            reader.Close();
            con.Close();
        }
        public void readView()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Visitor_Count", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String vis = reader.GetString(1);
                val += vis + ",";
            }
            DATA.Text = val;
            reader.Close();
        }
        public string[] visitors { get; set; }



    }
}