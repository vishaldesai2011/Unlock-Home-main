using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class Verify : System.Web.UI.Page
    {
        private const string EncryptionKey = "EAC123"; // Replace with your own encryption key
        private const string SaltValue = "#244acb$ad"; // Replace with your own salt value
        string verified_email;
        protected void Page_Load(object sender, EventArgs e)
        {
            var check = Session["email"];
            if (check != null)
            {
                string ses = Session["email"] as string;
                int len = ses.Length;
                string last8Characters = ses.Substring(len - 13);
                emails.Text = last8Characters;
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
        }
     
        public void Sub(object sender, EventArgs e)
        {
            string otp = Session["otp"] as string;
            string one = TextBox1.Text;
            string two = TextBox2.Text;
            string three = TextBox3.Text;
            string four = TextBox4.Text;
            string five = TextBox5.Text;
            string six = last.Text;
            string otps = one + two + three + four + five + six;
            if(otps == otp)
            {
                Session["verified_email"] = Session["email"] as string;
                Response.Redirect("Register.aspx");
            }
            else
            {
                LBL.Text = "Enter Valid OTP";
            }

            //string originalText = "Hello, World!";
            //string encryptedText= Encrypt(originalText);
            //string decryptedText = Decrypt(encryptedText);
            //Response.Write(one + two + three + four + five + six);
            //Response.Write(encryptedText + "  " + decryptedText);
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