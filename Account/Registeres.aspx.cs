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
using System.Net;
using System.IO;
using System.Web.Script.Serialization;
using ASPSnippets.GoogleAPI;

namespace QlityG.Account
{
    public partial class Registeres : System.Web.UI.Page
    {


        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.USendRL);

        UserModel user;
        string email, password;


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
            string redirection_url = "https://localhost:44329/Account/Googleform.aspx";
            string url = "https://accounts.google.com/o/oauth2/v2/auth?scope=profile&include_granted_scopes=true&redirect_uri=" + redirection_url + "&response_type=code&client_id=" + clientid + "";
            Response.Redirect(url);


        }



        protected void register_Click(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;         

     
         if (txtPassword.Text == txtConfirmPassword.Text)
                    {

                if (txtEmail.Text !="")
                {

                    if (txtPassword.Text != "")

                    {
                        if (txtPassword.Text != "" && txtEmail.Text!=null)
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
                                Response.Redirect("~/Account/Logins");
                            }
                            else

                            {
                                lblemailerror.Text = "This email is already in use.";
                            }

                        }
                        else

                        {
                            lblemailerror.Text = "Email and Password are required*";
                        }


                    }
                    else

                    {
                        lblerrorPass.Text = "Password is required*";
                    }



                }

                else
                {
                    lblemailerror.Text = "Email is required*";
                }

                    }
          else
           {
             errormesage.Text = "Password must match*";
           }

        }

    }
}
    
