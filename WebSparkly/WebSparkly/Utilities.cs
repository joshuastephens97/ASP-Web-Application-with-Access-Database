using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data;

namespace WebSparkly
{
    public static class Utilities
    {
        public static string connString = @"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|sparklydb2015.accdb";
        public static string ClientsTable = "tblClients";
        public static string ProductsTable = "tblProducts";
        public static string SalesTable = "tblSales";
        public static string SalesLineTable = "tblSalesLine";
        public static string UserQuery = "UserQuery";

        //Executes the given SQL query 
        public static void ExecuteNonQuery(string query)
        {
            OleDbConnection conn = new OleDbConnection(connString);
            conn.Open();
            OleDbCommand cmd = new OleDbCommand(query, conn);
            cmd.ExecuteNonQuery();
        }

        //Executes a SQL query with parameters
        public static void ExecuteParameterQuery(OleDbCommand cmd)
        {
            OleDbConnection conn = new OleDbConnection(connString);
            conn.Open();
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
        }

        //Deletes a row from a selected table where the key = id
        public static void Delete(string tbl, string key, int id)
        {
            string query = string.Format("DELETE FROM {0} WHERE {1}={2}", tbl, key, id);
            ExecuteNonQuery(query);
        }

        //Encrypts the given string 
        public static string Encrypt(string password)
        {
            byte[] data = System.Text.Encoding.ASCII.GetBytes(password);
            data = new System.Security.Cryptography.SHA256Managed().ComputeHash(data);
            string encryptedPassword = System.Text.Encoding.ASCII.GetString(data);
            return encryptedPassword;
        }

    }
}