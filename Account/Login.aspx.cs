using System;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Newtonsoft.Json;
using Owin;
using QlityG.DataAccess;
using QlityG.Models;

namespace QlityG.Account
{
    public partial class Login : Page
    {
        string email, password;
        bool loggedIn;

        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364/api/User");

        UserModel user;
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
            email = txtEmail.Text.Trim();
            password = txtPassword.Text.Trim();


            string data = JsonConvert.SerializeObject(user);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddUser", content).Result;
            loggedIn = true;
            if (resp.IsSuccessStatusCode)
            {
              //  UserModel u = new UserModel(db.GetUserByEmail(email));
               // Session["FirstLogin"] = u.FirstLogin;
                //Session["uEmail"] = email;
                //Session["user"] = u;
                Response.Redirect("/Default");
            }
            else
                ErrorLogin.Visible = true;
        }
    }
}