using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Runtime.Remoting.Messaging;

namespace Real_Estate
{
    public partial class CallBack : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            try
            {
                string paymentId = Request.Form["razorpay_payment_id"];
                string orderId = Request.Form["razorpay_order_id"];
                string signature = Request.Form["razorpay_signature"];
                string key = "rzp_test_kLX7L8BYDbH8a2";
                string secret = "bqFMooSdJGjmiE7JagpU9YZS";

                RazorpayClient clint = new RazorpayClient(key, secret);
                Dictionary<string, string> attributes = new Dictionary<string, string>();
                attributes.Add("razorpay_payment_id", paymentId);
                attributes.Add("razorpay_order_id", orderId);
                attributes.Add("razorpay_signature", signature);
                Utils.verifyPaymentSignature(attributes);
                pTxnId.InnerText = "Transection Id" + paymentId;
                pOrderId.InnerText = "Order Id" + orderId;
                h1Message.InnerText = "Transaction Successfull";
            }
            catch(Exception ex) 
            {
                Response.Write(ex);
                data_add();
                //h1Message.InnerText = "Transaction Successfull";
                SMTP(Session["emails"] as string);

            }

        }
        public void SMTP(String email)
        {
            try
            {
                string name_of_pop = Session["Name_of_prop"] as string;
                string name_of_owner = Session["own"] as string;
                string contact = Session["contact"] as string;

                // Generate a random OTP
                //Random random = new Random();
                //otp = random.Next(100000, 999999).ToString();

                // Configure SMTP settings
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
                mailMessage.Body = "Name :" + name_of_owner + ", Property Name" + name_of_pop + ", contact" + contact + ",Amount"+Session["amt"]as string +""; // Replace with the generated OTP

                // Send the email
                smtpClient.Send(mailMessage);

                Console.WriteLine("Email sent successfully.");
                Response.Write("Success");
                //Session["otp"] = otp;
                //Session["email"] = email;
                Response.Redirect("Home.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
                Response.Write("Fail" + ex.Message);

            }

        }
        public void data_add()
        {

            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            string oname = Session["owner"] as string;
            string pname = Session["pname"] as string;
            string contact = Session["contact"] as string;
            string id = Session["PID"] as string;
            string price = Session["price"] as string;
            string type = Session["type"] as string;
            string brok = Session["brokrage"] as string;
            string name = Session["name"] as string;

            //Response.Write(oname+","+pname+","+ contact+","+ id+","+ price+","+type+","+ name+","+ brok);

            SqlCommand cmd = new SqlCommand("insert into brokrages(prop_id,Name,Owner_name,prop_name,contact,booking_type,amout,brokrage)values(@prop_id,@Name,@Owner_name,@prop_name,@contact,@booking_type,@amout,@brokrage)", con);
            cmd.Parameters.AddWithValue("@prop_id", id);
            cmd.Parameters.AddWithValue("@Owner_name", oname);
            cmd.Parameters.AddWithValue("@prop_name", pname);
            cmd.Parameters.AddWithValue("@Name", name);
            cmd.Parameters.AddWithValue("@amout", price);
            cmd.Parameters.AddWithValue("@booking_type", type);
            cmd.Parameters.AddWithValue("@contact",contact);
            cmd.Parameters.AddWithValue("@brokrage", brok);
            cmd.ExecuteNonQuery();
            con.Close();




        }


    }
}