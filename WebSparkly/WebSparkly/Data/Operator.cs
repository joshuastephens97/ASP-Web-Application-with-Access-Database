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
using System.Drawing;
using System.Text;
using System.Windows;
namespace WebSparkly
{
    public class Operator
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Pin { get; set; }
        public bool Admin { get; set; }
        public bool Sales { get; set; }

        public Operator() { } // default constructor

        /// <summary>
        /// Constructor creates a data object from a DataRow
        /// </summary>
        /// <param name="r">Row to convert</param>
        public Operator(DataRow r)
        {
            ID = (int)r["OperatorID"];
            Name = (string)r["OperatorName"];
            Pin = (string)r["OperatorPin"];
            Admin = (bool)r["OperatorAdmin"];
            Sales = (bool)r["OperatorSales"];
        }
    }
}
