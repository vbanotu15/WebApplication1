using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace WebApplication1.DataAccess
{
    public class BLogic
    {
        DataAccess.DALOracle dalPrice = new DataAccess.DALOracle();
        DataAccess.DALSQL sqlDal = new DataAccess.DALSQL();
      
        #region "Price List"

        public DataTable GetSPTable(string SPname, string param_)
        {
            return dalPrice.GetSPTable(SPname, param_);
        }
        //NEW
        public DataTable GetSPSearch_PriceList(string Section_)
        {
            return dalPrice.GetSPSearch_PriceList("OVDBA.SPDEV_PriceList_SEARCH1", Section_);
        }

        //OLD
        public DataTable GetSPSearch_PriceList(string SPname,string size_, string wtft_, string price_,string Prodsection_)
        {
            return dalPrice.GetSPSearch_PriceList(SPname,size_,wtft_,price_, Prodsection_);
        }

        public DataTable GetPDFdocument(string param_)
        {
           return sqlDal.dbGetCommand("SELECT [DocumentID] ,[Name] ,[URL] ,[LastUpdated] ,[ChangeUser],[ChangeIP],[WebManaged] ,[Active] ,[Data] FROM [ASPNETDB].[dbo].[sdinet_Document] where Name='"+ param_ + "'");

        }
        #endregion


        #region "Beam List" 
        //NEW
        public DataTable GetSPSearch_BeamList(string section_)
        {
            return dalPrice.GetSPSearch_BundleList("OVDBA.SPDEV_BundleeList_SEARCH1", section_);
        }
        
        //OLD
        public DataTable GetSPSearch_BeamList(string SPname, string section_, string product_, string pcs3065_, string wxh_, string ProdBeamSection_)
        {
            return dalPrice.GetSPSearch_BundleList(SPname, section_, product_, pcs3065_, wxh_, ProdBeamSection_);
        }

        #endregion


        #region "Inventory List"
        public DataTable GetSPSearch_InventoryList(string SPname, string classId_, string prod_Size_, string length_, string grade_)
        {
            return dalPrice.GetSPSearch_InventoryList(SPname, classId_, prod_Size_, length_, grade_);
        }
        #endregion

        #region "Freight Rate"
        public DataTable GetSPSearch_FreightRate(string city_, string zip_)
        {
            return dalPrice.GetSPSearch_FreightRate("OVDBA.SPDEV_FrightRate_Search", city_, zip_);
        }
        #endregion


        #region "Customer -Reporting"
        public DataTable GetCompanySQL()
        {
            return sqlDal.dbGetCommand("SELECT CUSTOMERNAME, CUSTOMERNUM FROM [ASPNETDB].[dbo].sdinet_Customer ORDER BY CUSTOMERNAME");
        }

        public DataTable GetCompanySQL(string param_)
        {
            return sqlDal.dbGetCommand("SELECT CUSTOMERNAME, CUSTOMERNUM FROM [ASPNETDB].[dbo].sdinet_Customer where CUSTOMERNUM= "+ param_ +" ORDER BY CUSTOMERNAME");
        }

        public DataTable GetSPSearch_CustomerLocation(string CustId_)
        {
            return dalPrice.GetSPSearch_CustomerLocation("OVDBA.SPDEV_CustomerLocation", CustId_);            
        }

        public DataTable GetSPSearch_OrderStatus(string CustId_, string AddrCode_)
        {
            return dalPrice.GetSPSearch_OrderStatus("OVDBA.SPDEV_CustomerOrderStatus", CustId_, AddrCode_);
        }

        #endregion

        #region "Membership / Login"
        public DataTable GetUsername(string user_name)
        {
            return sqlDal.dbGetCommand("select CustomerId,UserName from[ASPNETDB].[dbo].[aspnet_Users] where username = '" + user_name + "' and Active=1");
        }

        public DataTable GetPassword(string user_name)
        {
            return sqlDal.dbGetCommand("SELECT PASSWORDSALT,password FROM ASPNET_MEMBERSHIP WHERE USERID=(SELECT USERID FROM ASPNET_USERS WHERE USERNAME='" + user_name + "')");
        }
        #endregion
    }
}