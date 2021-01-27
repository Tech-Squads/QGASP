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
using System.IO;
using System.Web.Script.Serialization;
using ASPSnippets.GoogleAPI;


namespace QlityG.Account
{
    public partial class Logins : System.Web.UI.Page
    {
        string uEmail, uPassword;


        HttpClient client = new HttpClient();

        Uri baseAddress = new Uri(Utils.TestUSendRL);

        UserModel u;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btngoogleReg_Click(object sender, EventArgs e)
        {

            //your client id  
            string clientid = "51695088027-fgq4ej9ctndugj70h1pdbln0rhthess5.apps.googleusercontent.com";
            //your client secret  
            //string clientsecret = "OjY8rLlKgre3QmlDjmyeNifl";
            //your redirection url  
            string redirection_url = "https://localhost:44329/Account/GoogleSignin.aspx";
            string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(url);
        }

        protected void login_Click(object sender, EventArgs e)
        {    

            client.BaseAddress = baseAddress;
            uEmail = txtEmail.Text.Trim().ToUpper();
            uPassword = Utils.HashThis(txtPassword.Text.Trim().ToUpper());

            u = new UserModel();
            u.uEmail = uEmail;
            u.uPassword = uPassword;

            string dat = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(dat, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + string.Format("/UserLogon?Uemail={0}&Upassword={1}", uEmail, uPassword)).Result;


            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                if (data == "null")
                {
                    ErrorMsg.Text = "Incorrect Email and Password!.";
                    ErrorMsg.Visible = true;
                }
                else
                {

                    UserModel LoggedUser = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                    switch (LoggedUser.FirstLogin)
                    {
                        case "True":
                            if (LoggedUser.uType == 0)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/SelectingType.aspx");
                            }
                         

                            break;

                        case "ACTIVE":
                            if (LoggedUser.uType == 1)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/GiggerDash.aspx");
                            }
                            else if (LoggedUser.uType == 2)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/RequestorDash.aspx");
                            }

                            break;

                        case "False":
                            if (LoggedUser.uType == 1)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/GiggerDashboard.aspx");
                            }
                            else if (LoggedUser.uType == 2)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/RequestorDashboard.aspx");
                            }
                            break;
                        default:
                            break;
                    }
                }

            }
            else
            {
                ErrorMsg.Text = "An Error Occured Please try again.";
                ErrorMsg.Visible = true;
            }
        }
    }
}