using ClosedXML.Excel;
using System;
using System.Data;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Resources
{
    public partial class rolling_schedule : System.Web.UI.Page
    {            
        DataAccess.BLogic BalRolling = new DataAccess.BLogic();
        FilePath logo = new FilePath();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{                 
            //}
        }
       
        public override void VerifyRenderingInServerForm(Control control)
        {
            //
        }

        protected void btnPDFDownload_Click(object sender, EventArgs e)
        {            
            DownloadPdfSQL("Rolling Schedule");
        }      


        public void DownloadPdfSQL(string param_)
        {
            DataTable dt = BalRolling.GetPDFdocument(param_);

            if (dt != null && dt.Rows.Count > 0)
            {
                string URL = dt.Rows[0]["URL"].ToString();                
                Byte[] bytes = (Byte[])dt.Rows[0]["Data"];

                Response.Clear();
                Response.Buffer = false;
                Response.AppendHeader("Content-Type", "application/pdf");
                Response.AppendHeader("Content-Transfer-Encoding", "binary");
                if(URL ==null || URL == "")
                    Response.AppendHeader("Content-Disposition", "attachment; filename=RollingList.pdf");
                else
                    Response.AppendHeader("Content-Disposition", "attachment; filename=" + URL);

                Response.BinaryWrite(bytes);               
                Response.End();
            }
        }
        
    }
}