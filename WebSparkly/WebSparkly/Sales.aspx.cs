using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Configuration;


namespace WebSparkly
{

    public partial class Sales : System.Web.UI.Page
    {
        
        static List<SaleRecord> saleData;
        OleDbConnection Con = new OleDbConnection(ConfigurationManager.ConnectionStrings["SparklyWebConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            
                LoadData();

            try
            {
                if ((bool)Session["sales"])
                {
                    // load stuff
                    OleDbCommand command = new OleDbCommand();
                    command.Connection = Con;
                    command.CommandText = "select * from tblEmployees where Sales ='" + Session["USER_ID"];
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

        public void LoadData()
        {
            try
            {
                saleData = new List<SaleRecord>();
                OleDbConnection conn = new OleDbConnection(Utilities.connString);
                conn.Open();
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM SalesQuery", conn);

               
                OleDbDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    saleData.Add(new SaleRecord(reader));
                }

                
                DGV.DataSource = saleData;
                DGV.DataBind();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SalesNewaspx");
        }

        protected void salesGV_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            string data = "";
            if (e.CommandName == "Edit")
            {
                foreach (var obj in saleData)
                {
                    if (obj.ID == id)
                    {
                        data = obj.ID + "|" + obj.ClientsName + "|" + obj.ProductName + "|" + obj.Quantity + "|" + obj.TotalPrice + "|" + obj.Date + "|" + obj.Delivery;
                    }
                }
                Response.Redirect("SalesNew.aspx?Parameter=" + Server.UrlEncode(data));
            }

            if (e.CommandName == "DeleteRecord")
            {
                try
                {
                    string DeleteSalesLine = "DELETE FROM tblSalesLine WHERE ID =" + id;
                    string DeleteSale = "DELETE FROM tblSales WHERE ID =" + id;
                    Utilities.ExecuteNonQuery(DeleteSalesLine);
                    Utilities.ExecuteNonQuery(DeleteSale);
                }
                catch (Exception ex)
                {
                    Label1.Text = "Record not deleted " + ex.Message;
                }
            }

        }

    }
}