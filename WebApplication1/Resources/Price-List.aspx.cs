using ClosedXML.Excel;
using System;
using System.Data;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Resources
{
    public partial class Price_List : System.Web.UI.Page
    {            
        DataAccess.BLogic BalPrice = new DataAccess.BLogic();
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
            //------------------------Beam ....................//

            DataTable dtBeam;
            dtBeam = new DataTable();

            if (Cache["WideFlange"] == null)
            {
                dtBeam = BalPrice.GetSPSearch_PriceList("W");
                Cache["WideFlange"] = dtBeam;
            }
            else
                dtBeam = (DataTable)Cache["WideFlange"];
            
            if (dtBeam.Rows.Count > 0)
            {
                GvWideFlange.DataSource = dtBeam;
                GvWideFlange.DataBind();                
            }
           
            dtBeam = new DataTable();
            if (Cache["HPileSection"] == null)
            {
                dtBeam = BalPrice.GetSPSearch_PriceList("HP");
                Cache["HPileSection"] = dtBeam;
            }
            else
                dtBeam = (DataTable)Cache["HPileSection"];           
            
            if (dtBeam.Rows.Count > 0)
            {
                GvHPileSection.DataSource = dtBeam;
                GvHPileSection.DataBind();               
            }           

            dtBeam = new DataTable();
            if (Cache["SB"] == null)
            {
                dtBeam = BalPrice.GetSPSearch_PriceList("S");
                Cache["SB"] = dtBeam;
            }
            else
                dtBeam = (DataTable)Cache["SB"];
                       
            if (dtBeam.Rows.Count > 0)
            {
                GvSB.DataSource = dtBeam;
                GvSB.DataBind();                
            }           

            dtBeam = new DataTable();
            if (Cache["MHB"] == null)
            {
                dtBeam = BalPrice.GetSPSearch_PriceList("M");
                Cache["MHB"] = dtBeam;
            }
            else
                dtBeam = (DataTable)Cache["MHB"];
                        
            if (dtBeam.Rows.Count > 0)
            {
                gvMHB.DataSource = dtBeam;
                gvMHB.DataBind();                
            }           

            //------------------------------MERCHANT ---------------------------------------------------
            DataTable dtMerchant;
            dtMerchant = new DataTable();
            if (Cache["MerchantC"] == null)
            {
                dtMerchant = BalPrice.GetSPSearch_PriceList("C");
                Cache["MerchantC"] = dtMerchant;
            }
            else
                dtMerchant = (DataTable)Cache["MerchantC"];

            if (dtMerchant.Rows.Count > 0)
            {
                GvMerchantC.DataSource = dtMerchant;
                GvMerchantC.DataBind();                
            }          

            dtMerchant = new DataTable();
            if (Cache["MerchantMC"] == null)
            {
                dtMerchant = BalPrice.GetSPSearch_PriceList("MC");
                Cache["MerchantMC"] = dtMerchant;
            }
            else
                dtMerchant = (DataTable)Cache["MerchantMC"];
                       
            if (dtMerchant.Rows.Count > 0)
            {
                GvMerchantMC.DataSource = dtMerchant;
                GvMerchantMC.DataBind();                
            }
          
            dtMerchant = new DataTable();
            if (Cache["MerchantLEqual"] == null)
            {
                dtMerchant = BalPrice.GetSPSearch_PriceList("Le");
                Cache["MerchantLEqual"] = dtMerchant;
            }
            else
                dtMerchant = (DataTable)Cache["MerchantLEqual"];
                         
            if (dtMerchant.Rows.Count > 0)
            {
                GvMerchantL_equal.DataSource = dtMerchant;
                GvMerchantL_equal.DataBind();               
            }
                          
            dtMerchant = new DataTable();
            if (Cache["MerchantLUnEqual"] == null)
            {
                dtMerchant = BalPrice.GetSPSearch_PriceList("Lu");
                Cache["MerchantLUnEqual"] = dtMerchant;
            }
            else
                dtMerchant = (DataTable)Cache["MerchantLUnEqual"];
                        
            if (dtMerchant.Rows.Count > 0)
            {
                GvMerchantL_Unequal.DataSource = dtMerchant;
                GvMerchantL_Unequal.DataBind();                
            }                    
        }

        #endregion        
       

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

        protected void btnPDFDownload_Click(object sender, EventArgs e)
        {
            // Download PDF from SQL Server table
            DownloadPdfSQL("Price List");


            // Download PDF for Page Table in Oracle
            //DownloadPdfOracle();
        }

        protected void btnPriceAnnounce_Click(object sender, EventArgs e)
        {
            DownloadPdfSQL("Price Announcement");
        }


        public void DownloadPdfSQL(string param_)
        {
            DataTable dt = BalPrice.GetPDFdocument(param_);

            if (dt != null && dt.Rows.Count > 0)
            {
                string URL = dt.Rows[0]["URL"].ToString();                
                Byte[] bytes = (Byte[])dt.Rows[0]["Data"];

                Response.Clear();
                Response.Buffer = false;
                Response.AppendHeader("Content-Type", "application/pdf");
                Response.AppendHeader("Content-Transfer-Encoding", "binary");
                if(URL ==null || URL == "")
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

            //Table1.Width = "80%";
            //Table1.RenderControl(hw);


            StringBuilder sbHeader = new StringBuilder();
            sbHeader.Append("<table style='width: 100%; border:1px solid black; padding:0.4em; margin:0; padding-top: 0px; vertical-align: top'> <tr style='padding-top: 0px; vertical-align: top;border-width: 2px;'><td>");
            sbHeader.Append("<img src='" + strMap + "' Width='220px' Height='50px' /><br /><p Style='font-weight: bold; font-size: medium; font-family: Arial;'>Price List Available for Sale for : ");
            sbHeader.Append("" + lblReportDate.Text + " </p> <br /><p Style='font-size: medium;color:Red; '> $1/CWT EXTRA FOR STOCK SALES ON BEAM PRICE LIST SIZES - EFFECTIVE : " + lblReportDate.Text + " ");
            sbHeader.Append("</p></td><td style='text-align: center; width: 50%; padding-top: 0px; vertical-align: top'> <p Style='font-size: large;font-weight: bold;'> Structural and Rail Division </P>  2601 South 700 East ");
            sbHeader.Append("Columbia City, Indiana 46725<br />Phone (260) 625-8100<br />Fax: (260) 625-8770<br />Toll Free: (866) 740-8700<br />Sales office hours:<br />M - F 7:30 am - 5:30 pm EST");
            sbHeader.Append("</td></tr></table>");
            String HTMLContent = sbHeader.ToString() + sb.ToString();

            MemoryStream ms = new MemoryStream();
            byte[] stringByteArray = PdfSharpConvert(HTMLContent);
            ms.Write(stringByteArray, 0, stringByteArray.Length);
            ms.Position = 0;

            Response.Clear();
            Response.Buffer = false;
            Response.AppendHeader("Content-Type", "application/pdf");
            Response.AppendHeader("Content-Transfer-Encoding", "binary");
            Response.AppendHeader("Content-Disposition", "attachment; filename=PriceList.pdf");
            Response.BinaryWrite(ms.GetBuffer());
            ms.Close();
            Response.End();
        }

        protected void btnXlsDownload_Click(object sender, EventArgs e)
        {
            using (XLWorkbook wb = new XLWorkbook())
            {

              
                    //---------Wide Flange Sections-----------------

               DataTable dtWideFlange = new DataTable();
                    dtWideFlange = (DataTable)Cache["WideFlange"];
                    dtWideFlange.TableName = "Wide Flange Section";
                    wb.Worksheets.Add(dtWideFlange);

                    DataTable dtHPileSection = new DataTable();
                    dtHPileSection = (DataTable)Cache["HPileSection"];
                    dtHPileSection.TableName = "H-Pile Section";
                    wb.Worksheets.Add(dtHPileSection);

                    DataTable dtStandardBeam = new DataTable();
                    dtStandardBeam = (DataTable)Cache["SB"];
                    dtStandardBeam.TableName = "Standard Beams";
                    wb.Worksheets.Add(dtStandardBeam);

                    DataTable dtMHBSection = new DataTable();
                    dtMHBSection = (DataTable)Cache["MHB"];
                    dtMHBSection.TableName = "Manufatured Housing Beams";
                    wb.Worksheets.Add(dtMHBSection);

              
                    DataTable dtMerchantCSection = new DataTable();
                    dtMerchantCSection = (DataTable)Cache["MerchantC"];
                    dtMerchantCSection.TableName = "Structural Channel C-Channels";
                    wb.Worksheets.Add(dtMerchantCSection);

                DataTable dtMerchantMC = new DataTable();
                dtMerchantMC = (DataTable)Cache["MerchantMC"];
                dtMerchantMC.TableName = "Miscellaneous MC-Channel";
                wb.Worksheets.Add(dtMerchantMC);
                         

                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";

                Response.AddHeader("content-disposition", "attachment;filename=PriceList.xlsx");               

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

        protected void lnkAnnouncement_Click(object sender, EventArgs e)
        {

        }
    }
}