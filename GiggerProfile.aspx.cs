using Newtonsoft.Json;
using QlityG.DataAccess;
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
        int UserID;
        UProfile pro,profile;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(DeployString.API);

        protected void Page_Load(object sender, EventArgs e)
        {
            Create.Enabled = false;
            Update.Enabled = false;
            client.BaseAddress = baseAddress;

             UserID = (int)Session["UserID"];
            
            if (UserID.Equals(null))
            {
                Response.Redirect("~/Account/Login");
            }

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + UserID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
                
                if(u.FirstLogin == "False")
                {
                    Update.Enabled = true;
                    HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserProfile/" + UserID).Result;
                    if (res.IsSuccessStatusCode)
                    {
                        string objectPro = res.Content.ReadAsStringAsync().Result;

                        profile = new UProfile(JsonConvert.DeserializeObject<UProfile>(objectPro));


                        txtCountry.Attributes.Add("placeholder", profile.uCountry);
                        txtEducation.Attributes.Add("placeholder", profile.uEducation);
                        txtName.Attributes.Add("placeholder", profile.uName);
                        txtSurname.Attributes.Add("placeholder",profile.uSurname);
                        txtSkills.Attributes.Add("placeholder", profile.uSkills);
                        txtReferences.Attributes.Add("placeholder", profile.uReferences);
                        txtPastProjectName.Attributes.Add("placeholder", profile.uPastProjectName);
                        txtPastProjectDuration.Attributes.Add("placeholder", profile.uPastProjectDuration);
                        txtPastProjectDetails.Attributes.Add("placeholder", profile.uPastProjectDetails);
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

            profile.userID = UserID;
            profile.uPastProjectName = txtPastProjectName.Text;
            profile.uPastProjectDuration = txtPastProjectDuration.Text;
            profile.uPastProjectDetails = txtPastProjectDetails.Text;
            profile.uEducation = txtEducation.Text;
            profile.uReferences = txtReferences.Text;
            profile.uSkills = txtSkills.Text;
            profile.uCountry = txtCountry.Text;
            profile.uName = txtName.Text;
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
            pro.userID = UserID;
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

            u.FirstLogin = "False";


            string uData = JsonConvert.SerializeObject(u);
            StringContent uContent = new StringContent(uData, Encoding.UTF8, "application/json");
            HttpResponseMessage respnse = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID, uContent).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Response.Redirect("~/Home");
            }
            Response.Redirect("~/GiggerProfile");
        }
    }
}