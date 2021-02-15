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
      
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);
        int UserID;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString("MM/dd/yyyy hh:mm tt");
            //client.BaseAddress = baseAddress;



            // UserID = Convert.ToInt32(Session["UserID"]);
            //HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/api/User/GetUserByID/" + UserID).Result;

            //if (resp.IsSuccessStatusCode)
            //{
            //    string data = resp.Content.ReadAsStringAsync().Result;
            //    u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
            //}

            client.BaseAddress = baseAddress;
            if (Session["UserID"].Equals(null))
            {
                ErrorMsg.Visible = true;
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
                ErrorMsg.Visible = true;
            }
        }

        protected void AddGig_Click(object sender, EventArgs e)
        {

            u.HasGig = "True";
            u.uGigTitle = gigTitle.Text.Trim();

            u.uDueDate = Label1.Text.Trim();
            u.uGigDescription = gDescription.Text.Trim();
            //gig.ContactDetails = ContactEmail.Text.Trim();
            u.uRequiredSkills = SkillsRequired.Text.Trim();
            u.uRequestorID = UserID;

            string data = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + UserID, content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["UserID"] = UserID;
                Response.Redirect("~/RequestorDashboard");
            }

            ErrorMsg.Text = "Gig not Created.";

            //gig.GigTitle = gigTitle.Text.Trim();

            //gig.DueDate = Label1.Text.Trim();
            //gig.GigDescription = gDescription.Text.Trim();
            ////gig.ContactDetails = ContactEmail.Text.Trim();
            //gig.RequiredSkills = SkillsRequired.Text.Trim();
            //gig.RequestorID = UserID;


            //string data = JsonConvert.SerializeObject(gig);
            //StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            //HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddGig", content).Result;


            //if (resp.IsSuccessStatusCode)
            //{
            //    Session["UserID"] = UserID;

            //    //Response.Redirect("~/ViewGigs");
            //    Response.Redirect("~/RequestorDashboard");


            //}
            //Response.Redirect("~/index.aspx");
        }
        protected void update_Click(object sender, EventArgs e)
        {

            //gig.GigTitle = gigTitle.Text.Trim();

            //gig.DueDate = Label1.Text.Trim();
            //gig.GigDescription = gDescription.Text.Trim();
            ////gig.ContactDetails = ContactEmail.Text.Trim();
            //gig.RequiredSkills = SkillsRequired.Text.Trim();
            

            //string dat = JsonConvert.SerializeObject(gig);
            //StringContent content = new StringContent(dat, Encoding.UTF8, "application/json");
            //HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateGig/" + UserID, content).Result;


            //if (resp.IsSuccessStatusCode)
            //{

            //    ErrorMsg.Text = "Gig updated successfuly";
            //}
            //ErrorMsg.Text = "Gig not updated";

        }
        //protected void Delete_Click(object sender, EventArgs e)
        //{

        //}
    }
}