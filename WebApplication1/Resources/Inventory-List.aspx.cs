using ClosedXML.Excel;
using System;
using System.Data;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Resources
{
    public partial class Inventory_List : System.Web.UI.Page
    {        
        DataAccess.BLogic BalInv = new DataAccess.BLogic();
        FilePath logo = new FilePath();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                            
                lblReportDate.Text = DateTime.Now.ToString("MM/dd/yyyy");

                DataTable dtsize_ = new DataTable();                              
                if (Cache["InvProdSize"] == null)
                {
                    dtsize_ = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdSize", null);
                    Cache["InvProdSize"] = dtsize_;
                }
                else
                    dtsize_ = (DataTable)Cache["InvProdSize"];

                if (dtsize_.Rows.Count > 0)
                {
                    ddlProdSize.DataSource = dtsize_;
                    ddlProdSize.DataValueField = "C_PROD_SIZE_ID";
                    ddlProdSize.DataTextField = "C_PROD_SIZE_ID";
                    ddlProdSize.DataBind();
                }

                DataTable dtLength_ = new DataTable();
                if (Cache["InvProdLength"] == null)
                {
                    dtLength_ = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdLength", null);
                    Cache["InvProdLength"] = dtLength_;                                                            
                }
                else
                    dtLength_ = (DataTable)Cache["InvProdLength"];

                if (dtLength_.Rows.Count > 0)
                {
                    ddlProdLength.DataSource = dtLength_;
                    ddlProdLength.DataTextField = "LENGTH_IN_FEET";
                    ddlProdLength.DataValueField = "LENGTH_IN_FEET";
                    ddlProdLength.DataBind();
                }

                DataTable dtGrade_ = new DataTable();
                if (Cache["InvProdGrade"] == null)
                {
                    dtGrade_ = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdGrade", null);
                    Cache["InvProdGrade"] = dtGrade_;
                }
                else
                    dtGrade_ = (DataTable)Cache["InvProdGrade"];

                if (dtGrade_.Rows.Count > 0)
                {
                    ddlProdGrade.DataSource = dtGrade_;
                    ddlProdGrade.DataTextField = "C_EXT_GRD_ID";
                    ddlProdGrade.DataValueField = "C_EXT_GRD_ID";
                    ddlProdGrade.DataBind();
                }
                PanRefreshed.Visible = true;
            }
        }              
      
        protected void ddlProdClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlProdClass.SelectedValue == "")
                ddlProdSize.DataSource = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdSize", null);
            else
                ddlProdSize.DataSource = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdSize_Inclass", ddlProdClass.SelectedValue);

            ddlProdSize.DataValueField = "C_PROD_SIZE_ID";
            ddlProdSize.DataTextField = "C_PROD_SIZE_ID";
            ddlProdSize.DataBind();
            //DropdownRedColor();
            btnSearch_Click(sender, e);
        }
        
        private void DropdownRedColor()
        {
            if (ddlProdClass.SelectedValue != "")
            {
                DataTable dtSize = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdSize_Inclass", ddlProdClass.SelectedValue); 
                foreach (ListItem list in ddlProdSize.Items)
                {
                    list.Attributes.Add("class", "red");

                    foreach (DataRow dr in dtSize.Rows)
                    {
                        if (list.Value == dr[0].ToString())
                        {
                            list.Attributes.Add("class", "black");
                        }
                    }
                }
            
            DataTable dtLength = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdLen_Inclass", ddlProdClass.SelectedValue);
                foreach (ListItem list in ddlProdLength.Items)
            {
                list.Attributes.Add("class", "red");

                foreach (DataRow dr in dtLength.Rows)
                {
                    if (list.Value == dr[0].ToString())
                    {
                        list.Attributes.Add("class", "black");
                    }
                }
            }


            DataTable dtGrade = BalInv.GetSPTable("OVDBA.SPDEV_INVList_ProdGrade_Incls", ddlProdClass.SelectedValue);
                foreach (ListItem list in ddlProdGrade.Items)
                {
                    list.Attributes.Add("class", "red");

                    foreach (DataRow dr in dtGrade.Rows)
                    {
                        if (list.Value == dr[0].ToString())
                        {
                            list.Attributes.Add("class", "black");
                        }
                    }
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
           // System.Threading.Thread.Sleep(5000);
            PanRefreshed.Visible = false;
            PanNoRecord.Visible = false;
            pan1.Visible = false;
            lblTitleDate.Text= DateTime.Now.ToString("MM/dd/yyyy");
            lblTt1.Text= DateTime.Now.ToString("MM/dd/yyyy");

            string prod_class_ = ddlProdClass.SelectedValue == "All" ? "" : ddlProdClass.SelectedValue;
            string prod_size_ = ddlProdSize.SelectedValue == " All" ? "" : ddlProdSize.SelectedValue;
            string prod_len_ = ddlProdLength.SelectedValue == " All" ? "" : ddlProdLength.SelectedValue;
            string prod_grade = ddlProdGrade.SelectedValue == " All" ? "" : ddlProdGrade.SelectedValue;

            DataTable dtInventory = BalInv.GetSPSearch_InventoryList("OVDBA.SPDEV_InventoryList_SEARCH", prod_class_,prod_size_,prod_len_,prod_grade);
            if (dtInventory.Rows.Count > 0)
                pan1.Visible = true;
            else
                PanNoRecord.Visible = true;

            Session["V_Inventory"] = dtInventory;
            gvInventoryList.DataSource = Session["V_Inventory"];
            gvInventoryList.DataBind();
            DropdownRedColor();
        }
       

        protected void btnDownloadExce_Click(object sender, ImageClickEventArgs e)
        {
            DataTable dtInven = new DataTable();
            dtInven = (DataTable) Session["V_Inventory"];
            ExportToExcel(dtInven); 
        }
       public void ExportToExcel(DataTable dtInventory)
        {
            using (XLWorkbook wb = new XLWorkbook())
            {
                dtInventory.TableName = "Inventory List";
                wb.Worksheets.Add(dtInventory);
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                Response.AddHeader("content-disposition", "attachment;filename=InventoryPriceList.xlsx");

                using (MemoryStream MyMemoryStream = new MemoryStream())
                {
                    wb.SaveAs(MyMemoryStream);
                    MyMemoryStream.WriteTo(Response.OutputStream);
                    Response.Flush();
                    Response.End();
                }
            }



            //if (dt.Rows.Count > 0)
            //{
            //    string filename = "InventoryReportFile.xls";
            //    System.IO.StringWriter tw = new System.IO.StringWriter();
            //    System.Web.UI.HtmlTextWriter hw = new System.Web.UI.HtmlTextWriter(tw);
            //    DataGrid dgGrid = new DataGrid();
            //    dgGrid.DataSource = dt;
            //    dgGrid.DataBind();

            //    //Get the HTML for the control.
            //    dgGrid.RenderControl(hw);
            //    //Write the HTML back to the browser.
            //    //Response.ContentType = application/vnd.ms-excel;
            //    Response.ContentType = "application/vnd.ms-excel";
            //    Response.AppendHeader("Content-Disposition", "attachment; filename=" + filename + "");
            //    this.EnableViewState = false;
            //    Response.Write(tw.ToString());
            //    Response.End();
            //}
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
            StringBuilder sb = new StringBuilder();
            StringWriter tw = new StringWriter(sb);
            HtmlTextWriter hw = new HtmlTextWriter(tw);

            string strMap = Server.MapPath(logo.LogoP());

            Table1.RenderControl(hw);

            StringBuilder sbHeader = new StringBuilder();
            sbHeader.Append("<table style='width: 100%;  border:1px solid black; padding:0.4em; margin:0; padding-top: 0px; vertical-align: top'> <tr style='padding-top: 0px; vertical-align: top;border-width: 2px;'><td>");
            sbHeader.Append("<img src='" + strMap + "' Width='220px' Height='50px' /><br /><p Style='font-weight: bold; font-size: large; font-family: Arial;'>Inventory Available for Sale for : ");
            sbHeader.Append("" + lblTitleDate.Text + " </p> <br /><p Style='font-size: medium;color:Red; '> $1/CWT EXTRA FOR STOCK SALES ON BEAM PRICE LIST SIZES - EFFECTIVE : " + lblTt1.Text + " ");
            sbHeader.Append("</p></td><td style='text-align: center; width: 50%; padding-top: 0px; vertical-align: top'> ");
            sbHeader.Append(" <p Style='font-size: large;font-weight: bold;'> Structural and Rail Division </P> 2601 South 700 East Columbia City,<br /> Indiana 46725<br/>Phone (260) 625-8100<br />Fax: (260) 625-8770<br />Toll Free: (866) 740-8700<br />Sales office hours:<br />M - F 7:30 am - 5:30 pm EST");
            sbHeader.Append("</td></tr></table>");

            string strFooter = "Inventory subject to prior sale. Please inquire on pricing. Material test reports are available for all of the above. " + lblTitleDate.Text;

            String HTMLContent = sbHeader.ToString() + sb.ToString() + strFooter;

            MemoryStream ms = new MemoryStream();
            byte[] stringByteArray = PdfSharpConvert(HTMLContent);
            ms.Write(stringByteArray, 0, stringByteArray.Length);
            ms.Position = 0;
           
            Response.Clear();
            Response.Buffer = false;
            Response.AppendHeader("Content-Type", "application/pdf");
            Response.AppendHeader("Content-Transfer-Encoding", "binary");
            Response.AppendHeader("Content-Disposition", "attachment; filename=Inventory_List.pdf");

            //byte[] bytes = ms.ToArray();
            //Response.AddHeader("Content-Length", "");

            Response.BinaryWrite(ms.GetBuffer());
            //Response.BinaryWrite(bytes);
            ms.Close();
            Response.End();
            
        }

        protected void btnReset1_Click(object sender, EventArgs e)
        {
            ddlProdClass.SelectedValue = "";
            ddlProdSize.SelectedValue = " All";
            ddlProdLength.SelectedValue = " All";
            ddlProdGrade.SelectedValue = " All";

            btnSearch_Click(sender, e);
            PanRefreshed.Visible = true;
            pan1.Visible = false;
            PanNoRecord.Visible = false;
        }
    }
}