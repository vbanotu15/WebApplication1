using ClosedXML.Excel;
using System;
using System.Data;
using System.IO;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer
{
    public partial class Web_Management : System.Web.UI.Page
    {
        DataAccess.BLogic BalWebMgt = new DataAccess.BLogic();

        FilePath logo = new FilePath();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetRecord();
            }
        }

        #region "Get Record"

        public void GetRecord()

        {
           
        }
        #endregion

        #region "Download File"
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
                //DownloadPdfSQL("Reporting");


                // Download PDF for Page Table in Oracle
                //DownloadPdfOracle();
            }
            public void DownloadPdfSQL(string param_)
            {
                DataTable dt = BalWebMgt.GetPDFdocument(param_);

                if (dt != null && dt.Rows.Count > 0)
                {
                    string URL = dt.Rows[0]["URL"].ToString();
                    Byte[] bytes = (Byte[])dt.Rows[0]["Data"];

                    Response.Clear();
                    Response.Buffer = false;
                    Response.AppendHeader("Content-Type", "application/pdf");
                    Response.AppendHeader("Content-Transfer-Encoding", "binary");
                    if (URL == null || URL == "")
                        Response.AppendHeader("Content-Disposition", "attachment; filename=Reporting.pdf");
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

                //GvBeamBundle.ShowHeader = true;
                //GvMerchantBundle.ShowHeader = true;


                //Table1.Width = "80%";
                //Table1.RenderControl(hw);


                StringBuilder sbHeader = new StringBuilder();
                sbHeader.Append("<table style='width: 100%; border:1px solid black; padding:0.4em; margin:0;  padding-top: 0px; vertical-align: top'> <tr style='padding-top: 0px; vertical-align: top;border-width: 2px;'><td>");
                sbHeader.Append("<img src='" + strMap + "' Width='220px' Height='50px' /><br /><p Style='font-weight: bold; font-size: large; font-family: Arial;'>Reporting Available for Sale for : ");
                sbHeader.Append("" + DateTime.Now.ToString("MM/dd/yyyy") + " </p> <br /> ");
                sbHeader.Append("</td><td style='text-align: center; width: 50%; padding-top: 0px; vertical-align: top'> <p Style='font-size: large;font-weight: bold;'> Structural and Rail Division </P> 2601 South 700 East ");
                sbHeader.Append("Columbia City, Indiana 46725<br />Phone (260) 625-8100<br />Fax: (260) 625-8770<br />Toll Free: (866) 740-8700<br />Sales office hours:<br />M - F 7:30 am - 5:30 pm EST");
                sbHeader.Append("</td></tr></table>");

                StringBuilder sbFooter = new StringBuilder();
                sbFooter.Append("<table style='width:100%;'> <tr> <td align='left' style='width:50%; padding-left :0px ;'>W/H= # Wide by # High </td> <td align='right' style='width:50%; padding-right :0px'> F-6400-006-018 Rev 24 " + DateTime.Now.ToString("MM/dd/yyyy") + "</td> </tr> </table>");

                String HTMLContent = sbHeader.ToString() + sb.ToString() + sbFooter.ToString(); ;

                MemoryStream ms = new MemoryStream();
                byte[] stringByteArray = PdfSharpConvert(HTMLContent);
                ms.Write(stringByteArray, 0, stringByteArray.Length);
                ms.Position = 0;

                Response.Clear();
                Response.Buffer = false;
                Response.AppendHeader("Content-Type", "application/pdf");
                Response.AppendHeader("Content-Transfer-Encoding", "binary");



                Response.AppendHeader("Content-Disposition", "attachment; filename=Reporting.pdf");



                Response.BinaryWrite(ms.GetBuffer());
                ms.Close();
                Response.End();

            }
            protected void btnXlsDownload_Click(object sender, EventArgs e)
            {
                using (XLWorkbook wb = new XLWorkbook())
                {


                    //DataTable dtBeamBundle = new DataTable();
                    //dtBeamBundle = (DataTable)Cache["BeamBundle"];
                    //dtBeamBundle.TableName = "Beam Bundle Section";
                    //wb.Worksheets.Add(dtBeamBundle);




                    //DataTable dtMerchantBundleSection = new DataTable();
                    //dtMerchantBundleSection = (DataTable)Cache["MerchantBundle"];
                    //dtMerchantBundleSection.TableName = "Merchant Beam Section";
                    //wb.Worksheets.Add(dtMerchantBundleSection);

                    //DataTable dtBundleChart = new DataTable();
                    //dtBundleChart = (DataTable)Cache["BundleChart"];
                    //dtBundleChart.TableName = "Bundle Chart";
                    //wb.Worksheets.Add(dtBundleChart);

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
        #endregion

        protected void btn_web_manage_insert_document_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_delete_document_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_move_document_up_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_update_document_view_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_price_announce_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_update_document_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_document_active_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_document_edit_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_document_edit_cancel_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_insert_document_accept_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_update_document_schedule_accept_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_update_document_schedule_cancel_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_all_contacts_add_contact_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_all_contacts_remove_contact_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_update_schedule_new_Click(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_update_schedule_delete_Click(object sender, EventArgs e)
        {

        }

        protected void contact_manage_tab_change(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_all_contacts_edit_img_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_upload_photo_ok_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_save_contact_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_edit_contact_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_new_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_save_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_edit_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_delete_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_preview_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_member_remove_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_member_move_up_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_member_move_down_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_member_add_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_tab_order_down_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_add_save_tab_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_edit_tab_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_remove_tab_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_tab_members_move_up_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_tab_members_move_down_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_tab_member_remove_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_tab_non_member_add_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_territory_back_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_territory_move_up_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_territory_members_move_down_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_territory_members_remove_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_territory_non_members_add_Click(object sender, EventArgs e)
        {

        }

        protected void btn_account_recover_accept_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_group_member_sort_alpha_Click(object sender, EventArgs e)
        {

        }

        protected void btn_contact_manage_tab_order_up_Click(object sender, EventArgs e)
        {

        }

        protected void lstweb_manage_document_list_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lst_web_manage_document_changes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void radio_web_manage_update_type_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lst_contact_manage_contacts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lst_contact_manage_groups_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lst_contact_manage_tabs_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lst_contact_manage_tab_members_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lst_contact_manage_territory_members_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void lst_contact_manage_group_members_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btn_web_manage_move_document_down_Click(object sender, EventArgs e)
        {

        }

        protected void radio_web_manage_insert_type_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void chk_contact_manage_group_member_attach_above_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Tab_web_manage_tabs_ActiveTabChanged(object sender, EventArgs e)
        {

        }
    }
}
