using System;
using System.Collections.Generic;
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
        string uEmail, uPassword;
      //  bool loggedIn;

        HttpClient client = new HttpClient();
        
        Uri baseAddress = new Uri("https://localhost:44364");

        UserModel u = new UserModel();
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
            client.BaseAddress = baseAddress;
            uEmail = txtEmail.Text.Trim();
            uPassword = txtPassword.Text.Trim();
            UserModel ust = new UserModel();
            ust.uEmail = uEmail;
            ust.uPassword = uPassword;

            string dat = JsonConvert.SerializeObject(ust);
            StringContent content = new StringContent(dat, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/UserLogon", content).Result;

            
            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
              UserModel  LoggedUser = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));


                if(LoggedUser.Equals(null))
                {
                    ErrorMessage.Visible = true;

                }
                else
                {

                    if (LoggedUser.FirstLogin == "true")
                    {

                        Session["email"] = LoggedUser.uEmail;
                        Session["UserID"] = LoggedUser.UserID;
                        Response.Redirect("/SelectType.aspx");
                    }
                    Session["UserID"] = LoggedUser.UserID;
                    Response.Redirect("/Home");
                }
                
            }
            else
                ErrorLogin.Visible = true;
        }
    }
}