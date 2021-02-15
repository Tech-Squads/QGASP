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
    public partial class GiggerViewGigsIndex : System.Web.UI.Page
    {
        readonly StringBuilder card = new StringBuilder();
        readonly StringBuilder cards = new StringBuilder();

        List<GigModel> gigs = new List<GigModel>();
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);


        UserModel u;
       
       
        int UserID;
        protected void Page_Load(object sender, EventArgs e)
        {

            client.BaseAddress = baseAddress;

            //FirstName.Enabled = false;

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetAllGigs").Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                gigs = JsonConvert.DeserializeObject<List<GigModel>>(data);

                foreach (GigModel gig in gigs)
                {
                    card.Append("<div style='text-align:left;' >");
                    card.Append("<h3 style='font-size:16px;'>" + "<b>" + gig.GigTitle + "" + "</b>" + "</h3>");

                    card.Append("<div style='text-align:right;margin:auto;' >");
                    card.Append("<h4 style='font-size:16px;'>" + "Date Posted  :" + gig.DueDate + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h4>");
                    card.Append("</div>");

                    card.Append("<h3 style='font-size:16px;'>" + gig.GigDescription + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");
                    card.Append("<h3 style='font-size:16px;background-color:lightgray;border-radius:5px;text-align:center;word-spacing: 2em;'>" + gig.RequiredSkills + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");

                    card.Append("<div style='text-align:right;margin:auto;' >");
                    card.Append("<h3 style='font-size:18px;backcolor:red;'>" + "<a href = '/Homepage/Homepage' class= 'card-link'>Respond</a>" + "</h3>");
                    card.Append("</div>");

                    card.Append("<h3 style='font-size:18px;'>" + "<hr/>" + "</h3>");
                    card.Append("<h3 style='font-size:18px;'>" + "<br/>" + "</h3>");
                    viewgig.Controls.Add(new Literal { Text = card.ToString() });


                }
            }


            UserID = Convert.ToInt32(Session["UserID"]);
            if (UserID.Equals(null))
            {
                Response.Redirect("~/Account/Logins");
            }

            HttpResponseMessage respo = client.GetAsync(client.BaseAddress + "/GetUserByID/" + UserID).Result;

            if (respo.IsSuccessStatusCode)
            {
                string data = respo.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                if (u.FirstLogin == "False")
                {
                    HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserPro/" + u.UserID).Result;
                    if (res.IsSuccessStatusCode)
                    {
                        string objectPro = res.Content.ReadAsStringAsync().Result;

                        u = new UserModel(JsonConvert.DeserializeObject<UserModel>(objectPro));

                        //lblcountry.Text = profile.uCountry;
                        lblcompany.Text = u.uCompany;
                        lblname.Text = u.uName;
                        lblsurname.Text = u.uSurname;
                    }

                }

            }



            lblEmail.Text = u.uEmail;



            if (respo.IsSuccessStatusCode)
            {
                string data = respo.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                if (u.FirstLogin == "False")
                {


                }

            }





        }
    }
}