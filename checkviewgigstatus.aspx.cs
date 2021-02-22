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
    public partial class checkviewgigstatus : System.Web.UI.Page
    {
        readonly StringBuilder card = new StringBuilder();
        readonly StringBuilder cards = new StringBuilder();

        List<UserModel> gigs = new List<UserModel>();
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);

        string skills;
        UserModel user;
        protected void Page_Load(object sender, EventArgs e)
        {

        
        }

        protected void searching_Click(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;
            if (txtskills.Text != "" )
            {
                skills = txtskills.Text;

                string data = JsonConvert.SerializeObject(user);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/Getskillscontains/" + skills).Result;


                if (resp.IsSuccessStatusCode)
                {
                    string datas = resp.Content.ReadAsStringAsync().Result;
                    gigs = JsonConvert.DeserializeObject<List<UserModel>>(datas);

                    foreach (UserModel gig in gigs)
                    {
                        card.Append("<div style='text-align:left;' >");
                        card.Append("<h3 style='font-size:18px;'>" + "<hr/>" + "</h3>");
                        card.Append("<h3 style='font-size:16px;'>" + "<b>" + gig.uGigTitles + "" + "</b>" + "</h3>");


                        card.Append("<h3 style='font-size:18px;'>" + "<br/>" + "</h3>");

                        //card.Append("<div style='text-align:right;margin:auto;' >");
                        card.Append("<h4 style='font-size:16px;color:gray;'>" + "Date Posted  :" + gig.uDueDates + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h4>");
                        //card.Append("</div>");

                        //card.Append("<h3 style='font-size:16px;'>" + gig.uGigDescription + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");
                        //card.Append("<h3 style='font-size:16px;background-color:lightgray;border-radius:5px;text-align:center;word-spacing: 2em;'>" + gig.uRequiredSkills + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");

                        //card.Append("<div style='text-align:right;margin:auto;' >");
                        //card.Append("<h3 style='font-size:18px;backcolor:red;'>" + "<a href = '/Homepage/Homepage' class= 'card-link'>Respond</a>" + "</h3>");
                        //card.Append("</div>");

                   
                        card.Append("<h3 style='font-size:18px;'>" + "<br/>" + "</h3>");
                        viewgig.Controls.Add(new Literal { Text = card.ToString() });


                    }
                }

            }
            else

            {
                errorm.Text = "Please fill the text*";
            }
        }
    }
}