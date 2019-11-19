using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace WebSparkly
{
    public partial class OperatorsNew : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection(ConfigurationManager.ConnectionStrings["SparklyWebConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbCommand command = new OleDbCommand();
            command.Connection = con;
            command.CommandText = "insert into tblEmployees ([Username],[Password]) values('" + txtname.Text + "','" + txtPassword.Text + "')";

            command.ExecuteNonQuery();
            con.Close();
            Label5.Visible = true;
            Label5.Text = "your DATA Stored Successfully!";
            txtname.Text = "";
            txtPassword.Text = "";
        }


    }
}