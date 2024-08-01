using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Real_Estate
{
    public partial class Users : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] as string == "true")
            {
                showProp();

            }
            else
            {
                Response.Redirect("Admin_login.aspx");
            }
        }
            public void showProp()
            {

                con.ConnectionString = "Data Source=LAPTOP-8GO3KIRF\\SQLEXPRESS;Initial Catalog=realestates;Integrated Security=True";
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM users", con);

                SqlDataReader reader = cmd.ExecuteReader();


                TableRow headerRow = new TableRow();
                TableCell headerCell0 = new TableCell();
                headerCell0.Text = "<font color='039BE5'>No.</font>";
                headerRow.Cells.Add(headerCell0);
                TableCell headerCell1 = new TableCell();
                headerCell1.Text = "<font color='039BE5'>Email</font>";
                headerRow.Cells.Add(headerCell1);
                TableCell headerCell2 = new TableCell();
                headerCell2.Text = "<font color='039BE5'>fname</font>";
                headerRow.Cells.Add(headerCell2);
                myTable.Rows.Add(headerRow);
                TableCell headerCell3 = new TableCell();
                headerCell3.Text = "<font color='039BE5'>Type</font>";
                headerRow.Cells.Add(headerCell3);
                TableCell headerCell4 = new TableCell();
                headerCell4.Text = "<font color='039BE5'>User Name</font>";
                headerRow.Cells.Add(headerCell4);
                myTable.Rows.Add(headerRow);
                int i = 0;
                while (reader.Read())
                {
                    i++;
                    string email = reader.GetString(0);
                    String fname = reader.GetString(1);
                    String type = reader.GetString(4);
                    String uname = reader.GetString(6);


                TableRow dataRow1 = new TableRow();
                    TableCell dataCell0 = new TableCell();
                    dataCell0.Text = i.ToString();
                    dataRow1.Cells.Add(dataCell0);
                    TableCell dataCell1 = new TableCell();
                    dataCell1.Text = email;
                    dataRow1.Cells.Add(dataCell1);
                    TableCell dataCell2 = new TableCell();
                    dataCell2.Text = fname;
                    dataRow1.Cells.Add(dataCell2);
                    TableCell dataCell3 = new TableCell();
                    dataCell3.Text = type;
                    dataRow1.Cells.Add(dataCell3);

                    TableCell dataCell4 = new TableCell();
                    dataCell4.Text = uname;
                    dataRow1.Cells.Add(dataCell4);
                    myTable.Rows.Add(dataRow1);

                }
            }
        }
    }