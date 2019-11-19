using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace WebSparkly.Data
{
    /// <summary>
    /// tblProducts entity
    /// </summary>
    public class Product
    {
        public int ID { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }

        public Product() { }

        public Product(DataRow r)
        {
            ID = (int)r["ProductID"];
            Description = (string)r["ProductDescription"];
            Price = (decimal)r["ProductPrice"];
        }

        public void AsRow(DataRow r)
        {
            r["ProductID"] = ID;
            r["ProductDescription"] = Description;
            r["ProductPrice"] = Price;
        }
    }
}
