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
        UProfile pro, profile;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364");

        protected void Page_Load(object sender, EventArgs e)
        {
            Update.Enabled = false;
            Create.Enabled = false;
            client.BaseAddress = baseAddress;

            int userID = (int)Session["UserID"];
            if(userID.Equals( null))
            {
                Response.Redirect("~/Account/Login");
            }

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + userID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                if (u.FirstLogin == "False")
                {
                    Update.Enabled = true;
                    HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserProfile/" + u.UserID).Result;
                    if (res.IsSuccessStatusCode)
                    {
                        string objectPro = res.Content.ReadAsStringAsync().Result;

                        profile = new UProfile(JsonConvert.DeserializeObject<UProfile>(objectPro));


                        txtCountry.Text = profile.uCountry;
                        txtName.Text = profile.uName;
                        txtSurname.Text = profile.uSurname;
                    }
                }
                Create.Enabled = true;
            }
            else
            {
                ErrorM.Visible = true;
            }


            txtEmail.Text = u.uEmail;

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            profile.uCompany = txtCompany.Text;
            profile.uCountry = txtCountry.Text;
            profile.uName = txtName.Text;
            profile.uSurname = txtSurname.Text;

            string data = JsonConvert.SerializeObject(profile);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUProfile/" + u.UserID, content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Response.Redirect("~/CreateGig");
            }
            Response.Redirect("~/RequestorProfile");
        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {
            pro = new UProfile();

            pro.uCompany = txtCompany.Text;
            pro.uCountry = txtCountry.Text;
            pro.uName = txtName.Text;
            pro.uSurname = txtSurname.Text;
            

            string data = JsonConvert.SerializeObject(pro);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddProfile", content).Result;

            u.FirstLogin = "False";
            

            string uData = JsonConvert.SerializeObject(u);
            StringContent uContent = new StringContent(uData, Encoding.UTF8, "application/json");
            HttpResponseMessage respnse = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID, uContent).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Response.Redirect("~/CreateGig");
            }
            Response.Redirect("~/RequestorProfile");
        }
    }
}