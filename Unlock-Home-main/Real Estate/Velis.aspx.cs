using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;



namespace Real_Estate
{
    public partial class Velis : System.Web.UI.Page
    {
        string otp;
        
        protected void Page_Load(object sender, EventArgs e)
        {
          
            
        }
        public void Click(object sender, EventArgs e)
        {
            string email = Email.Text;
            SMTP(email);
            lbl.Text = otp;
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
                smtpClient.Port = 25;
                smtpClient.Credentials = new NetworkCredential("gabbarsingh21042003@gmail.com", "htdzbhafpmsizgew");
                smtpClient.EnableSsl = true;

                // Create the email
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("gabbarsingh21042003@gmail.com");
                mailMessage.To.Add(email);
                mailMessage.Subject = "Unlock Home OTP";
                mailMessage.Body = "Your OTP code is: "+ otp ; // Replace with the generated OTP

                // Send the email
                smtpClient.Send(mailMessage);

                Console.WriteLine("Email sent successfully.");
                Response.Write("Success");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
                Response.Write("Fail");

            }

        }
    }
}