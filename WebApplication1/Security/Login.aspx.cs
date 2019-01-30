using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Text;

namespace WebApplication1.Security
{
    public partial class Login : System.Web.UI.Page
    {
        DataAccess.BLogic balMembership = new DataAccess.BLogic();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable dtUser = balMembership.GetUsername(txtUsername.Text.Trim());           
            if(dtUser.Rows.Count>0)
            {

                lblUserName.Text = "";
            }
            else
            {
                lblUserName.Text = "Invalid User Name";
                return; 
            }

            DataTable dtCheckPassword = balMembership.GetPassword(txtUsername.Text.Trim());
            if (dtCheckPassword.Rows.Count > 0)
            {
                string ls_salt = dtCheckPassword.Rows[0]["PASSWORDSALT"].ToString();

                var as_pass = txtPassword.Text.Trim();

                String ls_act_code = Regex.Replace(as_pass, @"[^a-zA-Z0-9]", m => new Random().Next(0, 9).ToString());


                as_pass += ls_salt;

                String ls_act_code1 = Regex.Replace(as_pass, @"[^a-zA-Z0-9]", m => new Random().Next(0, 9).ToString());


                HashAlgorithm hashAlg = new SHA256Managed();        
                byte[] bytVal = System.Text.Encoding.UTF8.GetBytes(ls_act_code1);
                byte[] bytHash = hashAlg.ComputeHash(bytVal);

                string hashPassword = string.Empty;
                hashPassword = Convert.ToBase64String(bytHash);


                

                //if(password != hashPassword)
                //{
                //    lblPassword.Text = "Invalid Password";
                //    return;
                //}

                // string str = ValidatePass(txtPassword.Text.Trim());

                lblPassword.Text = "";
            }
            else
            {
                lblPassword.Text = "Invalid Password";
                return;
            }

            HttpContext.Current.Session["session_active"] = "Active";
            Response.Redirect("../Customer/Customer-Utilities.aspx");
        }

        public static byte[] GetBytes(string str)
        {
            return Encoding.ASCII.GetBytes(str);
        }

        public static string DecodeFrom64(string m_enc)
        {
            byte[] encodedDataAsBytes =
            System.Convert.FromBase64String(m_enc);
            string returnValue =
            System.Text.Encoding.UTF8.GetString(encodedDataAsBytes);
            return returnValue;
        }

        public static String ValidatePass(String as_pass)
        {
            try
            {
                RegexStringValidator lk_pass_valid = new RegexStringValidator(@"[a-zA-Z0-9]{6,20}");        // password must be 6-20 characters
                                                                                                            //RegexStringValidator lk_pass_valid2 = new RegexStringValidator(@".*[a-z].*");         // password must contain at least one lower-case
                                                                                                            //RegexStringValidator lk_pass_valid3 = new RegexStringValidator(@".*[A-Z].*");         // password must contain at least one upper-case
                                                                                                            //RegexStringValidator lk_pass_valid4 = new RegexStringValidator(@".*[0-9].*");         // password must contain at least one number
                                                                                                            //
                lk_pass_valid.Validate(as_pass);
                //lk_pass_valid2.Validate(as_pass);
                //lk_pass_valid3.Validate(as_pass);
                //lk_pass_valid4.Validate(as_pass);
                //
                // Password must not contain invalid characters
                Regex.Replace(as_pass, @"[^a-zA-Z0-9!@$?#]", m => "+");
                //
                if (as_pass.Contains("+"))
                    throw new Exception();
            }
            catch (Exception)
            {
                return "Passwords may be 6-20 characters long and contain only letters, numbers and/or the following characters: ! @ $ ? #";
            }
            //
            return "";
        }

    }
}