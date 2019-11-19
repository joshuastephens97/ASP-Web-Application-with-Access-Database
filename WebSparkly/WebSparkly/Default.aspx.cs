using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using WebSparkly;
using System.ComponentModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows;

namespace WebSparkly
{
    public partial class _Default : Page
    {
        OleDbConnection Con = new OleDbConnection(ConfigurationManager.ConnectionStrings["SparklyWebConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbCommand command = new OleDbCommand();
            command.Connection = Con;
            command.CommandText = "select * from tblEmployees where Username='" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "' ";

            OleDbDataReader reader = command.ExecuteReader();

            if (reader.HasRows)
            {
                reader.Read();
                Session["user"] = reader["UserName"];
                Session["admin"] = reader["Admin"];
                Session["sales"] = reader["Sales"];
                Response.Redirect("~/About");
            }
            else
            {
                // user entered something invalid
            }
            

          //  int count = 0;
          //  while (reader.Read())
          //  {
          //      count = count + 1;
          //      // count++
          //  }
          //  if (count == 1)
          //  {

          //      Con.Close();
          //      Con.Dispose();
          //      Session["USER_ID"] = TextBox1.Text;
                
                

          //      Response.Redirect("~/About.aspx");

          //  //    Response.Redirect("~/About.aspx") = Utilities.Operator.Admin;
          ////      btnOperators.Enabled = Utilities.Operator.Admin;
          ////      btnHistory.Enabled = Utilities.Operator.Admin;
          ////      btnSale.Enabled = Utilities.Operator.Sales;

          //      //    Response.Redirect("~/LogInPage.aspx");
          //  }
          //  else if (count > 1)
          //  {
          //      Label3.Text = "Duplicate username and password";
          //  }
          //  else
          //  {
          //      Label3.Text = "user name or password is incorrect";
          //  }
            Con.Close();
        }
    }
}