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
    public partial class HomeRequestor : System.Web.UI.Page
    {
        readonly StringBuilder card = new StringBuilder();
        readonly StringBuilder cards = new StringBuilder();
          

        //List<GigModel> gigs = new List<GigModel>();
        List<UserModel> Gigs = new List<UserModel>();
        List<UserModel> Gignew = new List<UserModel>();

        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);

        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;

            //for new gigs display
            HttpResponseMessage respon = client.GetAsync(client.BaseAddress + "/Getnewgigrunning").Result;

            //Getting all giggs
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/Gettingallgigs").Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                Gigs = JsonConvert.DeserializeObject<List<UserModel>>(data);

                foreach (UserModel gig in Gigs)
                {
                    cards.Append("<div style='text-align:left;' >");
                    cards.Append("<h3 style='font-size:18px;'>" + "<hr/>" + "</h3>");
                    cards.Append("<h3 style='font-size:16px;'>" + "<b>" + gig.uGigTitles + "" + "</b>" + "</h3>");

                    cards.Append("<div style='text-align:right;margin:auto;' >");
                    cards.Append("<h4 style='font-size:16px;color:gray;'>" + "Date Posted  :" + gig.uDueDates + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h4>");
                    cards.Append("</div>");

                    cards.Append("<h3 style='font-size:16px;'>" + gig.uGigDescriptions + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");
                    cards.Append("<h3 style='font-size:16px;background-color:lightgray;border-radius:5px;text-align:center;word-spacing: 2em;'>" + gig.uRequiredSkills + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");

                    //card.Append("<div style='text-align:right;margin:auto;' >");
                    //card.Append("<h3 style='font-size:18px;backcolor:red;'>" + "<a href = '/Homepage/Homepage' class= 'card-link'>Respond</a>" + "</h3>");
                    //card.Append("</div>");

                    
                    cards.Append("<h3 style='font-size:18px;'>" + "<br/>" + "</h3>");
                    viewgig.Controls.Add(new Literal { Text = cards.ToString() });


                }
            }


           
            //if (respon.IsSuccessStatusCode)
            //    {
            //        string data = respon.Content.ReadAsStringAsync().Result;
            //    Gignew = JsonConvert.DeserializeObject<List<UserModel>>(data);

            //        foreach (UserModel gig in Gignew)
            //        {
            //            //card.Append("<div style='float:right;'>");
            //            card.Append("<h3 style='font-size:16px;'>" + "<b>" + gig.uGigTitle + "" + "</b>" + "</h3>");

            //        card.Append("<div style='text-align:left;margin:auto;' >");
            //        card.Append("<h5 style='font-size:16px;'>" + "Date Posted  :" + gig.uDueDate + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h5>");
            //        card.Append("</div>");
            //        LblNewGigs.Controls.Add(new Literal { Text = card.ToString() });


            //        }
            //    }

        }
    }
}