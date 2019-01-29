using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Report_Container : System.Web.UI.Page
    {
        DataAccess.BLogic BalReport = new DataAccess.BLogic();

        FilePath logo = new FilePath();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] == "OrderStatus")
            {
                DataTable dtOrderStatus = new DataTable();
                dtOrderStatus = BalReport.GetSPSearch_OrderStatus(Request.QueryString["input"].ToString(), Request.QueryString["AddCode"].ToString());
                if (dtOrderStatus.Rows.Count > 0)
                {
                    GvOrderStatus.DataSource = dtOrderStatus;
                    GvOrderStatus.DataBind();

                }
            }
        }
    }
}