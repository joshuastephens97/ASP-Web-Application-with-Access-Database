using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace WebSparkly.Data
{
    /// <summary>
    /// qrySalesHeader entity
    /// </summary>
    public class SaleHeader
    {
        public int ID { get; set; }
        public DateTime SaleTime { get; set; }
        public string Operator { get; set; }

        public SaleHeader() { }

        public SaleHeader(DataRow r)
        {
            ID = (int)r["SaleID"];
            SaleTime = (DateTime)r["SaleTime"];
            Operator = (string)r["OperatorName"];
        }
    }
}