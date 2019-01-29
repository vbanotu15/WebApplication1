using ClosedXML.Excel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Resources
{
    public partial class Get_freight_rate : System.Web.UI.Page
    {
        DataAccess.BLogic BalFre = new DataAccess.BLogic();
        FilePath logo = new FilePath();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetRate_Click(object sender, EventArgs e)
        {
            if (txtCity.Text == "")
                txtCity.Text = " ";

            DataTable dtFreight = BalFre.GetSPSearch_FreightRate(txtCity.Text, txtZip.Text);
            if (dtFreight.Rows.Count > 0)
            {
                txtSurchageRate.Text = (Convert.ToDouble(dtFreight.Rows[0]["TRUCK_SURCHARGE"]) * 100).ToString() + "%";
                GvFreight.DataSource = dtFreight;
                GvFreight.DataBind();
                pan1.Visible = true;
                PanNoRecord.Visible = false;
                Cache["dtFreight"] = dtFreight;
            }
            else
            {
                pan1.Visible = false;
                PanNoRecord.Visible = true;
            }
        }

        protected void btnPDFDownload_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            StringWriter tw = new StringWriter(sb);
            HtmlTextWriter hw = new HtmlTextWriter(tw);

            string strMap = Server.MapPath(logo.LogoP());
            //txtSurchageRate.RenderControl(hw);
            Table1.RenderControl(hw);

            StringBuilder sbHeader = new StringBuilder();
            sbHeader.Append("<table style='width: 100%;  border:1px solid black; padding:0.4em; margin:0; padding-top: 0px; vertical-align: top'> <tr style='padding-top: 0px; vertical-align: top;border-width: 2px;'><td>");
            sbHeader.Append("<img src='" + strMap + "' Width='220px' Height='50px' /><br /><p Style='font-weight: bold; font-size: large; font-family: Arial;'>FREIGHT RATE Available for Sale for : ");
            sbHeader.Append("" + DateTime.Now.ToString("MM/dd/yyyy") + " </p> <br /><p Style='font-size: medium;color:Red; '> $1/CWT EXTRA FOR STOCK SALES ON FREIGHT RATE LIST - EFFECTIVE : " + DateTime.Now.ToString("MM/dd/yyyy") + " ");
            sbHeader.Append("</p></td><td style='text-align: center; width: 50%; padding-top: 0px; vertical-align: top'> ");
            sbHeader.Append(" <p Style='font-size: large;font-weight: bold;'> Structural and Rail Division </P> 2601 South 700 East Columbia City,<br /> Indiana 46725<br/>Phone (260) 625-8100<br />Fax: (260) 625-8770<br />Toll Free: (866) 740-8700<br />Sales office hours:<br />M - F 7:30 am - 5:30 pm EST");
            sbHeader.Append("</td></tr></table>");

            string strFooter = "Inventory subject to prior sale. Please inquire on pricing. Material test reports are available for all of the above. " + DateTime.Now.ToString("MM/dd/yyyy");

            String HTMLContent = sbHeader.ToString() + sb.ToString() + strFooter;

            MemoryStream ms = new MemoryStream();
            byte[] stringByteArray = PdfSharpConvert(HTMLContent);
            ms.Write(stringByteArray, 0, stringByteArray.Length);
            ms.Position = 0;

            Response.Clear();
            Response.Buffer = false;
            Response.AppendHeader("Content-Type", "application/pdf");
            Response.AppendHeader("Content-Transfer-Encoding", "binary");
            Response.AppendHeader("Content-Disposition", "attachment; filename=FreightRate.pdf");

            //byte[] bytes = ms.ToArray();
            //Response.AddHeader("Content-Length", "");

            Response.BinaryWrite(ms.GetBuffer());
            //Response.BinaryWrite(bytes);
            ms.Close();
            Response.End();
        }

        protected void btnXlsDownload_Click(object sender, EventArgs e)
        {
            DataTable dtInven = new DataTable();
            dtInven = (DataTable)Cache["dtFreight"];
            ExportToExcel(dtInven);
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //
        }
     
        public void ExportToExcel(DataTable dtFreight)
        {
            using (XLWorkbook wb = new XLWorkbook())
            {
                dtFreight.TableName = "Freight Rate";
                wb.Worksheets.Add(dtFreight);
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;filename=FreightRateList.xlsx");

                using (MemoryStream MyMemoryStream = new MemoryStream())
                {
                    wb.SaveAs(MyMemoryStream);
                    MyMemoryStream.WriteTo(Response.OutputStream);
                    Response.Flush();
                    Response.End();
                }
            }
        }

        public static Byte[] PdfSharpConvert(String html)
        {
            Byte[] res = null;
            using (MemoryStream ms = new MemoryStream())
            {
                var pdf = TheArtOfDev.HtmlRenderer.PdfSharp.PdfGenerator.GeneratePdf(html, PdfSharp.PageSize.A4);
                pdf.Save(ms);
                res = ms.ToArray();
            }
            return res;
        }
    }
}