using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using QlityG.DataAccess;
using QlityG.Models;

namespace QlityG.Account
{
    public partial class Login : Page
    {
        string email, password;
        bool loggedIn;
        DataTool db = new DataTool();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            if (!String.IsNullOrEmpty(returnUrl))
            {
                RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            email = txtEmail.Text;
            password = txtPassword.Text;

            loggedIn = db.loginUser(email, password);

            if (loggedIn)
            {
                Response.Redirect("/Default");
            }
            else
                ErrorLogin.Visible = true;
        }
    }
}