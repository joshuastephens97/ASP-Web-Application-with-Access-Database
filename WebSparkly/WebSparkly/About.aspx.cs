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
    public partial class About : Page
    {
        OleDbConnection Con = new OleDbConnection(ConfigurationManager.ConnectionStrings["SparklyWebConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                if ((bool)Session["admin"])
                {
                    // load stuff
                    OleDbCommand command = new OleDbCommand();
                    command.Connection = Con;
                    
                    Con.Open();
                }
                else
                {
                    Response.Redirect("~/Default.aspx");
                }
            }
            catch
            {
                Response.Redirect("~/Default.aspx");
            }


        }

        protected void btnOperators_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Operators.aspx");
        }

        protected void btnClients_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Clients.aspx");
        }
    }
}