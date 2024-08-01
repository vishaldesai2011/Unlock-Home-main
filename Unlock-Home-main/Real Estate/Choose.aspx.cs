using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Real_Estate
{
    public partial class Choose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string id = Request.QueryString["id"];

            if (id == "1")
            {
                Response.Write("1");
                string Product = "Basic";
                Session["plan"] = "Basic";
                string name = Session["name"] as string;
                //string email = Session["email"] as string;
                string email = "dap2103@gmail.com";
                string mobile = Session["mobile"] as string;
                Response.Write(name + "," + email + "," + mobile);
                Response.Redirect(String.Format("RazorpayCheckout.aspx?Name={0}&Email={1}&Contact={2}&Amount={3}&Product={4}", name, email, mobile, "999", Product));
            }
            else if (id == "2")
            {
                Response.Write("2");
                string Product = "Standard";
                Session["plan"] = "Standard";
                Response.Redirect(String.Format("RazorpayCheckout.aspx?Name={0}&Email={1}&Contact={2}&Amount={3}&Product={4}", Session["name"] as string, Session["email"] as string, Session["mobile"] as string, "1999", Product));

            }
            else if (id == "3")
            {
                Response.Write("3");
                string Product = "Premium";
                Session["plan"] = "Premium";
                Response.Redirect(String.Format("RazorpayCheckout.aspx?Name={0}&Email={1}&Contact={2}&Amount={3}&Product={4}", Session["name"] as string, Session["email"] as string, Session["mobile"] as string, "2899", Product));

            }
            else
            {
                Response.Redirect("Plans.aspx");
            }

        }
        //protected void btnRegister_Click(object sender, EventArgs e)
        //{
        //    string Product = "Donate";
        //    Response.Redirect(String.Format("RazorpayCheckout.aspx?Name={0}&Email={1}&Contact={2}&Amount={3}&Product={4}", txtName.Text, txtEmail.Text, txtMobile.Text, txtAmount.Text, Product));
        //}
    }
}