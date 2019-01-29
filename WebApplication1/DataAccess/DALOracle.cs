using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;
using System.Text;

namespace WebApplication1.DataAccess
{
    public class DALOracle
    {
        string connecionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        public DataTable GetSPTable(string Procname,string Param)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;
                if(Param !=null)
                    objCmd.Parameters.Add("param_", OracleType.VarChar).Value = Param; // Input id

                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }                    
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }
        //NEW
        public DataTable GetSPSearch_PriceList(string Procname, string PROD_form_)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;
               
                objCmd.Parameters.Add("PROD_form_", OracleType.VarChar).Value = PROD_form_; // Input id
                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }

        //OLD
        public DataTable GetSPSearch_PriceList(string Procname, string SIZE_, string WTFT_, string PRICE_, string PROD_form_)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.Parameters.Add("SIZE_", OracleType.VarChar).Value = SIZE_; // Input id
                objCmd.Parameters.Add("WTFT_", OracleType.VarChar).Value = WTFT_; // Input id
                objCmd.Parameters.Add("PRICE_", OracleType.VarChar).Value = PRICE_; // Input id
                objCmd.Parameters.Add("PROD_form_", OracleType.VarChar).Value = PROD_form_; // Input id

                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }

        //New
        public DataTable GetSPSearch_BundleList(string Procname, string Section_)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.Parameters.Add("SECTION_", OracleType.VarChar).Value = Section_; // Input id                

                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

          }

        // Old 
        public DataTable GetSPSearch_BundleList(string Procname, string Section_, string product_, string pcs3065_, string wxh_, string ProdBeamSection_)
        {            
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.Parameters.Add("SECTION_", OracleType.VarChar).Value = Section_; // Input id
                objCmd.Parameters.Add("Product_", OracleType.VarChar).Value = product_; // Input id
                objCmd.Parameters.Add("bundle_pieces_", OracleType.VarChar).Value = pcs3065_; // Input id
                objCmd.Parameters.Add("WxH_", OracleType.VarChar).Value = wxh_; // Input id
                objCmd.Parameters.Add("product_form_", OracleType.VarChar).Value = ProdBeamSection_; // Input id
                
                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }

        
        public DataTable GetSPSearch_InventoryList(string Procname, string classId_, string prod_Size_, string length_, string grade_)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.Parameters.Add("ClassId_", OracleType.VarChar).Value = classId_; // Input id
                objCmd.Parameters.Add("Prod_Size_", OracleType.VarChar).Value = prod_Size_; // Input id
                objCmd.Parameters.Add("Length_", OracleType.VarChar).Value = length_; // Input id
                objCmd.Parameters.Add("Grade_", OracleType.VarChar).Value = grade_; // Input id
               
                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }

        public DataTable GetSPSearch_FreightRate(string Procname, string city_, string zip_)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.Parameters.Add("as_city", OracleType.VarChar).Value = city_; // Input id
                objCmd.Parameters.Add("as_postal_code", OracleType.VarChar).Value = zip_; // Input id               

                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }


        // Customer Reporting
        public DataTable GetSPSearch_CustomerLocation(string Procname, string param_)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.Parameters.Add("param_", OracleType.Int32).Value = param_; // Input id                

                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }
        

          public DataTable GetSPSearch_OrderStatus(string Procname, string param_, string AddrCode_)
        {
            DataTable dt = new DataTable();
            using (OracleConnection objConn = new OracleConnection(connecionString))
            {
                OracleCommand objCmd = new OracleCommand();
                objCmd.Connection = objConn;
                objCmd.CommandText = Procname;
                objCmd.CommandType = CommandType.StoredProcedure;

                objCmd.Parameters.Add("param_", OracleType.Int32).Value = param_; // Input id                
                objCmd.Parameters.Add("AddrCode_", OracleType.VarChar).Value = AddrCode_; // Input id  

                objCmd.Parameters.Add("cursor_", OracleType.Cursor).Direction = ParameterDirection.Output;

                try
                {
                    objConn.Open();
                    objCmd.ExecuteNonQuery();
                    using (OracleDataAdapter da = new OracleDataAdapter(objCmd))
                    {
                        da.Fill(dt);
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine("Exception: {0}", ex.ToString());
                }
                objConn.Close();
                return dt;
            }

        }

    }
}