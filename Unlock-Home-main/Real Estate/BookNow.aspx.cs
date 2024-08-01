using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Real_Estate
{
    public partial class BookNow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            amount.Text = Session["price"] as string;
        }
        public void Book_NOW(object sender, EventArgs e)
        {
            string id = Session["PID"] as string;
            string price = Session["price"] as string;
            string type = Session["type"] as string;
            Session["Name"] = InputName.Text;
            int brok;
            int amt;

            Response.Write(type);
            amount.Text = price;
           
            brok = int.Parse(price);
            amt = (brok * 3) / 100;
            Session["brokrage"] = amt;

            if (amt > 10000)
            {
                amt = 9000;
                Session["brokrage"] = amt;
                Session["name"] = InputName.Text;



                Response.Write(amt.ToString());
                Session["amt"] = amt.ToString();

                string Product = type;
                Response.Redirect(String.Format("Checkout.aspx?Name={0}&Email={1}&Contact={2}&Amount={3}&Product={4}", InputName.Text, InputEmail.Text, Contact.Text, amt, Product));
            }
            else
            {
                Session["brokrage"] = amt.ToString();
                Session["amt"] = amt.ToString();

                string Product = type;
                Response.Redirect(String.Format("Checkout.aspx?Name={0}&Email={1}&Contact={2}&Amount={3}&Product={4}", InputName.Text, InputEmail.Text, Contact.Text, amt, Product));

            }
            

            //if ( == "Sell")
            //{
            //    brok = int.Parse(price);
            //    amt = (brok * 1) / 100;
            //    Response.Write(amt.ToString());

            //}
            //else if(Session["type"] as string == "Rent")
            //{
            //    brok = int.Parse(price);
            //    amt = (brok * 10) / 100;
            //    Response.Write(amt.ToString());
            //}
            //else
            //{
            //    Response.Write("error");
            //}

        }
    }
}