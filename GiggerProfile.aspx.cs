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
    public partial class GiggerProfile : System.Web.UI.Page
    {

        UserModel u;
        UProfile pro,profile;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364");

        protected void Page_Load(object sender, EventArgs e)
        {
            Create.Enabled = false;
            Update.Enabled = false;
            client.BaseAddress = baseAddress;

            int userID = (int)Session["UserID"];
            
            if (userID.Equals(null))
            {
                Response.Redirect("~/Account/Login");
            }

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + userID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
                
                if(u.FirstLogin == "False")
                {
                    Update.Enabled = true;
                    HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserProfile/" + u.UserID).Result;
                    if (res.IsSuccessStatusCode)
                    {
                        string objectPro = res.Content.ReadAsStringAsync().Result;

                        profile = new UProfile(JsonConvert.DeserializeObject<UProfile>(objectPro));


                        txtCountry.Text = profile.uCountry;
                        txtEducation.Text = profile.uEducation;
                        txtName.Text = profile.uName;
                        txtSurname.Text = profile.uSurname;
                        txtSkills.Text = profile.uSkills;
                        txtReferences.Text = profile.uReferences;
                        txtPastProjectName.Text = profile.uPastProjectName;
                        txtPastProjectDuration.Text = profile.uPastProjectDuration;
                        txtPastProjectDetails.Text = profile.uPastProjectDetails;
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

            profile.userID = u.UserID;
            profile.uPastProjectName = txtPastProjectName.Text;
            profile.uPastProjectDuration = txtPastProjectDuration.Text;
            profile.uPastProjectDetails = txtPastProjectDetails.Text;
            profile.uEducation = txtEducation.Text;
            profile.uReferences = txtReferences.Text;
            profile.uSkills = txtSkills.Text;
            profile.uCountry = txtCountry.Text;
            profile.uName = "John Fredrick";
            profile.uSurname = txtSurname.Text;


            string data = JsonConvert.SerializeObject(profile);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUProfile/" + u.UserID, content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Response.Redirect("~/Home");
            }
            Response.Redirect("~/GiggerProfile");
        }


        protected void txtName_TextChanged(object sender, EventArgs e)
        {
            txtName.Text = txtName.Text;
        }

        protected void UpdateProfile_Click(object sender, EventArgs e)
        {
            pro = new UProfile();
            pro.userID = u.UserID;
            pro.uPastProjectName = txtPastProjectName.Text;
            pro.uPastProjectDuration = txtPastProjectDuration.Text;
            pro.uPastProjectDetails = txtPastProjectDetails.Text;
            pro.uEducation = txtEducation.Text;
            pro.uReferences =  txtReferences.Text;
            pro.uSkills = txtSkills.Text;
            pro.uCountry = txtCountry.Text;
            pro.uName = txtName.Text;
            pro.uSurname = txtSurname.Text;


            string data = JsonConvert.SerializeObject(pro);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddProfile", content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Response.Redirect("~/Home");
            }
            Response.Redirect("~/GiggerProfile");
        }
    }
}