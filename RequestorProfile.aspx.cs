using Newtonsoft.Json;
using QlityG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QlityG
{
    public partial class RequestorProfile : System.Web.UI.Page
    {
        UserModel u;
        RequestorProfileModel pro;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364/api/User");

        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;

            int userID = (int)Session["UserID"];

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + userID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
            }
            else
            {
                ErrorM.Visible = true;
            }


            txtEmail.Text = u.uEmail; 
        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {
            pro = new RequestorProfileModel();

            pro.uCompany = txtCompany.Text;
            pro.uCountry = txtCountry.Text;
            pro.uName = txtName.Text;
            pro.uSurname = txtSurname.Text;
            pro.UserID = u.UserID;

            string data = JsonConvert.SerializeObject(pro);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddRequestorProfile", content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Response.Redirect("~/CreateGig");
            }
            Response.Redirect("~/RequestorProfile");
        }
    }
}