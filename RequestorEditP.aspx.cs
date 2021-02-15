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
    public partial class RequestorEditP : System.Web.UI.Page
    {
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);
        int UserID;


        protected void Page_Load(object sender, EventArgs e)
        {


            //client.BaseAddress = baseAddress;
            //if (Session["UserID"].Equals(null))
            //{
            //    ErrorM.Visible = true;
            //}

            //UserID = Convert.ToInt32(Session["UserID"]);
            //HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + UserID).Result;

            //if (resp.IsSuccessStatusCode)
            //{
            //string data = resp.Content.ReadAsStringAsync().Result;
            //u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
            //if (u.FirstLogin == "False")
            //{

            //    HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserPro/" + u.UserID).Result;
            //    if (res.IsSuccessStatusCode)
            //    {
            //        string objectPro = res.Content.ReadAsStringAsync().Result;

            //        u = new UserModel(JsonConvert.DeserializeObject<UserModel>(objectPro));
            //        myInput.Text = u.uCountry;
            //        FirstName.Text = u.uName;
            //        LastName.Text = u.uSurname;
            //        txtcompany.Text = u.uCompany;
            //        txteducation.Text = u.uEducation;
            //    }
            //}
            //    ErrorM.Visible = false;
            //}

            //else
            //{
            //    ErrorM.Visible = true;
            //}
            client.BaseAddress = baseAddress;
            if (Session["UserID"].Equals(null))
            {
                Response.Redirect("~/Account/Logins");
            }

            UserID = Convert.ToInt32(Session["UserID"]);
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + UserID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));


                HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserPro/" + u.UserID).Result;
                //    if (res.IsSuccessStatusCode)
                //    {
                //        string objectPro = res.Content.ReadAsStringAsync().Result;

                //        u = new UserModel(JsonConvert.DeserializeObject<UserModel>(objectPro));
                //        myInput.Text = u.uCountry;
                //        FirstName.Text = u.uName;
                //        LastName.Text = u.uSurname;
                //        txtcompany.Text = u.uCompany;
                //        txteducation.Text = u.uEducation;
                //    }
            }

            else
            {
                ErrorM.Visible = true;
            }

        }

   

        protected void Create_Click(object sender, EventArgs e)
        {
           



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

            Response.Redirect("~/RequestorEditP.aspx");
         
        }
    }
}