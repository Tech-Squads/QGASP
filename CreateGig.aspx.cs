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
    public partial class CreateGig : System.Web.UI.Page
    {
        GigModel gig;
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364");
        int userID;

        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;
            gig = new GigModel();
            userID = (int)Session["UserID"];
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/api/User/GetUserByID/" + userID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
            }
        }

        protected void AddGig_Click(object sender, EventArgs e)
        {
            gig.GigTitle = gigTitle.Text.Trim();
            gig.DueDate = dueDate.Text.Trim();
            gig.GigDescription = gDescription.Text.Trim();
            gig.ContactDetails = ContactEmail.Text.Trim();
            gig.RequiredSkills = SkillsRequired.Text.Trim();
            gig.RequestorID = userID;


            string data = JsonConvert.SerializeObject(gig);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddGig", content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = userID;
                //Response.Redirect("~/ViewGigs");
                Response.Redirect("~/RequestorDashboard");
            }
            Response.Redirect("~/Homepage/Homepage");
        }
    }
}