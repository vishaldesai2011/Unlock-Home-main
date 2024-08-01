using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;
using System.Configuration;
using System.Data.SqlClient;

namespace Real_Estate
{
    public partial class Forgetpassword : System.Web.UI.Page
    {
        string otp;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Click(object sender, EventArgs e)
        {

            if(DoesEmailExist(email.Text)) {
                SMTP(email.Text);

            }
            else
            {
                Response.Write("<Script>alert('Email is not exist !!')</script>");
            }
        }
        public void SMTP(String email)
        {
            try
            {

                // Generate a random OTP
                Random random = new Random();
                otp = random.Next(100000, 999999).ToString();

                // Configure SMTP settings
                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
                smtpClient.Port = 587;
                //smtpClient.Credentials = new NetworkCredential("gabbarsingh21042003@gmail.com", "htdzbhafpmsizgew");
                smtpClient.Credentials = new NetworkCredential("unlockhome07@gmail.com", "pksyblhwxiqqqqve");
                smtpClient.EnableSsl = true;

                // Create the email
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("unlockhome07@gmail.com");
                //mailMessage.From = new MailAddress("gabbarsingh21042003@gmail.com");
                mailMessage.To.Add(email);
                mailMessage.Subject = "Unlock Home OTP";
                mailMessage.Body = "Your OTP code For Forget Password is: " + otp; // Replace with the generated OTP

                // Send the email
                smtpClient.Send(mailMessage);

                Console.WriteLine("Email sent successfully.");
                Response.Write("Success");
                Session["otp_change"] = otp;
                Session["email_change"] = email;
                Response.Redirect("resetpassword.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
                Response.Write("Fail" + ex.Message +" -- "+ex);

            }

        }

        private bool DoesEmailExist(string email)
        {
            //string connectionString = ConfigurationManager.ConnectionStrings["YourConnectionStringName"].ConnectionString;

            using (SqlConnection connection = new SqlConnection("Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True"))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM users WHERE email = @email", connection))
                {
                    cmd.Parameters.AddWithValue("@email", email);

                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    return count > 0;
                }
            }
        }
    }

}