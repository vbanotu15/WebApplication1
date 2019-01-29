using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;

namespace WebApplication1.DataAccess
{
    public class DataAccessLayer
    {
        string connecionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        /// <summary>
        /// DML Command
        /// </summary>
        /// <param name="queryString"></param>
        public void dbCreateCommand(string queryString)
        {
            using (OracleConnection conn = new OracleConnection(connecionString))
            {
                try
                {
                    using (OracleCommand cmd = new OracleCommand(queryString, conn))
                    {
                        cmd.Connection.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
                catch
                {
                    conn.Close();
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        /// <summary>
        /// Get Command from Query
        /// </summary>
        /// <param name="queryString"></param>
        /// <returns></returns>
        public DataTable dbGetCommand(string queryString)
        {
            DataTable dt = new DataTable();
            using (OracleConnection conn = new OracleConnection(connecionString))
            {
                try
                {
                    using (OracleDataAdapter adapter = new OracleDataAdapter(queryString, conn))
                    {
                        adapter.Fill(dt);
                    }
                }
                catch
                {
                    conn.Close();
                }
                return dt;
            }
        }
        /// <summary>
        /// Execute sql to return single value
        /// </summary>
        /// <param name="queryString"></param>
        /// <returns></returns>
        public string dbGetCommandScalar(string queryString)
        {
            string str = string.Empty;

            using (OracleConnection conn = new OracleConnection(connecionString))
            {
                try
                {
                    using (OracleCommand cmd = new OracleCommand(queryString, conn))
                    {
                        cmd.Connection.Open();
                        str = Convert.ToString(cmd.ExecuteScalar());
                    }
                }
                catch
                {
                    conn.Close();
                }
                finally
                {
                    conn.Close();
                }
                return str;
            }
        }


    }
}