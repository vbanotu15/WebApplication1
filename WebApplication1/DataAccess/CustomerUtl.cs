using System.Data.OleDb;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Runtime.InteropServices;
using System.Collections;
using System.Text;
using System.Data;
using System.Data.OracleClient;
using System;

namespace WebApplication1
{
    public partial class DataMethods
    {
        private DataMethods() { }

        public static DataMethods Instance
        {
            get
            {
                IDictionary items = HttpContext.Current.Items;
                if (!items.Contains("DMInstance"))
                {
                    items["DMInstance"] = new DataMethods();
                }
                return items["DMInstance"] as DataMethods;
            }
        }
        public static byte[] GetBytes(string str)
        {
            return Encoding.ASCII.GetBytes(str);
        }
        /// <summary>
        /// Converts an integer customer ID into a 6-digit string (pads with zeros).
        /// </summary>
        /// <param name="ai_id">Customer ID integer.</param>
        /// <returns>String-form of customer id.</returns>
        public static String ConvertCustomerId(int ai_id)
        {
            String returnId = ai_id + "";
            //
            int li_length = returnId.Length;
            li_length = 6 - li_length;      // number of 0's to add to front of number
                                            //
            for (int i = 0; i < li_length; i++)
                returnId = "0" + returnId;
            //
            return returnId;
        }
        /// <summary>
        /// Converts a 6-digit string customer ID into an integer.
        /// </summary>
        /// <param name="as_id">Zero-padded, 6-digit customer ID string.</param>
        /// <returns>Custiomer ID integer.</returns>
        public static int ConvertCustomerId(String as_id)
        {
            int return_id = 0;
            //
            try
            {
                return_id = Convert.ToInt16(as_id);
            }
            catch (Exception ex)
            {
               // addError("convertCustomerId", "An exception occured : " + ex.Message);
                return -1;
            }
            //
            return return_id;
        }
        /// <summary>
        /// Inserts given attachment data into edi log for processing by Data Comm Services.
        /// </summary>
        /// <param name="attachment">EDI in XML format.</param>
        /// <returns></returns>
        public static int LogInboundEDI(byte[] attachment)
        {
            int li_return = -1;

            try
            {
                OracleConnection conn = new OracleConnection("Data Source=SR3;Persist Security Info=True;Password=stldcci;User ID=GEN_APP_USER");

                conn.Open();

                if (conn.State == ConnectionState.Open)
                {
                    OracleCommand cmd = conn.CreateCommand();

                    //cmd.CommandText = "INSERT INTO CRM.EDI_LOG (APPLICATION_ID, DIRECTION, CONTENT ) VALUES ( 'SRD-WEB', 'IN', :attached_data )";

                    if (null != attachment && attachment.Length == 0)
                        attachment = null;

                    //cmd.Parameters.Add("attached_data", OracleDbType.Blob, attachment, ParameterDirection.Input);

                    li_return = cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                //addError("LogInboundEDI", ex.Message);
                return -1;
            }

            return li_return;
        }
        /////////////////////////////////////////////////////////////////////////////////
        ///                          scrubHtml
        /// <summary>
        /// Checks for script element tags, and limits size of input.
        /// </summary>
        /// <returns>Safe input string: null if input contains script tags or too many characters.</returns>
        public static String ScrubHTML(String as_input, int size)
        {
            if (null == as_input)
                return null;
            String ls_check = String.Copy(as_input);
            ls_check = ls_check.ToLower();

            if (ls_check.Contains("script") ||
                ls_check.Contains("href") ||
                ls_check.Contains("%3c") ||
                ls_check.Contains("%3b") ||
                ls_check.Contains("%3e"))
                return null;

            // Limit size of input
            if (size > 0 && as_input.Length > size)
                as_input = null;

            return as_input;
        }
        //
        public static String HashPass(String as_username, String as_pass)
        {
            if (as_pass == "") return null;

            var ls_user = Membership.GetUser(as_username);
            //DataRowCollection lk_data = Query("get_user_salt", new object[] { ls_user.UserName });
            ////
            //if (null != lk_data && lk_data.Count > 0)
            //{
            //    String ls_salt = lk_data[0]["PASSWORDSALT"].ToString();
            //    as_pass += ls_salt;
            //    //
            //    HashAlgorithm hashAlg = new SHA256Managed();
            //    //
            //    // Convert first answer data to an array of bytes
            //    byte[] bytVal = System.Text.Encoding.UTF8.GetBytes(as_pass);
            //    byte[] bytHash = hashAlg.ComputeHash(bytVal);
            //    as_pass = Convert.ToBase64String(bytHash);
            //    //
            //    return as_pass;
            //}
            //
            return null;
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
            catch (System.Exception)
            {
                return "Passwords may be 6-20 characters long and contain only letters, numbers and/or the following characters: ! @ $ ? #";
            }
            //
            return "";
        }
        public static Control FindControlRecursive(Control Root, string Id)
        {
            if (Root.ID == Id)
                return Root;
            //
            foreach (Control Ctl in Root.Controls)
            {
                Control FoundCtl = FindControlRecursive(Ctl, Id);
                //
                if (FoundCtl != null)
                    return FoundCtl;

            }
            //
            return null;
        }
        public static void LeaveComment(String as_message, String as_user)
        {
            if (null != as_message && as_message.Length > 0 &&
                null != as_user && as_user.Length > 0)
            {
               // Query("user_feedback", new object[] { as_user, as_message });
            }
        }
        public static String GenerateUsername(String as_first, String as_last)
        {
            string ls_user = as_first.Substring(0, 1) + as_last;

            Regex.Replace(ls_user, @"[^a-zA-Z0-9]", m => "!");  // remove special characters

            if (ls_user.Contains("!"))
                return null;

            string ls_append = "", ls_newuser = "";
            int li_append_numeric = 2;
            if (ls_user.Length < 6)
            {
                int li_zeros = 5 - ls_user.Length;
                for (int i = 0; i < li_zeros; i++)
                    ls_append = "0" + ls_append;

                ls_append = ls_append + "1";
                ls_user = ls_user + ls_append;
            }
            ls_newuser = ls_user;

            MembershipUserCollection l_users = Membership.FindUsersByName(ls_user);

            while (l_users.Count >= 1)
            {
                ls_newuser = ls_user + li_append_numeric;
                l_users = Membership.FindUsersByName(ls_newuser);
                li_append_numeric++;
            }

            return ls_newuser;
        }
        public static bool ValidSession()
        {
            if (HttpContext.Current.Session["session_active"] == null)
                return false;

            return true;
        }
        [DllImport("urlmon.dll", CharSet = CharSet.Unicode, ExactSpelling = true, SetLastError = false)]
        static extern int FindMimeFromData(IntPtr pBC,
            [MarshalAs(UnmanagedType.LPWStr)] string pwzUrl,
            [MarshalAs(UnmanagedType.LPArray, ArraySubType = UnmanagedType.I1, SizeParamIndex = 3)] byte[] pBuffer,
            int cbSize,
            [MarshalAs(UnmanagedType.LPWStr)] string pwzMimeProposed,
            int dwMimeFlags, out IntPtr ppwzMimeOut, int dwReserved);

        public static string GetMimeTypeFromFile(HttpPostedFile file)
        {
            IntPtr mimeout;

            int MaxContent = (int)file.ContentLength;
            if (MaxContent > 4096) MaxContent = 4096;

            byte[] buf = new byte[MaxContent];
            file.InputStream.Read(buf, 0, MaxContent);
            int result = FindMimeFromData(IntPtr.Zero, file.FileName, buf, MaxContent, null, 0, out mimeout, 0);

            if (result != 0)
            {
                Marshal.FreeCoTaskMem(mimeout);
                return "";
            }

            string mime = Marshal.PtrToStringUni(mimeout);
            Marshal.FreeCoTaskMem(mimeout);

            return mime.ToLower();
        }
        /// <summary>
        /// Checks if connected user is on a mobile platform
        /// </summary>
        /// <returns>true, if user is on mobile device.</returns>
        public static bool IsMobileBrowser()
        {
            if (null == HttpContext.Current)
                return false;
            //
            HttpRequest lk_request = HttpContext.Current.Request;
            //
            Regex MobileBrowsers = new Regex(@"android|avantgo|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\\/|plucker|pocket|psp|symbian|treo|up\\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            Regex MobileApps = new Regex(@"1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\\-(n|u)|c55\\/|capi|ccwa|cdm\\-|cell|chtm|cldc|cmd\\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\\-s|devi|dica|dmob|do(c|p)o|ds(12|\\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\\-|_)|g1 u|g560|gene|gf\\-5|g\\-mo|go(\\.w|od)|gr(ad|un)|haie|hcit|hd\\-(m|p|t)|hei\\-|hi(pt|ta)|hp( i|ip)|hs\\-c|ht(c(\\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\\-(20|go|ma)|i230|iac( |\\-|\\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\\/)|klon|kpt |kwc\\-|kyo(c|k)|le(no|xi)|lg( g|\\/(k|l|u)|50|54|e\\-|e\\/|\\-[a-w])|libw|lynx|m1\\-w|m3ga|m50\\/|ma(te|ui|xo)|mc(01|21|ca)|m\\-cr|me(di|rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\\-2|po(ck|rt|se)|prox|psio|pt\\-g|qa\\-a|qc(07|12|21|32|60|\\-[2-7]|i\\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\\-|oo|p\\-)|sdk\\/|se(c(\\-|0|1)|47|mc|nd|ri)|sgh\\-|shar|sie(\\-|m)|sk\\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\\-|v\\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\\-|tdg\\-|tel(i|m)|tim\\-|t\\-mo|to(pl|sh)|ts(70|m\\-|m3|m5)|tx\\-9|up(\\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|xda(\\-|2|g)|yas\\-|your|zeto|zte\\-", RegexOptions.IgnoreCase | RegexOptions.Multiline);
            bool isMobile = false;

            if (lk_request.Browser.IsMobileDevice)
            {
                isMobile = true;
            }
            else if (lk_request.ServerVariables["HTTP_X_WAP_PROFILE"].IsNotEmpty())
            {
                isMobile = true;
            }
            else if
                (
                    lk_request.ServerVariables["HTTP_ACCEPT"].IsNotEmpty()
                    &&
                    (
                        lk_request.ServerVariables["HTTP_ACCEPT"].ToLower().Contains("wap")
                        || lk_request.ServerVariables["HTTP_ACCEPT"].ToLower().Contains("wml+xml")
                    )
                )
            {
                isMobile = true;
            }
            else if (lk_request.ServerVariables["HTTP_USER_AGENT"].IsNotEmpty())
            {
                string userAgent = lk_request.ServerVariables["HTTP_USER_AGENT"];
                isMobile = ((MobileBrowsers.IsMatch(userAgent) || MobileApps.IsMatch(userAgent.Substring(0, 4))) || userAgent.ToLower().Contains("ipad"));
            }

            return isMobile;
        }
        public static string ConvertXLSToText(string ls_filepath, string sheetName, int al_start_row = 0)
        {
            OleDbConnection oconn = null;
            DataTable dtCategories = new DataTable();

            using (oconn = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + ls_filepath + ";Extended Properties = Excel 8.0"))
            {
                oconn.Open();
                OleDbDataAdapter sheetAdapter = new OleDbDataAdapter("select * from [" + sheetName + "$]", oconn);

                try
                {
                    sheetAdapter.Fill(dtCategories);
                }
                catch (Exception)
                {
                    sheetAdapter = new OleDbDataAdapter("select * from [Sheet1$]", oconn);
                    sheetAdapter.Fill(dtCategories);
                }

                oconn.Close();
            }

            StringBuilder sb = new StringBuilder();

            for (int row = al_start_row; row < dtCategories.Rows.Count; row++)
            {
                for (int column = 0; column < dtCategories.Columns.Count; column++)
                {
                    if (!Convert.IsDBNull(dtCategories.Rows[row][column]))
                        sb.Append(dtCategories.Rows[row][column].ToString());

                    if (column < dtCategories.Columns.Count - 1)
                        sb.Append("\t");
                }

                if (row < dtCategories.Rows.Count - 1)
                    sb.Append("\n");
            }

            return sb.ToString();
        }
       
    }

    public static class ExtensionMethods
    {
        //public static IEnumerable<TSource> DistinctBy<TSource, TKey>
        //(this IEnumerable<TSource> source, Func<TSource, TKey> keySelector)
        //{
        //    HashSet<TKey> seenKeys = new HashSet<TKey>();
        //    foreach (TSource element in source)
        //    {
        //        if (seenKeys.Add(keySelector(element)))
        //        {
        //            yield return element;
        //        }
        //    }
        //}

        public static bool IsNotEmpty(this string instance)
        {
            return instance != null && instance.Length > 0;
        }
    }

}