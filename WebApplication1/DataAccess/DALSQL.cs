using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1.DataAccess
{
    public class DALSQL
    {   
        string connecionString = ConfigurationManager.ConnectionStrings["SQLServer"].ConnectionString;

        /// <summary>
        /// DML Command
        /// </summary>
        /// <param name="queryString"></param>
        public void dbCreateCommand(string queryString)
        {
            using (SqlConnection conn = new SqlConnection(connecionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, conn))
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
            using (SqlConnection conn = new SqlConnection(connecionString))
            {
                try
                {
                    using (SqlDataAdapter adapter = new SqlDataAdapter(queryString, conn))
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

            using (SqlConnection conn = new SqlConnection(connecionString))
            {
                try
                {
                    using (SqlCommand cmd = new SqlCommand(queryString, conn))
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