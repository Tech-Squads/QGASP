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
    public partial class GiggerEditP : System.Web.UI.Page
    {
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.USendRL);
        int UserID;
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
                if (u.FirstLogin == "False")
                {

                    HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserPro/" + u.UserID).Result;
                    if (res.IsSuccessStatusCode)
                    {
                        string objectPro = res.Content.ReadAsStringAsync().Result;

                        u = new UserModel(JsonConvert.DeserializeObject<UserModel>(objectPro));
                        myInput.Text = u.uCountrys;
                        txtEducation.Text = u.uEducations;
                        FirstName.Text = u.uNames;
                        LastName.Text = u.uSurnames;
                        txtReferences.Text = u.uReference;
                        txtPastProjectName.Text = u.uPastProjectNames;
                        txtPastProjectDuration.Text = u.uPastProjectDurations;
                        txtPastProjectDetails.Text = u.uPastProjectDetail;
                        txtcompany.Text = u.uCompanys;
                    }
                }
              
            }

           else
            {
                ErrorM.Visible = true;
            }
        }
        protected void Create_Click(object sender, EventArgs e)
        {
           
            u.uPastProjectNames = txtPastProjectName.Text;
            u.uPastProjectDurations = txtPastProjectDuration.Text;
            u.uPastProjectDetail = txtPastProjectDetails.Text;
            u.uEducations = txtEducation.Text;
            u.uReference = txtReferences.Text;
            u.uCountrys = myInput.Text;
            u.uSurnames = LastName.Text;
            u.uNames = FirstName.Text;
            u.uCompanys = txtcompany.Text;

            string data = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID, content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["UserID"] = UserID;

                Response.Redirect("~/GiggerDashboard");
            }

            Response.Redirect("~/GiggerEdit");


        }

    }
}