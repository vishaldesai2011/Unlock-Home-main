using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class CheckPay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
             string keyId = "rzp_test_kLX7L8BYDbH8a2";
            string keySecret = "bqFMooSdJGjmiE7JagpU9YZS";
            decimal amt = Convert.ToDecimal("10000");

            // Create a Razorpay order
            Dictionary<string, object> options = new Dictionary<string, object>
        {
            { "amount", amt * 100 }, // Amount in paisa
            { "currency", "INR" }, // Change currency as needed
            { "receipt", "order_receipt_123" },
            { "payment_capture", 1 }
        };
            RazorpayClient client = new RazorpayClient(keyId, keySecret);

            Razorpay.Api.Order order = client.Order.Create(options);
            string orderId = order["id"];

            // Redirect the user to the Razorpay payment page
            string redirectUrl = $"https://api.razorpay.com/v1/payment_page/{orderId}";
            Response.Redirect(redirectUrl);

        }
        //protected void initiatePayment(object sender, EventArgs e)
        //{
        //    // Get the payment amount from the form
            
        //    decimal amt = Convert.ToDecimal(amount.Text);

        //    // Create a Razorpay order
        //    Dictionary<string, object> options = new Dictionary<string, object>
        //{
        //    { "amount", amt * 100 }, // Amount in paisa
        //    { "currency", "INR" }, // Change currency as needed
        //    { "receipt", "order_receipt_123" },
        //    { "payment_capture", 1 }
        //};
        //    RazorpayClient client = new RazorpayClient(keyId, keySecret);

        //    Razorpay.Api.Order order = client.Order.Create(options);
        //    string orderId = order["id"];

        //    // Redirect the user to the Razorpay payment page
        //    string redirectUrl = $"https://api.razorpay.com/v1/payment_page/{orderId}";
        //    Response.Redirect(redirectUrl);
        //}
    }
}