using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.OleDb;
using System.Data;
using WebSparkly;
using WebSparkly.Data;

namespace WebSparkly.Data
{

    public class OlePackage
    {
        #region props

        public string Query { get; set; }
        public OleDbDataAdapter Adapter { get; set; }
        public OleDbCommandBuilder CommandBuilder { get; set; }
        public DataTable Table { get; set; }
        //public BindingSource Source { get; set; }

        #endregion props

        #region init


        public OlePackage(string table, string connection, string args = null)
        {
            Query = "SELECT * FROM " + table;
            if (!string.IsNullOrEmpty(args))
            {

                Query += " " + args;
            }
            Adapter = new OleDbDataAdapter(Query, connection);
            CommandBuilder = new OleDbCommandBuilder(Adapter);
            Table = new DataTable();
            Adapter.Fill(Table);


        }

        #endregion init

        #region data ops

        public void Update()
        {
            Adapter.Update(Table);
        }


        public DataRow GetRow(string query)
        {
            DataRow[] rows = Table.Select(query);
            if (rows.Length > 0)
            {
                return rows[0];
            }
            else
            {
                return null;
            }
        }

        #endregion data ops
    }
}
