using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

namespace Real_Estate
{
    public partial class Checkout : System.Web.UI.Page
    {
        public string orderId;
        public string amount;
        public string contact;
        public string name;
        public string product;
        public string email;
        protected void Page_Load(object sender, EventArgs e)
        {
            amount = (Convert.ToInt32(Request.QueryString["Amount"]) * 100).ToString();
            contact = Request.QueryString["Contact"].ToString();
            name = Request.QueryString["name"].ToString();
            product = Request.QueryString["Product"].ToString();
            email = Request.QueryString["Email"].ToString();
            Session["emails"] = email;

            Dictionary<string, object> input = new Dictionary<string, object>();
            input.Add("amount", amount);
            input.Add("currency", "INR");
            input.Add("payment_capture", 1);

            string key = "rzp_test_kLX7L8BYDbH8a2";
            string secret = "bqFMooSdJGjmiE7JagpU9YZS";


            RazorpayClient clint = new RazorpayClient(key, secret);
            Razorpay.Api.Order order = clint.Order.Create(input);
            orderId = order["id"].ToString();
        }

        //public void SMTP(String email)
        //{
        //    try
        //    {
        //        string name_of_pop = Session["Name_of_prop"] as string;
        //        string name_of_owner = Session["own"] as string;
        //        string contact = Session["contact"] as string;
               
        //        // Generate a random OTP
        //        //Random random = new Random();
        //        //otp = random.Next(100000, 999999).ToString();

        //        // Configure SMTP settings
        //        // Configure SMTP settings
        //        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com");
        //        smtpClient.Port = 587;
        //        //smtpClient.Credentials = new NetworkCredential("gabbarsingh21042003@gmail.com", "htdzbhafpmsizgew");
        //        smtpClient.Credentials = new NetworkCredential("unlockhome07@gmail.com", "pksyblhwxiqqqqve");
        //        smtpClient.EnableSsl = true;

        //        // Create the email
        //        MailMessage mailMessage = new MailMessage();
        //        mailMessage.From = new MailAddress("unlockhome07@gmail.com");
        //        //mailMessage.From = new MailAddress("gabbarsingh21042003@gmail.com");
        //        mailMessage.To.Add(email);
        //        mailMessage.Subject = "Unlock Home OTP";
        //        mailMessage.Body = "Name :"+name_of_owner+"</br> Property Name"+name_of_pop+"</br>contact"+contact+""; // Replace with the generated OTP

        //        // Send the email
        //        smtpClient.Send(mailMessage);

        //        Console.WriteLine("Email sent successfully.");
        //        Response.Write("Success");
        //        //Session["otp"] = otp;
        //        //Session["email"] = email;
        //        Response.Redirect("Home.aspx");
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine($"An error occurred: {ex.Message}");
        //        Response.Write("Fail" + ex.Message);

        //    }

        //}
    }
}
