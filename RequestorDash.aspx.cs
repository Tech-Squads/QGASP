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
    public partial class RequestorDash : System.Web.UI.Page
    {

        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);
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
            }

            else
            {
                ErrorM.Visible = true;
            }

            //Update.Enabled = false;
            //Create.Enabled = false;
            //client.BaseAddress = baseAddress;

            //UserID = Convert.ToInt32(Session["UserID"]);
            //if (UserID.Equals(null))
            //{
            //    Response.Redirect("~/Account/Logins");
            //}

            //HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + UserID).Result;

            //if (resp.IsSuccessStatusCode)
            //{
            //    string data = resp.Content.ReadAsStringAsync().Result;
            //    u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

            //    if (u.FirstLogin == "False")
            //    {
            //        Update.Enabled = true;
            //        HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserProfile/" + u.UserID).Result;
            //        if (res.IsSuccessStatusCode)
            //        {
            //            string objectPro = res.Content.ReadAsStringAsync().Result;

            //            profile = new UProfile(JsonConvert.DeserializeObject<UProfile>(objectPro));
            //            myInput.Text = profile.uCountry;
            //            FirstName.Text = profile.uName;
            //            LastName.Text = profile.uSurname;
            //            txtcompany.Text = profile.uCompany;
            //            txteducation.Text = profile.uEducation;
            //        }
            //    }
            //    Create.Enabled = true;

            //}
            //else
            //{
            //    ErrorM.Visible = true;
            //}


            //lblEmail.Text = u.uEmail;
        }

        //protected void Update_Click(object sender, EventArgs e)
        //{

        //    profile.userID = UserID;
        //    profile.uName = FirstName.Text;
        //    profile.uSurname = LastName.Text;
        //    profile.uCompany = txtcompany.Text;
        //    profile.uCountry = myInput.Text;

        //    //profile.uReferences = txtheadline.Text;
        //    profile.uEducation = txteducation.Text;

        //    string data = JsonConvert.SerializeObject(profile);
        //    StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
        //    HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/AddProfile/" + u.UserID, content).Result;


        //    if (resp.IsSuccessStatusCode)
        //    {
        //        Session["UserID"] = UserID;
        //        Response.Redirect("~/RequestorDashboard");

        //    }
        //    Response.Redirect("~/RequestorDash");
        //}

        protected void Create_Click(object sender, EventArgs e)
        {
            u.FirstLogin = "False";
            u.uCompany = txtcompany.Text;
            u.uCountry = myInput.Text;

            u.uName = FirstName.Text;
            u.uSurname = LastName.Text;
            u.uEducation = txteducation.Text;

            string data = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + UserID, content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["UserID"] = UserID;
                Response.Redirect("~/RequestorDashboard.aspx");
            }

            Response.Redirect(" ~/RequestorDash.aspx");
            //pro = new UProfile();

            //pro.userID = UserID;
            //pro.uCompany = txtcompany.Text;
            //pro.uCountry = myInput.Text;

            //pro.uName = FirstName.Text;
            //pro.uSurname = LastName.Text;
            //pro.uEducation = txteducation.Text;

            //string data = JsonConvert.SerializeObject(pro);
            //StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            //HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddProfile", content).Result;

            //u.FirstLogin = "False";


            //string uData = JsonConvert.SerializeObject(u);
            //StringContent uContent = new StringContent(uData, Encoding.UTF8, "application/json");
            //HttpResponseMessage respnse = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID, uContent).Result;


            //if (resp.IsSuccessStatusCode)
            //{
            //    Session["UserID"] = UserID;

            //    Response.Redirect("~/RequestorDashboard.aspx");
            //}
            //Response.Redirect(" ~/RequestorDash.aspx");
        }
    }
}