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

namespace Real_Estate.unlockhome
{
    public partial class Register : System.Web.UI.Page
    {
        private const string EncryptionKey = "EAC123"; // Replace with your own encryption key
        private const string SaltValue = "#244acb$ad"; // Replace with your own salt value
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        //var ses = Session["verified_email"];
        protected void Page_Load(object sender, EventArgs e)
        {
            var ses = Session["verified_email"];
            if (ses != null)
            {
                string email = ses as string;
                    try
                    {
                    TextBox3.Text = email;
                    }
                    catch { }
                //}
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
        }

        public void Button1_Clicked(object sender, EventArgs e)
        {
            //bool areEqual = string.Equals(TextBox5.Text, TextBox6.Text);
            bool areEqual = TextBox5.Text.Equals(TextBox6.Text);
            Session.Remove("otp");
            if (TextBox1.Text.Length == 0)
            {
                Response.Write("<script>alert('Please Enter Valid Firts Name ');</script>");
            }
            else if (TextBox2.Text.Length == 0)
            {
                Response.Write("<script>alert('Please Enter Valid Last Name ');</script>");

            }
            else if (TextBox3.Text.Length == 0)
            {
                Response.Write("<script>alert('Please Enter Valid Email');</script>");

            }
            else if (TextBox4.Text.Length == 0)
            {
                Response.Write("<script>alert('Please Enter Valid UserName');</script>");

            }
            else if (TextBox5.Text.Length == 0)
            {
                Response.Write("<script>alert('Please Enter Valid Password');</script>");

            }
            else if (TextBox5.Text.Length <= 7)
            {
                Response.Write("<script>alert('Please Enter Valid Password');</script>");

            }
            else if (txtMobileNumber.Text.Length != 10)
            {
                Response.Write("<script>alert('Mobile Number Mustbe 10 Digits');</script>");

            }
            else if (areEqual == false)
            {
                Response.Write("<script>alert('Please Enter Valid Password Not Match');</script>");

            }
            else
            {

                insert();
            }
        }
        public void insert()
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into users(mobile,email,fname,lname,password,user_type,dates,u_name)values(@mobile,@email,@fname,@lname,@password,@user_type,@dates,@u_name)", con);
            cmd.Parameters.AddWithValue("@mobile", txtMobileNumber.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            String Encrypt_pass =  Encrypt(TextBox5.Text);
            cmd.Parameters.AddWithValue("@password", Encrypt_pass);
            cmd.Parameters.AddWithValue("@user_type", "silver");
            cmd.Parameters.AddWithValue("@dates", "-");
            cmd.Parameters.AddWithValue("@u_name", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
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

        public static string Decrypt(string cipherText)
        {
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes aesAlg = Aes.Create())
            {
                Rfc2898DeriveBytes keyDerivation = new Rfc2898DeriveBytes(EncryptionKey, Encoding.ASCII.GetBytes(SaltValue));
                aesAlg.Key = keyDerivation.GetBytes(32); // 256-bit key
                aesAlg.IV = keyDerivation.GetBytes(16); // 128-bit IV

                using (MemoryStream msDecrypt = new MemoryStream())
                {
                    using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, aesAlg.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        csDecrypt.Write(cipherBytes, 0, cipherBytes.Length);
                        csDecrypt.FlushFinalBlock();
                    }

                    return Encoding.UTF8.GetString(msDecrypt.ToArray());
                }
            }
        }

    }
}