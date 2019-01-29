using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class DownloadPDF : System.Web.UI.Page
    {
        DataAccess.BLogic BalPrice = new DataAccess.BLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["document"] == "PriceAnnouncement")    
                DownloadPdfSQL("Price Announcement");
            else if (Request.QueryString["document"] == "credit-application")
                DownloadPdfSQL("Credit Application");
            else if (Request.QueryString["document"] == "terms-and-conditions")
                DownloadPdfSQL("Terms and Conditions");
            else if (Request.QueryString["document"] == "structural-claim-form")
                DownloadPdfSQL("Structural Claim Form");
            else if (Request.QueryString["document"] == "leed-letter")
                DownloadPdfSQL("LEED Letter");
            else if (Request.QueryString["document"] == "abs-certificate")
                DownloadPdfSQL("ABS Certificate");
            else if (Request.QueryString["document"] == "iso-9001-2008")
                DownloadPdfSQL("ISO 9001:2015");
            else if (Request.QueryString["document"] == "AAR-Certification")
                DownloadPdfSQL("AAR Certification");
            else if (Request.QueryString["document"] == "rolling-schedule")
                DownloadPdfSQL("Rolling Schedule");
            //else
            //    DownloadPdfSQL("Credit Application");
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