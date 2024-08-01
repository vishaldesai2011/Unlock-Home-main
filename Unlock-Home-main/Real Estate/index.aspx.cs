using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Services.Description;
using System.Drawing;
using System.Xml.Linq;
using System.Runtime.Remoting.Messaging;

namespace Real_Estate
{
    public partial class index : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int view;


        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["Home"] as string == "home") && (Session["log"] as string == "true"))
            {
                string value = Request.QueryString["PID"];
                fetchdata();
                PropCount();
                UpdatePropCount();
            }
            else if (Request.QueryString["PID"] == null)
            {
                Response.Redirect("Home.Aspx");
            }
            else
            {
                Response.Redirect("Login.Aspx");
            }



            //Response.Write(value);


        }
        public string[] Name { get; set; }
        //public string[] Area { get; set; }
        public string[] bedroom { get; set; }
        public string[] Bathroom { get; set; }
        public string[] Size { get; set; }
        public string[] floor { get; set; }
        public string[] Furnish { get; set; }
        public string[] price { get; set; }
        //public string[] image { get; set; }
        public string[] type { get; set; }
        public string[] Category { get; set; }
        public string[] pid { get; set; }





        //public string[] City { get; set; }

        public void fetchdata()
        {
            Name = new string[1];
            type = new string[1];
            Category = new string[1];
            pid = new string[1];
            Size = new string[1];
            Bathroom = new string[1];
            bedroom = new string[1];
            floor = new string[1];
            Furnish = new string[1];
            price = new string[1];
            cyear = new string[1];
            ryear = new string[1];
            elevator = new string[1];
            fireplace = new string[1];
            wifi = new string[1];
            Ventilation = new string[1];
            intercome = new string[1];
            ac = new string[1];
            cable = new string[1];
            parking = new string[1];
            garden = new string[1];
            pool = new string[1];
            cctv = new string[1];
            security = new string[1];
            clubhouse = new string[1];
            gym = new string[1];
            school = new string[1];
            hospital = new string[1];
            univercity = new string[1];
            busstop = new string[1];
            gym_near = new string[1];
            market = new string[1];
            mall = new string[1];
            image = new string[11];
            byte[] bytes1;
            byte[] bytes2;
            byte[] bytes3;
            byte[] bytes4;
            byte[] bytes5;
            byte[] bytes6;
            byte[] bytes7;
            byte[] bytes8;
            byte[] bytes9;
            byte[] bytes10;
            byte[] bytes11;




            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM property where prop_id = @prop", con);
            cmd.Parameters.AddWithValue("@prop", Request.QueryString["PID"]);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Session["owner"] = reader.GetString(3);
                Session["pname"] = reader.GetString(5);
                Session["contact"] = reader.GetString(2);
                //Session["type"] = reader.GetString(6);
                //Session["pid"] = Request.QueryString["PID"];



                Name.SetValue(reader.GetString(5), 0);
                type.SetValue(reader.GetString(6), 0);
                pid.SetValue(reader.GetString(4), 0);
                Category.SetValue(reader.GetString(7), 0);
                Size.SetValue(reader.GetString(12), 0);
                bedroom.SetValue(reader.GetString(10), 0);
                Bathroom.SetValue(reader.GetString(13), 0);
                floor.SetValue(reader.GetString(14), 0);
                Furnish.SetValue(reader.GetString(11), 0);
                price.SetValue(reader.GetString(8), 0);
                cyear.SetValue(reader.GetString(15), 0);
                ryear.SetValue(reader.GetString(16), 0);
                ac.SetValue(reader.GetString(17), 0);
                elevator.SetValue(reader.GetString(19), 0);
                intercome.SetValue(reader.GetString(18), 0);
                Ventilation.SetValue(reader.GetString(20), 0);
                wifi.SetValue(reader.GetString(21), 0);
                fireplace.SetValue(reader.GetString(22), 0);
                cable.SetValue(reader.GetString(23), 0);
                parking.SetValue(reader.GetString(24), 0);
                garden.SetValue(reader.GetString(25), 0);
                pool.SetValue(reader.GetString(26), 0);
                cctv.SetValue(reader.GetString(27), 0);
                security.SetValue(reader.GetString(28), 0);
                clubhouse.SetValue(reader.GetString(29), 0);
                gym.SetValue(reader.GetString(30), 0);
                school.SetValue(reader.GetString(31), 0);
                hospital.SetValue(reader.GetString(32), 0);
                busstop.SetValue(reader.GetString(33), 0);
                univercity.SetValue(reader.GetString(34), 0);
                gym_near.SetValue(reader.GetString(35), 0);
                market.SetValue(reader.GetString(36), 0);
                mall.SetValue(reader.GetString(37), 0);
                Session["price"] = reader.GetString(8);
                Session["PID"] = Request.QueryString["PID"];
                Session["type"] = reader.GetString(6);
                Session["mobile"] = reader.GetString(2);
                //Session["contact"] = reader.GetString(3);
                Session["Name_of_prop"] = reader.GetString(5);
                Session["own"] = reader.GetString(3);


                bytes1 = (byte[])reader["img1"];
                string url1 = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                image.SetValue(url1, 0);

                bytes2 = (byte[])reader["img2"];
                string url2 = "data:image/jpg;base64," + Convert.ToBase64String(bytes2);
                image.SetValue(url2, 1);

                bytes3 = (byte[])reader["img3"];
                string url3 = "data:image/jpg;base64," + Convert.ToBase64String(bytes3);
                image.SetValue(url3, 2);

                bytes4 = (byte[])reader["img4"];
                string url4 = "data:image/jpg;base64," + Convert.ToBase64String(bytes4);
                image.SetValue(url4, 3);

                bytes5 = (byte[])reader["img5"];
                string url5 = "data:image/jpg;base64," + Convert.ToBase64String(bytes5);
                image.SetValue(url5, 4);

                bytes6 = (byte[])reader["img6"];
                string url6 = "data:image/jpg;base64," + Convert.ToBase64String(bytes6);
                image.SetValue(url6, 5);

                bytes7 = (byte[])reader["img7"];
                string url7 = "data:image/jpg;base64," + Convert.ToBase64String(bytes7);
                image.SetValue(url7, 6);

                bytes8 = (byte[])reader["img8"];
                string url8 = "data:image/jpg;base64," + Convert.ToBase64String(bytes8);
                image.SetValue(url8, 7);

                bytes9 = (byte[])reader["img9"];
                string url9 = "data:image/jpg;base64," + Convert.ToBase64String(bytes9);
                image.SetValue(url9, 8);

                bytes10 = (byte[])reader["img10"];
                string url10 = "data:image/jpg;base64," + Convert.ToBase64String(bytes10);
                image.SetValue(url10, 9);

                bytes11 = (byte[])reader["floor_img"];
                string url11 = "data:image/jpg;base64," + Convert.ToBase64String(bytes11);
                image.SetValue(url11, 10);


            }

            con.Close();


        }
        public void PropCount()
        {
            string id = Request.QueryString["PID"];
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM views where prop_id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string v = reader.GetString(1);
                view = int.Parse(v);
            }
            reader.Close();
            con.Close();



        }
        public void UpdatePropCount()
        {
            view++;
            Views = new string[1];
            Views.SetValue(view.ToString(), 0);

            string id = Request.QueryString["PID"];
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE views SET views = @count where prop_id = @id", con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@count", view);
            cmd.ExecuteNonQuery();
            con.Close();



        }
        public string[] Views { get; set; }
        public string[] cyear { get; set; }

        public string[] ryear { get; set; }
        public string[] ac { get; set; }
        public string[] intercome { get; set; }

        public string[] elevator { get; set; }

        public string[] Ventilation { get; set; }

        public string[] wifi { get; set; }

        public string[] fireplace { get; set; }

        public string[] cable { get; set; }

        public string[] parking { get; set; }
        public string[] garden { get; set; }
        public string[] pool { get; set; }
        public string[] cctv { get; set; }
        public string[] security { get; set; }
        public string[] clubhouse { get; set; }

        public string[] gym { get; set; }

        public string[] school { get; set; }
        public string[] hospital { get; set; }
        public string[] univercity { get; set; }
        public string[] busstop { get; set; }

        public string[] gym_near { get; set; }

        public string[] market { get; set; }

        public string[] mall { get; set; }

        public string[] image { get; set; }

        //public void Login_btn(object sender, EventArgs e)
        //{
        //    Session["PID"] = Request.QueryString["PID"];

        //    Response.Redirect("BookNow.aspx");

        //}
    }
}