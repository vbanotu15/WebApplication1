using ClosedXML.Excel;
using System;
using System.Data;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Resources
{
    public partial class bundle_chart : System.Web.UI.Page
    {
        DataAccess.BLogic BalBundle = new DataAccess.BLogic();

        FilePath logo = new FilePath();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                lblReportDate.Text = DateTime.Now.ToString("MM/dd/yyyy");
                GetRecord();
            }
        }

        #region "Get Record"

        public void GetRecord()

        {
            DataTable dtBundleChart = new DataTable();
            if (Cache["BundleChart"] == null)
            {
                dtBundleChart = TableProductAngle(BalBundle.GetSPTable("OVDBA.SPDEV_BundleList_BundleChart", null));
                Cache["BundleChart"] = dtBundleChart;
            }
            else
                dtBundleChart = (DataTable)Cache["BundleChart"];

            //------------------------Beam ....................//
            //if (Cache["Beam"].ToString() == "T")
            DataTable dtBeam = new DataTable();

            if (Cache["BeamBundle"] == null)
            {
                dtBeam = BalBundle.GetSPSearch_BeamList("beam");
                Cache["BeamBundle"] = dtBeam;
            }
            else
                dtBeam = (DataTable)Cache["BeamBundle"];

            if (dtBeam.Rows.Count > 0)
  
            {
                GvBeamBundle.DataSource = dtBeam;
                GvBeamBundle.DataBind();
            }    
            if (dtBundleChart.Rows.Count > 0)
            {
                GvBundleChartBeam.DataSource = dtBundleChart;
                GvBundleChartBeam.DataBind();
            }

            //------------------------------MERCHANT ---------------------------------------------------
            //if (Cache["Merchant"].ToString() == "T")
            DataTable dtMerchant = new DataTable();
            if (Cache["MerchantBundle"] == null)
            {
                dtMerchant = BalBundle.GetSPSearch_BeamList("merchant");
                Cache["MerchantBundle"] = dtMerchant;
              
            }
            else
                dtMerchant = (DataTable)Cache["MerchantBundle"];

            if (dtMerchant.Rows.Count > 0) 
            {
                GvMerchantBundle.DataSource = dtMerchant;
                GvMerchantBundle.DataBind();
            }

            if (dtBundleChart.Rows.Count > 0)
            
            {

                GvBundleChartMerchant.DataSource = dtBundleChart;
                GvBundleChartMerchant.DataBind();
            
            }
        }
        #endregion
        private DataTable TableProductAngle(DataTable dtO)
        {
            DataTable dtTemp = new DataTable();
            dtTemp.Columns.Add("PRODUCT", typeof(string));
            dtTemp.Columns.Add("Thickness", typeof(string));
            dtTemp.Columns.Add("LBFT", typeof(string));
            dtTemp.Columns.Add("PCS_2040", typeof(string));
            dtTemp.Columns.Add("PCS_4160", typeof(string));

            DataRow drTemp;
            drTemp = dtTemp.NewRow();

            foreach (DataRow dr in dtO.Rows)
            {
                bool Execute = true;
                if (dtTemp.Rows.Count > 0)
                {
                    DataRow[] foundRows = dtTemp.Select("PRODUCT= '" + dr["PRODUCT"] + "' AND Thickness= '" + dr["Thickness"] + "' AND LBFT= '" + dr["LBFT"] + "'");
                    foreach (DataRow dr11 in foundRows)
                    {
                        drTemp["PCS_4160"] = dr["PCS_2040"];
                        Execute = false;
                    }
                }

                if (Execute)
                {
                    drTemp = dtTemp.NewRow();
                    drTemp["PRODUCT"] = dr["PRODUCT"];
                    drTemp["Thickness"] = dr["Thickness"];
                    drTemp["LBFT"] = dr["LBFT"];
                    drTemp["PCS_2040"] = dr["PCS_2040"];
                    dtTemp.Rows.Add(drTemp);
                }

            }
            return dtTemp;
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
        public override void VerifyRenderingInServerForm(Control control)
        {
            //
        }

        protected void btnPDFDownload_Click(object sender, ImageClickEventArgs e)
        {
            // Download PDF from SQL Server table
            DownloadPdfSQL("Bundle Chart");


            // Download PDF for Page Table in Oracle
            //DownloadPdfOracle();
        }



        public void DownloadPdfSQL(string param_)
        {
            DataTable dt = BalBundle.GetPDFdocument(param_);

            if (dt != null && dt.Rows.Count > 0)
            {
                string URL = dt.Rows[0]["URL"].ToString();
                Byte[] bytes = (Byte[])dt.Rows[0]["Data"];

                Response.Clear();
                Response.Buffer = false;
                Response.AppendHeader("Content-Type", "application/pdf");
                Response.AppendHeader("Content-Transfer-Encoding", "binary");
                if (URL == null || URL == "")
                    Response.AppendHeader("Content-Disposition", "attachment; filename=List.pdf");
                else
                    Response.AppendHeader("Content-Disposition", "attachment; filename=" + URL);

                Response.BinaryWrite(bytes);
                Response.End();
            }
        }

        public void DownloadPdfOracle()
        {
            StringBuilder sb = new StringBuilder();
            StringWriter tw = new StringWriter(sb);
            HtmlTextWriter hw = new HtmlTextWriter(tw);

            string strMap = Server.MapPath(logo.LogoP());

            GvBeamBundle.ShowHeader = true;
            GvMerchantBundle.ShowHeader = true;


            //Table1.Width = "80%";
            //Table1.RenderControl(hw);


            StringBuilder sbHeader = new StringBuilder();
            sbHeader.Append("<table style='width: 100%; border:1px solid black; padding:0.4em; margin:0;  padding-top: 0px; vertical-align: top'> <tr style='padding-top: 0px; vertical-align: top;border-width: 2px;'><td>");
            sbHeader.Append("<img src='" + strMap + "' Width='220px' Height='50px' /><br /><p Style='font-weight: bold; font-size: large; font-family: Arial;'>Bundle Price List Available for Sale for : ");
            sbHeader.Append("" + lblReportDate.Text + " </p> <br /><p Style='font-size: medium;color:Red; '> $1/CWT EXTRA FOR STOCK SALES ON BEAM PRICE LIST SIZES - EFFECTIVE : " + lblReportDate.Text + " ");
            sbHeader.Append("</p></td><td style='text-align: center; width: 50%; padding-top: 0px; vertical-align: top'> <p Style='font-size: large;font-weight: bold;'> Structural and Rail Division </P> 2601 South 700 East ");
            sbHeader.Append("Columbia City, Indiana 46725<br />Phone (260) 625-8100<br />Fax: (260) 625-8770<br />Toll Free: (866) 740-8700<br />Sales office hours:<br />M - F 7:30 am - 5:30 pm EST");
            sbHeader.Append("</td></tr></table>");

            StringBuilder sbFooter = new StringBuilder();
            sbFooter.Append("<table style='width:100%;'> <tr> <td align='left' style='width:50%; padding-left :0px ;'>W/H= # Wide by # High </td> <td align='right' style='width:50%; padding-right :0px'> F-6400-006-018 Rev 24 " + lblReportDate.Text + "</td> </tr> </table>");

            String HTMLContent = sbHeader.ToString() + sb.ToString() + sbFooter.ToString(); ;

            MemoryStream ms = new MemoryStream();
            byte[] stringByteArray = PdfSharpConvert(HTMLContent);
            ms.Write(stringByteArray, 0, stringByteArray.Length);
            ms.Position = 0;

            Response.Clear();
            Response.Buffer = false;
            Response.AppendHeader("Content-Type", "application/pdf");
            Response.AppendHeader("Content-Transfer-Encoding", "binary");



            Response.AppendHeader("Content-Disposition", "attachment; filename=BundleList.pdf");



            Response.BinaryWrite(ms.GetBuffer());
            ms.Close();
            Response.End();

        }

        protected void btnXlsDownload_Click(object sender, EventArgs e)
        {
            using (XLWorkbook wb = new XLWorkbook())
            {


                DataTable dtBeamBundle = new DataTable();
                dtBeamBundle = (DataTable)Cache["BeamBundle"];
                dtBeamBundle.TableName = "Beam Bundle Section";
                wb.Worksheets.Add(dtBeamBundle);




                DataTable dtMerchantBundleSection = new DataTable();
                dtMerchantBundleSection = (DataTable)Cache["MerchantBundle"];
                dtMerchantBundleSection.TableName = "Merchant Beam Section";
                wb.Worksheets.Add(dtMerchantBundleSection);

                DataTable dtBundleChart = new DataTable();
                dtBundleChart = (DataTable)Cache["BundleChart"];
                dtBundleChart.TableName = "Bundle Chart";
                wb.Worksheets.Add(dtBundleChart);

                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";


                Response.AddHeader("content-disposition", "attachment;filename=BundleList.xlsx");



                using (MemoryStream MyMemoryStream = new MemoryStream())
                {
                    wb.SaveAs(MyMemoryStream);
                    MyMemoryStream.WriteTo(Response.OutputStream);
                    Response.Flush();
                    Response.End();
                }

            }
        }
        protected void PrepareForExport(GridView Gridview)

        {

            //Gridview.AllowPaging = Convert.ToBoolean(rbPaging.SelectedItem.Value);
            // Gridview.DataBind();

            //Change the Header Row back to white color

            Gridview.HeaderRow.Style.Add("background-color", "#FFFFFF");

            //Apply style to Individual Cells

            for (int k = 0; k < Gridview.HeaderRow.Cells.Count; k++)
            {
                Gridview.HeaderRow.Cells[k].Style.Add("background-color", "green");
            }
            for (int i = 0; i < Gridview.Rows.Count; i++)
            {

                GridViewRow row = Gridview.Rows[i];

                //Change Color back to white

                row.BackColor = System.Drawing.Color.White;

                //Apply text style to each Row

                row.Attributes.Add("class", "textmode");

                //Apply style to Individual Cells of Alternating Row

                if (i % 2 != 0)
                {
                    for (int j = 0; j < Gridview.Rows[i].Cells.Count; j++)
                    {
                        row.Cells[j].Style.Add("background-color", "#C2D69B");
                    }
                }
            }
        }

        public void ExportToExcel(DataTable dt)
        {
            if (dt.Rows.Count > 0)
            {

                //Get the HTML for the control.
                // dgGrid.RenderControl(hw);
                //Write the HTML back to the browser.
                //Response.ContentType = application/vnd.ms-excel;
                Response.ContentType = "application/vnd.ms-excel";
                //  Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename + "");
                this.EnableViewState = false;
                //  Response.Write(tw.ToString());
                Response.End();
            }
        }

        
        }
    }
