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
    public partial class GiggerDash : System.Web.UI.Page
    {
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);
        int UserID;


        protected void Create_Click(object sender, EventArgs e)
        {
            u.FirstLogin = "False";
            u.uPastProjectName = txtPastProjectName.Text;
            u.uPastProjectDuration = txtPastProjectDuration.Text;
            u.uPastProjectDetails = txtPastProjectDetails.Text;
            u.uEducation = txtEducation.Text;
            u.uReferences = txtReferences.Text;
            u.uCountry = myInput.Text;
            u.uSurname = LastName.Text;

            string data = JsonConvert.SerializeObject(u);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + UserID, content).Result;


                if (resp.IsSuccessStatusCode)
                {
                Session["UserID"] = UserID;

                Response.Redirect("~/GiggerDashboard");
            }

            Response.Redirect("~/GiggerDash");


            //pro = new UProfile();
            //pro.userID = useID;
            //pro.uPastProjectName = txtPastProjectName.Text;
            //pro.uPastProjectDuration = txtPastProjectDuration.Text;
            //pro.uPastProjectDetails = txtPastProjectDetails.Text;
            //pro.uEducation = txtEducation.Text;
            //pro.uReferences = txtReferences.Text;
            //pro.uCountry = myInput.Text;
            //pro.uName = FirstName.Text;
            //pro.uSurname = LastName.Text;


            //string data = JsonConvert.SerializeObject(pro);
            //StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            //HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddProfile", content).Result;

            //u.FirstLogin = "False";


            //string uData = JsonConvert.SerializeObject(u);
            //StringContent uContent = new StringContent(uData, Encoding.UTF8, "application/json");
            //HttpResponseMessage respnse = client.PutAsync(client.BaseAddress + "/UpdateUser/" + useID, uContent).Result;


            //if (resp.IsSuccessStatusCode)
            //{
            //    Session["UserID"] = useID;
            //    Response.Redirect("~/GiggerDashboard");
            //}
            //Response.Redirect("~/GiggerDash");
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            //profile.userID = useID;
            //profile.uPastProjectName = txtPastProjectName.Text;
            //profile.uPastProjectDuration = txtPastProjectDuration.Text;
            //profile.uPastProjectDetails = txtPastProjectDetails.Text;
            //profile.uEducation = txtEducation.Text;
            //profile.uReferences = txtReferences.Text;
            //profile.uCountry = myInput.Text;
            //profile.uSurname = LastName.Text;

            //string data = JsonConvert.SerializeObject(profile);
            //StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            //HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/AddProfile/" + useID, content).Result;

            //if (resp.IsSuccessStatusCode)
            //{
            //    Session["UserID"] = useID;
            //    Response.Redirect("~/GiggerDashboard");
            //}
            //Response.Redirect("~/GiggerDash");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;
            if (Session["UserID"].Equals(null))
            {
                ErrorM.Visible = true;
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
                ErrorM.Visible = true;
            }
            //Update.Enabled = false;
            //Edit.Enabled = false;
            //client.BaseAddress = baseAddress;

            //useID = Convert.ToInt32(Session["UserID"]);

            //if (useID.Equals(null))
            //{
            //    Response.Redirect("~/Account/Logins");
            //}

            //HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + useID).Result;

            //if (resp.IsSuccessStatusCode)
            //{
            //    string data = resp.Content.ReadAsStringAsync().Result;
            //    u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

            //    if (u.FirstLogin == "False")
            //    {
            //        Edit.Enabled = true;
            //        Update.Visible = false;
            //        HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserProfile/" + useID).Result;
            //        if (res.IsSuccessStatusCode)
            //        {
            //            string objectPro = res.Content.ReadAsStringAsync().Result;
            //            profile = new UProfile(JsonConvert.DeserializeObject<UProfile>(objectPro));
            //            myInput.Text = profile.uCountry;
            //            txtEducation.Text = profile.uEducation;
            //            FirstName.Text = profile.uName;
            //            LastName.Text = profile.uSurname;
            //            txtReferences.Text = profile.uReferences;
            //            txtPastProjectName.Text = profile.uPastProjectName;
            //            txtPastProjectDuration.Text = profile.uPastProjectDuration;
            //            txtPastProjectDetails.Text = profile.uPastProjectDetails;
            //            txtcompany.Text = profile.uCompany;
            //        }
            //        else
            //        {
            //            //Enable the edit profile button so they can change their existing profile or force them to update/create it
            //        }
            //        Update.Enabled = true;
            //    }
            //    //Edit.Visible = true;
            //    //Update.Enabled = true;
            //}
            //else
            //{
            //    ErrorM.Visible = true;
            //}

        }

    }

}
