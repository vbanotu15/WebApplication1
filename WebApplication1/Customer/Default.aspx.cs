using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Customer
{
    public partial class Default : System.Web.UI.Page
    {        

        protected void Page_Load(object sender, EventArgs e)
        {
            string ls_uri = Request.Url.AbsoluteUri.ToLower();

            if (!DataMethods.ValidSession())             // || !User.Identity.IsAuthenticated
            {
                Response.Redirect("~/Security/SessionExpire.aspx?type=exp", true);
                return;
            }
            else
            {
                if (locationList.Value == "none")
                {
                    if (null != Session["location_list"])
                    {
                        locationList.Value = Session["location_list"].ToString();
                    }
                }

                if (Environment.MachineName.ToLower() == ConfigurationManager.AppSettings["ProductionServerName"] && ls_uri.Substring(0, 5) != "https")
                {
                    Response.Redirect(ls_uri.Replace("http://", "https://"), false);
                    return;
                }
                //
                Toolbar_Click((object)ProfileButton, e);       // Reorting Tab
                                                           //load_button_table();
                                                           //
                                                           // Initialize password change fields
                //lab_change_pass_error.Text = "";
                //lab_change_pass_error.Style["color"] = "";
                //pan_change_pass_input.Visible = true;
                //b_pass_change_ok.Visible = true;
                ////
                //tb_change_pass_current_pass.Focus();
                //pan_change_pass_popup.DefaultButton = "b_pass_change_ok";
                ////
                //pass_change_popup.Show();               

            }

        }  

        protected void Toolbar_Click(object sender, EventArgs e)
        {
            //if (!DataMethods.ValidSession() || !User.Identity.IsAuthenticated)
            //{
            //    Response.Redirect("~/SessionExpire.aspx?type=exp");
            //    return;
            //}
            //
            LinkButton senderButton = null;
            //
            try
            {
                senderButton = (LinkButton)sender;
            }
            catch (Exception ex)
            {
                //DataMethods.addError("Toolbar_Click()", ex.Message);
                return;
            }
            //
            /////
            if (null == senderButton)
                return;
            //
            ReportingButton.CssClass = "";
            FreightRateButton.CssClass = "";
            ManageUsersButton.CssClass = "";
            WebManageButton.CssClass = "";
            ProfileButton.CssClass = "";
            //
            report_iframe.Visible = false;
            Reporting_Tabs.Visible = false;
            b_report_retrieve.Visible = false;
            b_search_back.Visible = false;
            pan_freight_rate.Visible = false;
            //pan_rate_conversion.Visible = false;
            pan_main.Visible = false;
            pan_user_profile.Visible = false;
            pan_user_manage.Visible = false;
            pan_web_manage.Visible = false;
            pan_report_search_criteria.Visible = false;
            // 
            company_td.Style["width"] = "100%";
            location_td.Style["width"] = "";
            pan_location.Visible = false;
            //
            if (null == senderButton)
                return;
            //
            switch (senderButton.ID)
            {
                case "ReportingButton":
                    ReportingButton.CssClass = "buttonSelected";
                    Reporting_Tabs.Visible = true;
                    pan_main.Visible = true;
                    b_report_retrieve.Visible = true;
                    b_locations.Visible = true;
                    //
                    // Load selected tab
                    tab_changed(sender, e);
                    break;

                    //case "FreightRateButton":
                    //    FreightRateButton.CssClass = "buttonSelected";
                    //    pan_main.Visible = false;
                    //    //
                    //    // Show freight rate criteria
                    //    pan_freight_rate.Visible = true;
                    //    b_report_retrieve.Visible = false;
                    //    //
                    //    // Load freight rate as postback if valid
                    //    if (null != Session["d_freight_rate"])
                    //    {
                    //        if (null == Session["report_iframe"])
                    //            Session.Add("report_iframe", Session["d_freight_rate"]);
                    //        else
                    //            Session["report_iframe"] = Session["d_freight_rate"];
                    //        //
                    //        ((ReportParams)Session["report_iframe"]).IsPostback = true;
                    //        report_iframe.Visible = true;
                    //    }

                    //    // Show Freight Rate Conversion Panel?
                    //    if(DataMethods.verifyCompanyAccess(User.Identity.Name, 849))
                    //        pan_rate_conversion.Visible = true;

                    //break;

                case "ProfileButton":
                    ProfileButton.CssClass = "buttonSelected";
                    Reporting_Tabs.Visible = false;
                    pan_main.Visible = false;
                    profile_username.Text = User.Identity.Name;
                    //
                    // Get User info from DB
                    //DataRowCollection lds_data = DataMethods.Query("user_data", new object[] { User.Identity.Name });
                    //profile_customer.Text = lds_data[0]["CUSTOMERNAME"].ToString().Trim() + " (" + lds_data[0]["CUSTOMERID"].ToString().Trim() + ")";
                    //profile_first_name.Text = lds_data[0]["First_name"].ToString().Trim();
                    //profile_last_name.Text = lds_data[0]["Last_name"].ToString().Trim();
                    //profile_title.Text = lds_data[0]["title"].ToString().Trim();
                    //profile_phone.Text = lds_data[0]["telephone"].ToString().Trim();
                    ////
                    //profile_email.Text = Membership.GetUser().Email;
                    pan_user_profile.Visible = true;
                    break;

                case "ManageUsersButton":
                    ManageUsersButton.CssClass = "buttonSelected";
                    Reporting_Tabs.Visible = false;
                    //
                    b_locations.Visible = false;
                    pan_main.Visible = true;
                    pan_user_manage.Visible = true;
                    //
                    //LoadUserManagement(); comment Muk
                    break;

                case "WebManageButton":
                    WebManageButton.CssClass = "buttonSelected";
                    Reporting_Tabs.Visible = false;
                    //
                    pan_main.Visible = false;
                    pan_web_manage.Visible = true;
                    //web_manage_load(); Comment Muk
                    //
                    break;

                default: break;
            }
        }


        protected void tab_changed(object sender, EventArgs e)
        {
            //if (!DataMethods.ValidSession() || !User.Identity.IsAuthenticated)
            //{
            //    Response.Redirect("~/SessionExpire.aspx?type=exp");
            //    return;
            //}
            //
            Session["report_iframe"] = null;
            Session["location_iframe"] = null;
            Session["id"] = null;
            Session["name"] = null;
            Session["pdf"] = null;
            Session["parent"] = null;
            //
            // Set report frames invisible
            report_iframe.Visible = false;
            location_iframe.Visible = false;
            //
            // Set buttons invisible
            b_locations.Visible = false;
            b_search_back.Visible = false;
            //
            // Set panels invisible
            pan_web_manage.Visible = false;
            pan_report_search_criteria.Visible = false;
            //
            // Set labels invisible
            lbl_error.Visible = false;
            lbl_company_changed.Visible = false;
            //
            // Reset location style
            b_locations.Text = "Show Locations >";
            company_td.Style["width"] = "100%";
            location_td.Style["width"] = "";
            pan_location.Visible = false;
            //
            // Change retreive text to match selected tab
            b_report_retrieve.Text = "Retrieve " + Reporting_Tabs.ActiveTab.HeaderText;
            b_report_retrieve.Width = b_report_retrieve.Text.Length * 11;
            b_report_retrieve.Visible = true;
            //
            pan_main.Visible = true;
            Reporting_Tabs.Visible = true;
            //
            switch (Reporting_Tabs.ActiveTab.HeaderText)
            {
                case "Order Status":
                    //
                    if (Customer_Dropdown.SelectedIndex != 0)
                    {
                        b_locations.Visible = true;
                        //
                        // If report for selected customer has been previously loaded, show it again as a postback
                        //if (null != Session["d_cust_order_status"] && ((ReportParams)Session["d_cust_order_status"]).CustomerID == Customer_Dropdown.SelectedValue)
                        //{
                        //    Session["report_iframe"] = Session["d_cust_order_status"];
                        //    //
                        //    ((ReportParams)Session["report_iframe"]).IsPostback = true;
                        //    //
                        //    if (((ReportParams)Session["report_iframe"]).CustomerID != "0")
                        //        b_locations.Visible = true;
                        //}
                        //
                        //if (null != Session["d_cust_location_search"] && ((ReportParams)Session["d_cust_location_search"]).CustomerID == Customer_Dropdown.SelectedValue)
                        //{
                        //    ReportParams lk_locations = ((ReportParams)Session["d_cust_location_search"]);
                        //    //
                        //    // If locations do not match order status, do not show
                        //    if (null != Session["report_iframe"] && lk_locations.CustomerID != ((ReportParams)Session["report_iframe"]).CustomerID)
                        //        break;
                        //    //
                        //    lk_locations.IsPostback = true;
                        //    //
                        //    Session["location_iframe"] = lk_locations;
                        //    //
                        //    // Show location panel
                        //    pan_location.Visible = true;
                        //    location_iframe.Visible = true;
                        //    //
                        //    b_locations.Text = "Hide Locations <";
                        //    company_td.Style["width"] = "35%";
                        //    location_td.Style["width"] = "65%";
                        //    lbl_company_changed.Visible = false;
                        //}
                    }
                    break;
                case "Shipping Schedule":
                    if (Customer_Dropdown.SelectedIndex != 0)
                    {
                        b_locations.Visible = true;

                        //if (null != Session["d_ship_schedule"] && ((ReportParams)Session["d_ship_schedule"]).CustomerID == Customer_Dropdown.SelectedValue)
                        //{
                        //    Session["report_iframe"] = Session["d_ship_schedule"];
                        //    //
                        //    ((ReportParams)Session["report_iframe"]).IsPostback = true;
                        //    //
                        //    b_report_retrieve.Visible = false;
                        //    b_search_back.Visible = true;
                        //}
                        //else
                        //{
                        //    b_report_retrieve.Visible = true;
                        //    b_search_back.Visible = false;
                        //    //
                        //    // Load criteria panel
                        //    load_criteria(false, false, false, false, true, false, true, true, false, false, false, true, true, false, "", "");
                        //}
                        //
                        //if (null != Session["d_cust_location_search"] && ((ReportParams)Session["d_cust_location_search"]).CustomerID == Customer_Dropdown.SelectedValue)
                        //{
                        //    ReportParams lk_locations = ((ReportParams)Session["d_cust_location_search"]);
                        //    //
                        //    // If locations do not match order status, do not show
                        //    if (null != Session["report_iframe"] && lk_locations.CustomerID != ((ReportParams)Session["report_iframe"]).CustomerID)
                        //        break;
                        //    //
                        //    lk_locations.IsPostback = true;
                        //    //
                        //    Session["location_iframe"] = lk_locations;
                        //    //
                        //    // Show location panel
                        //    pan_location.Visible = true;
                        //    location_iframe.Visible = true;
                        //    //
                        //    b_locations.Text = "Hide Locations <";
                        //    company_td.Style["width"] = "35%";
                        //    location_td.Style["width"] = "65%";
                        //    lbl_company_changed.Visible = false;
                        //}
                    }
                    break;
                case "Search Record":
                    //if (null != Session["search_results"] && ((ReportParams)Session["search_results"]).CustomerID == Customer_Dropdown.SelectedValue)      // have retreived search results (invoice/BOL)
                    //{
                    //    Session["report_iframe"] = Session["search_results"];
                    //    ((ReportParams)Session["report_iframe"]).IsPostback = true;
                    //    //
                    //    b_report_retrieve.Visible = false;
                    //    b_search_back.Visible = true;
                    //}
                    //else
                    //    if (null != Session["d_sale_reports_search"] && ((ReportParams)Session["d_sale_reports_search"]).CustomerID == Customer_Dropdown.SelectedValue)
                    //{
                    //    Session["report_iframe"] = Session["d_sale_reports_search"];
                    //    //
                    //    ((ReportParams)Session["report_iframe"]).IsPostback = true;
                    //    //
                    //    pan_report_search_criteria.Visible = false;
                    //    b_report_retrieve.Visible = false;
                    //    b_search_back.Visible = true;
                    //}
                    //else
                    //{
                    //    // Load criteria panel
                    //    load_criteria(true, true, true, true, true, true, true, true, false, false, true, false, false, false, "Search Results provide <strong>ship date, vehicle ID,</strong> and links to <strong>Invoice, Bill of Lading,</strong> and <strong>Mill Cert Tests.</strong><br /><br />Note: You will only receive results for BOL records marked as \"Shipped.\"", "Shipped Date Range<br />MM/DD/YY (Defaults to past 6 months)");
                    //}
                    //
                    break;
                case "Order Ack.":
                    //if (null != Session["ack_search_results"] && ((ReportParams)Session["ack_search_results"]).CustomerID == Customer_Dropdown.SelectedValue)
                    //{
                    //    Session["report_iframe"] = Session["ack_search_results"];
                    //    ((ReportParams)Session["report_iframe"]).IsPostback = true;
                    //    //
                    //    b_report_retrieve.Visible = false;
                    //    b_search_back.Visible = true;
                    //}
                    //else
                    //    if (null != Session["d_ord_acknowledgment"] && ((ReportParams)Session["d_ord_acknowledgment"]).CustomerID == Customer_Dropdown.SelectedValue)
                    //{

                    //    Session["report_iframe"] = Session["d_ord_acknowledgment"];
                    //    ((ReportParams)Session["report_iframe"]).IsPostback = true;
                    //    //
                    //    b_report_retrieve.Visible = false;
                    //    b_search_back.Visible = true;
                    //    pan_report_search_criteria.Visible = false;
                    //}
                    //else
                    //{
                    //    load_criteria(false, false, false, false, true, false, true, false, false, false, true, false, false, false, "", "Expected Departure Week Range<br />MM/DD/YY (Defaults to between last three months and next three months)");
                    //}
                    // 
                    break;
                case "Shipment Summary":
                    //
                    //if (null != Session["d_ship_summary"] && ((ReportParams)Session["d_ship_summary"]).CustomerID == Customer_Dropdown.SelectedValue)
                    //{
                    //    Session["report_iframe"] = Session["d_ship_summary"];
                    //    ((ReportParams)Session["report_iframe"]).IsPostback = true;
                    //    b_report_retrieve.Visible = false;
                    //    b_search_back.Visible = true;
                    //    pan_report_search_criteria.Visible = false;
                    //}
                    //else
                    //{
                    //    b_report_retrieve.Visible = true;
                    //    load_criteria(true, false, false, false, true, true, true, false, true, true, true, false, false, true, "", "Date Range<br/>MM/DD/YY (Defaults to past 3 months)");
                    //}
                    // 
                    break;
                case "Aged Rec.":     // Aged Receivable
                    //if (null != Session["d_aged_rec"] && ((ReportParams)Session["d_aged_rec"]).CustomerID == Customer_Dropdown.SelectedValue)
                    //{
                    //    ((ReportParams)Session["d_aged_rec"]).IsPostback = true;
                    //    Session["report_iframe"] = Session["d_aged_rec"];
                    //    report_iframe.Visible = true;
                    //}
                    //
                    break;
                default:
                    //
                    break;
            }
            // 
            if (Customer_Dropdown.SelectedIndex != 0)
            {
                b_report_retrieve.Enabled = true;
                b_report_retrieve.CssClass = "red button";
            }
            else
            {
                //if (DataMethods.checkCSR(User.Identity.Name) && Reporting_Tabs.ActiveTab.HeaderText == "Search Record")
                //{
                //    b_report_retrieve.Enabled = true;
                //    b_report_retrieve.CssClass = "red button";
                //}
            }
            //
           // if (SRDReports.scrubInput(Customer_Dropdown.SelectedValue, 6) != "0" && null != Session["report_iframe"])
                report_iframe.Visible = true;
        }

        protected void contact_manage_tab_members_move_up(object sender, EventArgs e)
        {

        }

        protected void contact_manage_tab_members_move_down(object sender, EventArgs e)
        {

        }

        protected void tabs_utilities_ActiveTabChanged(object sender, EventArgs e)
        {
            //manage_users_load_profile

        }

        protected void web_manage_tabs_ActiveTabChanged(object sender, EventArgs e)
        {
            //web_manage_tab_changed

        }

      

        protected void b_locations_Click(object sender, EventArgs e)
        {
            // load_locations

        }

        //protected void b_report_retrieve_Click(object sender, EventArgs e)
        //{
            //report_retrieve
        //}

        protected void b_search_back_Click(object sender, EventArgs e)
        {
            //search_back_clicked

        }

        protected void freight_button_Click(object sender, EventArgs e)
        {
            //retrieve_freight_rate 

        }

        protected void b_profile_edit_Click(object sender, EventArgs e)
        {
            //profile_edit

        }

        protected void b_profile_save_Click(object sender, EventArgs e)
        {
            //profile_save

        }

        protected void b_reset_password_Click(object sender, EventArgs e)
        {
            //load_change_pass

        }

        protected void b_pass_change_cancel_Click(object sender, EventArgs e)
        {
            //profile_pass_change_cancel

        }

        protected void b_pass_change_ok_Click(object sender, EventArgs e)
        {
            //profile_pass_change

        }

        protected void b_user_manage_create_user_Click(object sender, EventArgs e)
        {
            //manage_users_show_create_user
        }

        protected void b_user_manage_edit_profile_Click(object sender, EventArgs e)
        {
            //manage_users_edit_profile

        }

        protected void b_user_manage_save_profile_Click(object sender, EventArgs e)
        {
            //manage_users_save_profile

        }

        protected void b_user_manage_profile_company_change_Click(object sender, EventArgs e)
        {
            //manage_users_edit_company

        }

        protected void b_user_manage_profile_enabled_Click(object sender, EventArgs e)
        {
            //manage_users_profile_enabled_clicked

        }

        protected void b_user_manage_profile_locked_Click(object sender, EventArgs e)
        {
            //manage_users_profile_locked_clicked

        }

        protected void b_reset_user_Click(object sender, EventArgs e)
        {
            //manage_users_recover_user

        }

        protected void b_delete_user_Click(object sender, EventArgs e)
        {
            //manage_users_delete_user

        }

        protected void b_company_change_accept_Click(object sender, EventArgs e)
        {
            //manage_users_edit_company_accept

        }

        protected void b_company_access_assign_Click(object sender, EventArgs e)
        {
            //manage_companies_assign_click

        }

        protected void b_company_access_remove_Click(object sender, EventArgs e)
        {
            //manage_companies_remove_click

        }

        protected void b_company_access_assign_all_Click(object sender, EventArgs e)
        {
            //manage_companies_assign_all_click

        }

        protected void b_company_access_remove_all_Click(object sender, EventArgs e)
        {
            //manage_companies_remove_all_click

        }

        protected void b_user_manage_company_access_copy_from_user_Click(object sender, EventArgs e)
        {
            //manage_companies_show_copy_user
        }

        protected void b_user_copy_accept_Click(object sender, EventArgs e)
        {
            //manage_companies_copy_user

        }

        protected void b_data_access_assign_Click(object sender, EventArgs e)
        {
            //manage_data_assign_click

        }

        protected void b_data_access_remove_Click(object sender, EventArgs e)
        {
            //manage_data_remove_click

        }

        protected void b_data_access_assign_all_Click(object sender, EventArgs e)
        {
            //manage_data_assign_all_click

        }

        protected void b_data_access_remove_all_Click(object sender, EventArgs e)
        {
            //manage_data_remove_all_click

        }

        protected void b_user_manage_create_user_select_reg_Click(object sender, EventArgs e)
        {
            //manage_users_show_reg_select

        }

        protected void b_create_user_cancel_Click(object sender, EventArgs e)
        {
            //manage_users_create_user_dismiss

        }

        protected void b_create_user_ok_Click(object sender, EventArgs e)
        {
            //manage_users_create_user

        }

        protected void b_user_manage_select_reg_cancel_Click(object sender, EventArgs e)
        {
            //manage_users_cancel_reg

        }

        protected void b_user_manage_select_reg_ok_Click(object sender, EventArgs e)
        {
            //manage_users_select_reg

        }

        protected void b_web_manage_insert_document_Click(object sender, EventArgs e)
        {
            //web_manage_show_insert_popup

        }

        protected void b_web_manage_delete_document_Click(object sender, EventArgs e)
        {
            //web_manage_delete_document

        }

        protected void b_web_manage_move_document_up_Click(object sender, EventArgs e)
        {
            //web_manage_move_doc_up

        }

        protected void b_web_manage_move_document_down_Click(object sender, EventArgs e)
        {
            //web_manage_move_doc_down

        }

        protected void b_web_manage_update_document_Click(object sender, EventArgs e)
        {
            //web_manage_show_update_document

        }

        protected void b_web_manage_update_document_view_Click(object sender, EventArgs e)
        {
            //web_manage_view_document

        }

        protected void b_web_manage_price_announce_Click(object sender, EventArgs e)
        {
            //web_manage_price_announce_switch

        }

        protected void b_web_manage_document_active_Click(object sender, EventArgs e)
        {
            //web_manage_document_active 

        }

        protected void b_web_manage_document_edit_Click(object sender, EventArgs e)
        {
            //web_manage_document_edit

        }

        protected void b_web_manage_document_edit_cancel_Click(object sender, EventArgs e)
        {
            //web_manage_document_cancel_edit

        }

        protected void b_web_manage_insert_document_accept_Click(object sender, EventArgs e)
        {
            //web_manage_insert_document_accept

        }

        protected void b_web_manage_update_schedule_new_Click(object sender, EventArgs e)
        {
            //web_manage_update_document_add

        }

        protected void b_web_manage_update_schedule_delete_Click(object sender, EventArgs e)
        {
            //web_manage_update_document_delete

        }

        protected void b_web_manage_update_document_schedule_cancel_Click(object sender, EventArgs e)
        {
            //web_manage_update_document_cancel

        }

        protected void b_web_manage_update_document_schedule_accept_Click(object sender, EventArgs e)
        {
            //web_manage_update_document_accept_new

        }

        protected void contact_manage_tab_change(object sender, EventArgs e)
        {
            ////b_contact_manage_contacts_Click

        }

        protected void b_contact_manage_all_contacts_add_contact_Click(object sender, EventArgs e)
        {
            //contact_manage_add_contact

        }

        protected void b_contact_manage_all_contacts_remove_contact_Click(object sender, EventArgs e)
        {
            //contact_manage_remove_contact

        }

        protected void b_contact_manage_upload_photo_ok_Click(object sender, EventArgs e)
        {
            //contact_manage_upload_photo_ok

        }

        protected void b_contact_manage_all_contacts_edit_img_Click(object sender, EventArgs e)
        {
            //contact_manage_change_photo

        }

        protected void b_contact_manage_save_contact_Click(object sender, EventArgs e)
        {
            //contact_manage_save_contact

        }

        protected void b_contact_manage_edit_contact_Click(object sender, EventArgs e)
        {
            //contact_manage_edit_contact

        }

        protected void b_contact_manage_group_new_Click(object sender, EventArgs e)
        {
            //contact_manage_group_add

        }

        protected void b_contact_manage_group_save_Click(object sender, EventArgs e)
        {
            //contact_manage_group_save

        }

        protected void b_contact_manage_group_edit_Click(object sender, EventArgs e)
        {
            //contact_manage_group_edit

        }

        protected void b_contact_manage_group_delete_Click(object sender, EventArgs e)
        {
            //contact_manage_group_delete

        }

        protected void b_contact_manage_group_preview_Click(object sender, EventArgs e)
        {
            //contact_manage_group_preview

        }

        protected void b_contact_manage_group_member_remove_Click(object sender, EventArgs e)
        {
            //contact_manage_group_member_remove

        }

        protected void b_contact_manage_group_member_move_up_Click(object sender, EventArgs e)
        {
            //contact_manage_group_member_move_up
        }

        protected void b_contact_manage_group_member_move_down_Click(object sender, EventArgs e)
        {
            //contact_manage_group_member_move_down

        }

        protected void b_contact_manage_group_member_sort_alpha_Click(object sender, EventArgs e)
        {
            //contact_manage_group_member_sort

        }

        protected void cb_contact_manage_group_member_attach_above_CheckedChanged(object sender, EventArgs e)
        {
            //contact_manage_group_member_attach_above_change

        }

        protected void b_contact_manage_group_member_add_Click(object sender, EventArgs e)
        {
            //contact_manage_group_member_add

        }

        protected void b_contact_manage_tab_order_up_Click(object sender, EventArgs e)
        {
            //contact_manage_tab_order_move_up

        }

        protected void b_contact_manage_tab_order_down_Click(object sender, EventArgs e)
        {
            //contact_manage_tab_order_move_down

        }

        protected void b_contact_manage_add_save_tab_Click(object sender, EventArgs e)
        {
            //contact_manage_add_save_tab

        }

        protected void b_contact_manage_edit_tab_Click(object sender, EventArgs e)
        {
            //contact_manage_edit_tab

        }

        protected void b_contact_manage_remove_tab_Click(object sender, EventArgs e)
        {
            //contact_manage_remove_tab

        }

        protected void b_contact_manage_tab_members_move_up_Click(object sender, EventArgs e)
        {
            //contact_manage_tab_members_move_up

        }

        protected void b_contact_manage_tab_members_move_down_Click(object sender, EventArgs e)
        {
            //contact_manage_tab_members_move_down

        }

        protected void b_contact_manage_tab_member_remove_Click(object sender, EventArgs e)
        {
            //contact_manage_tab_members_remove

        }

        protected void b_contact_manage_tab_non_member_add_Click(object sender, EventArgs e)
        {
            //contact_manage_tab_non_members_add

        }

        protected void b_contact_manage_territory_back_Click(object sender, EventArgs e)
        {
            //contact_manage_show_map

        }

        protected void b_contact_manage_territory_move_up_Click(object sender, EventArgs e)
        {
            //contact_manage_territory_members_move_up

        }

        protected void b_contact_manage_territory_members_move_down_Click(object sender, EventArgs e)
        {
            //contact_manage_territory_members_move_down

        }

        protected void b_contact_manage_territory_members_remove_Click(object sender, EventArgs e)
        {
            //contact_manage_territory_members_remove

        }

        protected void b_contact_manage_territory_non_members_add_Click(object sender, EventArgs e)
        {
            //contact_manage_territory_non_members_add

        }

        protected void b_account_recover_accept_Click(object sender, EventArgs e)
        {
            //accept_account_recover

        }

        protected void Customer_Dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            //company_changed

        }

        protected void dl_user_manage_profile_access_SelectedIndexChanged(object sender, EventArgs e)
        {
            //manage_users_update_description

        }

        protected void dl_create_user_access_SelectedIndexChanged(object sender, EventArgs e)
        {
            //create_user_access_change

        }

        protected void radio_web_manage_insert_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            //web_manage_insert_document_type_change

        }

        protected void lb_web_manage_document_changes_SelectedIndexChanged(object sender, EventArgs e)
        {
            //web_manage_update_document_list_change

        }

        protected void radio_web_manage_update_type_SelectedIndexChanged(object sender, EventArgs e)
        {
            //web_manage_update_document_type_change

        }

        protected void lb_contact_manage_contacts_SelectedIndexChanged(object sender, EventArgs e)
        {
            //contact_manage_all_contacts_change

        }

        protected void lb_contact_manage_groups_SelectedIndexChanged(object sender, EventArgs e)
        {
            //contact_manage_group_change

        }

        protected void lb_contact_manage_group_members_SelectedIndexChanged(object sender, EventArgs e)
        {
            //contact_manage_group_members_change

        }

        protected void lb_contact_manage_tabs_SelectedIndexChanged(object sender, EventArgs e)
        {
            //contact_manage_tab_list_change
        }

        protected void lb_contact_manage_tab_members_SelectedIndexChanged(object sender, EventArgs e)
        {
            //contact_manage_tab_members_change

        }

        protected void lb_contact_manage_territory_members_SelectedIndexChanged(object sender, EventArgs e)
        {
            //contact_manage_territory_members_change

        }

        protected void cb_manage_users_historic_reg_CheckedChanged(object sender, EventArgs e)
        {
            //manage_users_select_reg_historic_click

        }

        protected void web_manage_document_list_SelectedIndexChanged(object sender, EventArgs e)
        {
            //web_manage_document_change

        }
    }
}