using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Newtonsoft;
using QlityG.DataAccess;
using QlityG.Models;
using Newtonsoft.Json;
using System.Text;

namespace QlityG.Account
{
    public partial class Registeres : System.Web.UI.Page
    {
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);

        UserModel user;
        string email, password;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

    

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;


            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                email = txtEmail.Text.Trim().ToUpper();
                password = Utils.HashThis(txtPassword.Text.Trim().ToUpper());

                user = new UserModel();
                user.FirstLogin = "True";
                user.uEmail = email;
                user.HasGig = "False";
                user.uPassword = password;
                user.uType = 0;

                string data = JsonConvert.SerializeObject(user);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddUser", content).Result;
                if (resp.IsSuccessStatusCode)
                {
                    //Session["mine"] = txtEmail.Text;
                    Response.Redirect("~/Account/Logins");

                }
                else

                {
                    errormesage.Text = "An Error Occuried Please try again!.";
                }

            }

            else
            {
                errormesage.Text = "Please ensure passwords match";
            }
        }
    }
}