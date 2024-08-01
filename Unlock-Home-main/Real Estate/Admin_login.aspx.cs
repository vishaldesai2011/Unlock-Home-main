using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class Admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Login_btn(object sender, EventArgs e)
        {

            if(TextBox1.Text == "Admin")
            {
                if(TextBox2.Text == "Admin@123")
                {
                    Session["Admin"] = "true";
                    Response.Redirect("Admin.aspx");

                }

            }
            else
            {
                Response.Redirect("Admin_login.aspx");
            }
        }

    }
}