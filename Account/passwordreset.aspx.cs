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


    public partial class passwordreset : System.Web.UI.Page
    {

        UserModel u;

        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);
        string password;

        protected void Page_Load(object sender, EventArgs e)
        {

            int userID = Convert.ToInt32(Session["UserID"]);

         

        }

        protected void resetbtn(object sender, EventArgs e)
        {



            if (txtnewPassword.Text == txtconfirmpass.Text)
            {
                password = Utils.HashThis(txtconfirmpass.Text.Trim().ToUpper());

                u.uPassword = password;

                
                string data = JsonConvert.SerializeObject(u);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID, content).Result;


                if (resp.IsSuccessStatusCode)
                {
                  
                    ErrorMessage.Text = "password updated .";

                }
                ErrorMessage.Text = "Incorrect Email and Password!.";

            }
            else
            {
                ErrorMessage.Text = "passwords do not match!.";
            }
        }

    }
}
    
