using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class Home : System.Web.UI.Page
    {
        int len;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                CountProperty();
                //GetData();
                Session["Home"] = "home";
            }
            catch(Exception ex)
            {

                Response.Write("<script>alert(' Something went wrong please try again')</script>");
                Response.Redirect("login.aspx");
            }

        }

        public void CountProperty()
        {
            string connectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            string query = "SELECT COUNT(*) FROM property";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();

                len = (int)command.ExecuteScalar();
                Console.WriteLine("Number of rows: " + len);

                connection.Close();
            }

            GetData();


        }
        public string[] Name{ get; set; }
        public string[] Area{ get; set; }
        public string[] bedroom { get; set; }
        public string[] Bathroom { get; set; }
        public string[] Size { get; set; }
        public string[] floor { get; set; }
        public string[] Furnish { get; set; }
        public string[] price { get; set;}
        public string[] image { get; set;}

        public string[] type { get; set;}
        public string[] City { get; set; }
        public string[] PID { get; set; }




        public void GetData()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            Name = new string[len];
            Area = new string[len];
            bedroom = new string[len];
            Bathroom = new string[len];
            floor = new string[len];
            price = new string[len];
            image = new string[len];
            type = new string[len];
            Size= new string[len];
            Furnish = new string[len];
            City  = new string[len];
            PID = new string[len];

            SqlCommand cmd = new SqlCommand("SELECT * FROM property", con);
            SqlDataReader reader = cmd.ExecuteReader();
            int i = 0;
            byte[] bytes1;
            while (reader.Read())
            {
                String name1 = reader.GetString(5);
                String area1 = reader.GetString(0);
                String city1 = reader.GetString(9);
                String bedroom1 = reader.GetString(10);
                String bathroom1 = reader.GetString(13);
                String price1 = reader.GetString(8);
                String floor1 = reader.GetString(14);
                String type1 = reader.GetString(6);
                String size1 = reader.GetString(12);
                String furniture = reader.GetString(11);
                String id = reader.GetString(4);



                 //MyCompany.SetValue(Com_name, i);

                bytes1 = (byte[])reader["img1"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);

                Name.SetValue(name1, i);
                Area.SetValue(area1, i);
                bedroom.SetValue(bedroom1, i);
                Bathroom.SetValue(bathroom1, i);
                floor.SetValue(floor1, i);
                price.SetValue(price1, i);
                City.SetValue(city1, i);
                type.SetValue(type1, i);
                Size.SetValue(size1, i);
                Furnish.SetValue(furniture, i);
                PID.SetValue(id, i);
                
                image.SetValue(url, i);
                i++;
            }
            con.Close();

        }
    }
}