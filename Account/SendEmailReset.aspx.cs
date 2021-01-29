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
    public partial class SendEmailReset : System.Web.UI.Page
    {
        string uEmail;



        HttpClient client = new HttpClient();

        Uri baseAddress = new Uri(Utils.USendRL);

        UserModel u;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendmail_Click(object sender, EventArgs e)
        {


            client.BaseAddress = baseAddress;
            uEmail = txtEmail.Text.Trim().ToUpper();
         

            u = new UserModel();
            u.uEmail = uEmail;
          

            string dat = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(dat, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + string.Format("/UserLogongoogle?Uemail={0}", uEmail)).Result;


            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                if (data == "null")
                {
                    ErrorMessage.Text = " This Email does not exist on our system!";
                    ErrorMessage.Visible = true;
                }
                else
                {

                    UserModel LoggedUser = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                    switch (LoggedUser.FirstLogin)
                    {
                        case "True":
                         
                            Session["UserID"] = LoggedUser.UserID;
                            Response.Redirect("~/Account/passwordreset");
                            break;

                        case "ACTIVE":
                            if (LoggedUser.uType == 1)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/Account/passwordreset");
                            }
                            else if (LoggedUser.uType == 2)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/Account/passwordreset");
                            }

                            break;

                        case "False":
                            if (LoggedUser.uType == 1)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/Account/passwordreset");
                            }
                            else if (LoggedUser.uType == 2)
                            {
                                Session["UserID"] = LoggedUser.UserID;
                                Response.Redirect("~/Account/passwordreset");
                            }
                            break;
                        default:
                            break;
                    }
                }

            }
            else
            {
                ErrorMessage.Text = "An Error Occured Please try again.";
                ErrorMessage.Visible = true;
            }
        }
    }
}