using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace WebSparkly
{
    public partial class SalesNew : System.Web.UI.Page
    {
        static int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadLists();
            if (!IsPostBack)
            {


                try
                {
                    string[] data = Server.UrlDecode(Request.QueryString["Parameter"].ToString()).Split('|');
                    id = int.Parse(data[0]);
                    listName.Text = data[1];
                    listProducts.Text = data[2];
                    txtQuantity.Text = data[3];
                    txtTotalPrice.Text = data[4];
                    saledate.SelectedDate = Convert.ToDateTime(data[5]);
                    txtStatus.Text = data[6];
                }
                catch { }
            }

        }

        public void LoadLists()
        {
            try
            {
                OleDbConnection conn = new OleDbConnection(Utilities.connString);
                conn.Open();
                OleDbCommand cmdClients = new OleDbCommand("SELECT * FROM tblClients", conn);
                OleDbCommand cmdProducts = new OleDbCommand("SELECT * FROM tblProducts", conn);

                OleDbDataReader clientReader = cmdClients.ExecuteReader();
                OleDbDataReader productReader = cmdProducts.ExecuteReader();

                listName.DataSource = clientReader;
                listProducts.DataSource = productReader;

                listName.DataValueField = "ID";
                listName.DataTextField = "ClientsName";

                listProducts.DataValueField = "ID";
                listProducts.DataTextField = "ProductsName";

                listName.DataBind();
                listProducts.DataBind();

              

            }
            catch (Exception ex)
            {
         
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["Parameter"] != null)
            {
                try
                {


                }
                catch { }
            }
            else
            {
                try
                {
                    
                    int saleID = 0;
                    OleDbConnection conn = new OleDbConnection(Utilities.connString);
                    conn.Open();
                    OleDbCommand cmdSales = new OleDbCommand("INSERT INTO tblSales([ClientsID],[SalesDate],[SalesDelivery]) Values(@ClientName,@SalesDate,@Status)");
                    OleDbCommand cmdID = new OleDbCommand("SELECT TOP 1 tblSales.ID FROM tblSales ORDER BY tblSales.ID DESC", conn);
                    OleDbCommand cmdSalesLine = new OleDbCommand("INSERT INTO tblSalesLine([SalesID],[ProductsID],[SalesLineQuantity],[SaleslinePrice])Values(@SalesID,@ProductName,@Quantity,@TotalPrice)");

                    cmdSales.Parameters.Add("@ClientName", OleDbType.Integer).Value = int.Parse(listName.Text);
                    cmdSales.Parameters.Add("@SalesDate", OleDbType.Date).Value = saledate.SelectedDate;
                    cmdSales.Parameters.Add("@Status", OleDbType.VarChar).Value = txtStatus.Text;

                    Utilities.ExecuteParameterQuery(cmdSales);
                    OleDbDataReader idReader = cmdID.ExecuteReader();

                    while (idReader.Read())
                    {
                        saleID = idReader.GetInt32(0);
                    }

                    cmdSalesLine.Parameters.Add("@SalesID", OleDbType.Integer).Value = saleID;
                    cmdSalesLine.Parameters.Add("@ProductName", OleDbType.Integer).Value = int.Parse(listProducts.Text);
                    cmdSalesLine.Parameters.Add("@Quantity", OleDbType.Integer).Value = int.Parse(txtQuantity.Text);
                    cmdSalesLine.Parameters.Add("@TotalPrice", OleDbType.Integer).Value = int.Parse(txtTotalPrice.Text);
                    Utilities.ExecuteParameterQuery(cmdSalesLine);
                    conn.Close();

                }
                catch (Exception ex)
                {
                    
                }
            }
        }

        protected void btn_gethelp_Click(object sender, EventArgs e)
        {
           // Page.ClientScript.
        }

        protected void btnhelp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/helpscreenSALESNEW.png");
        }


    }
}