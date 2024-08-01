using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class New_property : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String uname;
        protected void Page_Load(object sender, EventArgs e)
        {



            //    if (Session["user_type"] == "silver")
            //    {
             uname = Session["username"] as string;
            //    string user = Session["user_type"] as string;
            //    //Response.Redirect("plans.aspx");


            //    }
            //else
            //{
            //    Response.Redirect("plans.aspx");
            //}
           

            //else
            //{
            //    Response.Redirect("login.aspx");
            //}
            //else
            //{
            //    Response.Redirect("login.aspx");
            //}
            //else if (Session["user_type"] as string == "Basic")
            //{
            //    Response.Redirect("plans.aspx");
            //}



            //Response.Write(user);
            Response.Write(uname);
        }
        public void Add(object sender, EventArgs e)
        {
            try
            {
                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into property(u_name,contact,prop_owner,prop_id,prop_name,type,category ,price,location,bedrooms,furniture,size,bathroom,floor,c_year,r_year,ac,Intercom,elevator,ventilation,wifi,fireplace,tv,parking,garden,pool,cctv,security,club_house,gym,school,hospital,bustop,univercity,gym_near,market,mall,user_type,state,city)values(@u_name,@contact,@prop_owner,@prop_id,@prop_name,@type,@category,@price,@location,@bedrooms,@furniture,@size,@bathroom,@floor,@c_year,@r_year,@ac,@Intercom,@elevator,@ventilation,@wifi,@fireplace,@tv,@parking,@garden,@pool,@cctv,@security,@club_house,@gym,@school,@hospital,@bustop,@univercity,@gym_near,@market,@mall,@user_type,@state,@city)", con);
                cmd.Parameters.AddWithValue("@contact",contact.Text);
                cmd.Parameters.AddWithValue("@prop_owner", Owner.Text);
                Random random = new Random();

                // Generate a random integer between a minimum and maximum value
                int minValue = 10000;
                int maxValue = 99999;
                int randomNumber = random.Next(minValue, maxValue + 1);
                String ids = prop_name.Text[0] + randomNumber.ToString();
                cmd.Parameters.AddWithValue("@u_name", Session["username"] as string);
                cmd.Parameters.AddWithValue("@prop_id" ,ids);
                cmd.Parameters.AddWithValue("@prop_name", prop_name.Text);
                cmd.Parameters.AddWithValue("@type", type.Text);
                cmd.Parameters.AddWithValue("@category", category.Text);
                cmd.Parameters.AddWithValue("@price", price.Text);
                cmd.Parameters.AddWithValue("@location",location.Text);
                cmd.Parameters.AddWithValue("@bedrooms", bedroom.Text);
                cmd.Parameters.AddWithValue("@furniture", fur.Text);
                cmd.Parameters.AddWithValue("@size", size.Text);
                cmd.Parameters.AddWithValue("@Bathroom", bathroom.Text);
                cmd.Parameters.AddWithValue("@floor", floor.Text);
                cmd.Parameters.AddWithValue("@c_year", c_year.Text);
                cmd.Parameters.AddWithValue("@r_year", r_year.Text);
                cmd.Parameters.AddWithValue("@ac", ac.Text);
                cmd.Parameters.AddWithValue("@Intercom", intercom.Text);
                cmd.Parameters.AddWithValue("@elevator", elecator.Text);
                cmd.Parameters.AddWithValue("@ventilation", ventilation.Text);
                cmd.Parameters.AddWithValue("@wifi", wifi.Text);
                cmd.Parameters.AddWithValue("@fireplace", fireplace.Text);
                cmd.Parameters.AddWithValue("@tv", cable.Text);
                cmd.Parameters.AddWithValue("@parking", parking.Text);
                cmd.Parameters.AddWithValue("@garden", garden.Text);
                cmd.Parameters.AddWithValue("@pool", swimmingpool.Text);
                cmd.Parameters.AddWithValue("@cctv", cctv.Text);
                cmd.Parameters.AddWithValue("@security", security.Text);
                cmd.Parameters.AddWithValue("@club_house", club_house.Text);
                cmd.Parameters.AddWithValue("@gym", gym.Text);
                cmd.Parameters.AddWithValue("@school", school.Text);
                cmd.Parameters.AddWithValue("@hospital", hospital.Text);
                cmd.Parameters.AddWithValue("@bustop", metro.Text);
                cmd.Parameters.AddWithValue("@univercity", univercity.Text);
                cmd.Parameters.AddWithValue("@gym_near", Gym_distance.Text);
                cmd.Parameters.AddWithValue("@market", market.Text);
                cmd.Parameters.AddWithValue("@mall", city_mall.Text);
                cmd.Parameters.AddWithValue("@user_type", "silver");
                cmd.Parameters.AddWithValue("@state",list.SelectedValue);
                cmd.Parameters.AddWithValue("@city",name.SelectedValue);
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Redirect("Home.aspx");
                Response.Write(ids);
                update_image(ids);
                addToView(ids);
                Response.Redirect("Home.aspx");

            }
            catch (Exception ex) 
            {
                Response.Write(ex.Message);
            }
            //Response.Write("<Script>alert(1)</script>");
        }

        public void update_image(String propid)
        {
            string filename = Path.GetFileName(img1.PostedFile.FileName);
            Stream fs = img1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);


            //All Image 2
            string filename1 = Path.GetFileName(img2.PostedFile.FileName);
            Stream fs1 = img2.PostedFile.InputStream;
            BinaryReader br1 = new BinaryReader(fs1);
            byte[] imagecode1 = br1.ReadBytes((Int32)fs1.Length);

            //All Image 3
            string filename2 = Path.GetFileName(img3.PostedFile.FileName);
            Stream fs2 = img3.PostedFile.InputStream;
            BinaryReader br2 = new BinaryReader(fs2);
            byte[] imagecode2 = br2.ReadBytes((Int32)fs2.Length);

            //All Image 4
            string filename3 = Path.GetFileName(img4.PostedFile.FileName);
            Stream fs3 = img4.PostedFile.InputStream;
            BinaryReader br3 = new BinaryReader(fs3);
            byte[] imagecode3 = br3.ReadBytes((Int32)fs3.Length);

            //All Image 5
            string filename4 = Path.GetFileName(img5.PostedFile.FileName);
            Stream fs4 = img5.PostedFile.InputStream;
            BinaryReader br4 = new BinaryReader(fs4);
            byte[] imagecode4 = br4.ReadBytes((Int32)fs4.Length);

            //Interior Image 1 to 5

            string inte1 = Path.GetFileName(img6.PostedFile.FileName);
            Stream fs5 = img6.PostedFile.InputStream;
            BinaryReader br5 = new BinaryReader(fs5);
            byte[] imagecode5 = br5.ReadBytes((Int32)fs5.Length);

            string inte2 = Path.GetFileName(img7.PostedFile.FileName);
            Stream fs6 = img7.PostedFile.InputStream;
            BinaryReader br6 = new BinaryReader(fs6);
            byte[] imagecode6 = br6.ReadBytes((Int32)fs6.Length);

            string inte3 = Path.GetFileName(img8.PostedFile.FileName);
            Stream fs7 = img8.PostedFile.InputStream;
            BinaryReader br7 = new BinaryReader(fs7);
            byte[] imagecode7 = br7.ReadBytes((Int32)fs7.Length);

            string inte4 = Path.GetFileName(img9.PostedFile.FileName);
            Stream fs8 = img9.PostedFile.InputStream;
            BinaryReader br8 = new BinaryReader(fs8);
            byte[] imagecode8 = br8.ReadBytes((Int32)fs8.Length);

            string inte5 = Path.GetFileName(img10.PostedFile.FileName);
            Stream fs9 = img10.PostedFile.InputStream;
            BinaryReader br9 = new BinaryReader(fs9);
            byte[] imagecode9 = br9.ReadBytes((Int32)fs9.Length);

            //Interior image 6 to 10

            string inte6 = Path.GetFileName(img11.PostedFile.FileName);
            Stream fs10 = img11.PostedFile.InputStream;
            BinaryReader br10 = new BinaryReader(fs10);
            byte[] imagecode10 = br10.ReadBytes((Int32)fs10.Length);

            //string inte7 = Path.GetFileName(FileUpload12.PostedFile.FileName);
            //Stream fs11 = FileUpload12.PostedFile.InputStream;
            //BinaryReader br11 = new BinaryReader(fs11);
            //byte[] imagecode11 = br11.ReadBytes((Int32)fs11.Length);

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE property SET floor_img = @floor_img,img1 = @img1,img2 = @img2,img3 = @img3,img4 = @img4,img5 = @img5,img6 = @img6,img7 = @img7,img8 = @img8,img9 = @img9,img10 = @img10  WHERE prop_id  = @prop_id", con);
            cmd.Parameters.AddWithValue("@prop_id",propid);
            cmd.Parameters.AddWithValue("@floor_img", imagecode10);
            cmd.Parameters.AddWithValue("@img1", imagecode);
            cmd.Parameters.AddWithValue("@img2", imagecode1);
            cmd.Parameters.AddWithValue("@img3", imagecode2);
            cmd.Parameters.AddWithValue("@img4", imagecode3);
            cmd.Parameters.AddWithValue("@img5", imagecode4);
            cmd.Parameters.AddWithValue("@img6", imagecode5);
            cmd.Parameters.AddWithValue("@img7", imagecode6);
            cmd.Parameters.AddWithValue("@img8", imagecode7);
            cmd.Parameters.AddWithValue("@img9", imagecode8);
            cmd.Parameters.AddWithValue("@img10", imagecode9);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void addToView(string Propid)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into views(prop_id,views)values(@prop_id,@views)",con);
            cmd.Parameters.AddWithValue("@prop_id", Propid);
            cmd.Parameters.AddWithValue("@views", "0");

            cmd.ExecuteNonQuery();
            con.Close();

        }
      
    }
}