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
    public partial class Logins : System.Web.UI.Page
    {
        string uEmail, uPassword;


        HttpClient client = new HttpClient();

        Uri baseAddress = new Uri(Utils.TestUSendRL);

        UserModel u;
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
                UserModel LoggedUser = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));


                if (LoggedUser == null)
                {
                    ErrorMessage.Visible = true;

                }
                else
                {

                    if (LoggedUser.FirstLogin == "True")
                    {

                        Session["email"] = LoggedUser.uEmail;
                        Session["UserID"] = LoggedUser.UserID;

                        Session["HasGig"] = LoggedUser.HasGig;
                        
                        Response.Redirect("/SelectingType.aspx");

                    }
                    else
                    {
                        if (LoggedUser.uType == 2)
                        {

                       
                            Session["UserID"] = LoggedUser.UserID;

                            Session["HasGig"] = LoggedUser.HasGig;
                            
                          
                            Response.Redirect("/RequestorDashboard.aspx");

                        }
                        if (LoggedUser.uType == 1)
                        {

                            Session["UserID"] = LoggedUser.UserID;

                            Session["HasGig"] = LoggedUser.HasGig;


                            Response.Redirect("/GiggerDashboard.aspx");

                        }

                    }
                    


                }
                
            }
            else
            {
                ErrorMsg.Text = "Incorrect logins";
            }
        }
    }
}