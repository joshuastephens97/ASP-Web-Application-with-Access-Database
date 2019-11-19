using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace WebSparkly
{
    public class SaleRecord
    {
        public int ID { get; set; }
        public string ClientsName { get; set; }
        public string ProductName { get; set; }
        public int Quantity { get; set; }
        public int TotalPrice { get; set; }
        public DateTime Date { get; set; }
        public string Delivery { get; set; }

        public SaleRecord() { }

        public SaleRecord(OleDbDataReader reader)
        {
            ID = (int)reader["ID"];
            ClientsName = (string)reader["ClientsName"];
            ProductName = (string)reader["ProductsName"];
            Quantity = (int)reader["SalesLineQuantity"];
            TotalPrice = (int)reader["SalesLinePrice"];
            Date = (DateTime)reader["SalesDate"];
            Delivery = (string)reader["SalesDelivery"];
        }

        public SaleRecord(int ID)
        {

        }
    }
}