using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Runtime.Remoting.Messaging;
using static Antlr.Runtime.Tree.TreeWizard;
using WebGrease.Css.Visitor;

namespace Real_Estate
{
    public partial class Login : System.Web.UI.Page
    {
        private const string EncryptionKey = "EAC123"; // Replace with your own encryption key
        private const string SaltValue = "#244acb$ad"; // Replace with your own salt value
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String NoOfVisitor;
        int visitor;
        String vis;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["log"] = null;
            Session["username"] = null;

        }
        public void Login_btn(object sender, EventArgs e)
        {
            String pass = Encrypt(TextBox2.Text);
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            cmd.CommandText = "select * from users where u_name='" + TextBox1.Text + "'and password='" + pass + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "users");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["log"] = "true";
                Session["username"] = TextBox1.Text;
                con.Close();
                try
                {
                    check_User();
                    Count_Past_Visitors();
                    counter();
                    counter_month();
                    Response.Redirect("Home.aspx");

                }
                catch
                {
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                lbl.Text = "Please Enter valid Username and Password";
            }
            
        }

        public static string Encrypt(string plainText)
        {
            byte[] plainBytes = Encoding.UTF8.GetBytes(plainText);
            using (Aes aesAlg = Aes.Create())
            {
                Rfc2898DeriveBytes keyDerivation = new Rfc2898DeriveBytes(EncryptionKey, Encoding.ASCII.GetBytes(SaltValue));
                aesAlg.Key = keyDerivation.GetBytes(32); // 256-bit key
                aesAlg.IV = keyDerivation.GetBytes(16); // 128-bit IV

                using (MemoryStream msEncrypt = new MemoryStream())
                {
                    using (CryptoStream csEncrypt = new CryptoStream(msEncrypt, aesAlg.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        csEncrypt.Write(plainBytes, 0, plainBytes.Length);
                        csEncrypt.FlushFinalBlock();
                    }

                    return Convert.ToBase64String(msEncrypt.ToArray());
                }
            }
        }
        public void check_User()
        {
            //con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";

            con.Open();
           
            SqlCommand cmd = new SqlCommand("SELECT * FROM users where u_name=@uname", con);
            cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
            SqlDataReader reader = cmd.ExecuteReader();
         
            while (reader.Read())
            {
                Session["user_type"] = reader.GetString(4);
            }
            con.Close();
        }

        //Count

        public void Count_Past_Visitors()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Visitor_Count Where id = 'ALL'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                NoOfVisitor = reader.GetString(1);
            }
            con.Close();
        }
        public void counter()
        {
            visitor = Int16.Parse(NoOfVisitor);
            visitor++;
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Visitor_Count Set visitors=@visitors where id='ALL'", con);
            cmd.Parameters.AddWithValue("@visitors", visitor);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void counter_month()
        {

            int currentMonth = DateTime.Now.Month;
            String mon = currentMonth.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Visitor_Count Where Month = @Month", con);
            cmd.Parameters.AddWithValue("@Month", mon);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                vis = reader.GetString(1);
            }
            reader.Close();
            con.Close();

            int vi = Int16.Parse(vis);
            vi++;
            con.Open();
            cmd = new SqlCommand("Update Visitor_Count Set visitors=@visitors where Month=@Month", con);
            cmd.Parameters.AddWithValue("@Month", mon);
            cmd.Parameters.AddWithValue("@visitors", vi.ToString());
            cmd.ExecuteNonQuery();
            con.Close();



        }
       

    }
    }
