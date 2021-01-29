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
        Uri baseAddress = new Uri(Utils.USendRL);
        int UserID;
        string password;
        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;
            if (Session["UserID"].Equals(null))
            {
                ErrorMessage.Text = "not found";
            }

            UserID = Convert.ToInt32(Session["UserID"]);
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + UserID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
            }

            else
            {
                ErrorMessage.Visible = true;
            }

        }

        protected void resetbtn(object sender, EventArgs e)
        {

        

            if (txtnewPassword.Text == txtconfirmpass.Text)
            {
                password = Utils.HashThis(txtnewPassword.Text.Trim().ToUpper());
                u.uPassword = password;
               

                string data = JsonConvert.SerializeObject(u);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + UserID, content).Result;


                if (resp.IsSuccessStatusCode)
                {

                    ErrorMessage.Text = "Password updated successfully";
                }

                else
                {
                    ErrorMessage.Text = "Error";
                }
            }
            else
            {
                ErrorMessage.Text = "Ensure password matches !";

            }
        }
    }
}   
