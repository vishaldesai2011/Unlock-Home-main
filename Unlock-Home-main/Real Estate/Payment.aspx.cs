using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Sockets;
using Microsoft.AspNetCore.DataProtection;

namespace Real_Estate
{
    public partial class RazorpayCallBack : System.Web.UI.Page
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
            catch
            {
                UpdateDetails();

                h1Message.InnerText = "Transaction Successfull";

            }


        }



        public void UpdateDetails()
        {

            string uname = Session["username"] as string;
            string type = Session["plan"] as string;
            DateTime currentDate = DateTime.Now;
            string dateString = currentDate.ToString("MM/dd/yyyy"); // You can use any format you prefer

            // Extract the current year from the date
            int currentYear = currentDate.Year;

            // Convert the year to a string
            string yearString = currentYear.ToString();
            con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE users SET user_type = @utype,dates = @date where u_name = @u_name", con);
            cmd.Parameters.AddWithValue("@u_name", uname);
            cmd.Parameters.AddWithValue("@utype", "silver");
            cmd.Parameters.AddWithValue("@date", yearString);
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}
