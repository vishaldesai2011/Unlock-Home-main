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

namespace Real_Estate
{
    public partial class resetpassword : System.Web.UI.Page
    {
        private const string EncryptionKey = "EAC123"; // Replace with your own encryption key
        private const string SaltValue = "#244acb$ad"; // Replace with your own salt value
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["otp_change"] == null) && (Session["email_change"] == null))
            {
                Response.Redirect("Forgetpassword.aspx");
            }
        }
        public void change(object sender, EventArgs e)
        {
            string otps = Session["otp_change"] as string;
            string email = Session["email_change"] as string;
            if(otps != null)
            {
                if(otps == otp.Text)
                {
                    Session.Remove("otp_change");
                    Session.Remove("email_change");
                    string password1 = password.Text;
                    update_pass(email,Encrypt(password1));

                }
                else
                {
                    Response.Write("<script>alert(' OTP is invalid !');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Enter Otp !');</script>");
            }
            //Response.Write(confirm.Text + "," + password.Text + "," + otp.Text);
        }
        public void update_pass(string email,string password)
        {
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("update users set password = @password where email = @email", con);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password", password);
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

    }
}