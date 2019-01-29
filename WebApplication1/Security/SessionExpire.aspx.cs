using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Security
{
    public partial class SessionExpire : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ls_uri = Request.Url.AbsoluteUri.ToLower();
            //
            if (ls_uri.Substring(0, 5) == "https")
            {
                Response.Redirect(ls_uri.Replace("https://", "http://"), false);
            }
            {
                String script;
                /////
                if (null != Request.Params["type"])
                {
                    if (Request.Params["type"].Substring(0, 3) == "exp")
                    {
                        script = "<script type='text/javascript'>alert('Your session has expired -- You will be redirected to the login page.');window.location='Default.aspx';</script>";

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "popup", script);
                    }
                    else
                        if (null != Request.Params["type"] && Request.Params["type"].Substring(0, 3) == "log")
                    {
                        script = "<script type='text/javascript'>alert('You have logged out, and will be redirected to the home page.');window.location='Default.aspx';</script>";
                        //
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "popup", script);
                    }
                    //
                    //
                    try
                    {
                        //FormsAuthentication.SignOut();
                    }
                    catch (Exception)
                    {

                    }
                    //
                    Session.Abandon();
                    Response.Redirect("/Default.aspx", false);
                }
            }
        }
    }
}