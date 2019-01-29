using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Resources
{
    public partial class structural_product_guides : System.Web.UI.Page
    {
        public partial class DownloadPDF : System.Web.UI.Page
        {
            DataAccess.BLogic BalPrice = new DataAccess.BLogic();

            protected void Page_Load(object sender, EventArgs e)
            {
                if (Request.QueryString["document"] == "PriceAnnouncement")
                    DownloadPdfSQL("Price Announcement");
                else if (Request.QueryString["document"] == "credit-application")
                    DownloadPdfSQL("Credit Application");
            }

            public void DownloadPdfSQL(string param_)
            {
                DataTable dt = BalPrice.GetPDFdocument(param_);

                if (dt != null && dt.Rows.Count > 0)
                {
                    string URL = dt.Rows[0]["URL"].ToString();

                    if (URL != "")
                    {
                        Byte[] bytes = (Byte[])dt.Rows[0]["Data"];

                        Response.Clear();
                        Response.Buffer = false;
                        Response.AppendHeader("Content-Type", "application/pdf");
                        Response.AppendHeader("Content-Transfer-Encoding", "binary");
                        Response.AppendHeader("Content-Disposition", "attachment; filename=" + URL);
                        Response.BinaryWrite(bytes);
                        Response.End();
                    }
                    else
                    {
                        Response.Write("The document you requested could not be found");
                    }
                }
            }
        }
    }
}

    
    