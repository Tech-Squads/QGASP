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
    public partial class GigInfo : System.Web.UI.Page
    {
        readonly StringBuilder card = new StringBuilder();
        GigModel gig = new GigModel();
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);

        protected void Page_Load(object sender, EventArgs e)
        {
            string gigID = Request.QueryString["GigId"].ToString();
            
            client.BaseAddress = baseAddress;

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetGigByID/"+ gigID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                gig = JsonConvert.DeserializeObject<GigModel>(data);
            }


            card.Append("<div class='card' style='width:800px; display:flex; justify-content:center;' >");
            card.Append("<h5 class='card - title'>" + gig.GigTitle + "</h5>");
            card.Append("<div class='card - body'>");
            card.Append("<h6 class='card-subtitle mb-2 text-muted'>" + gig.DueDate + "</h6>");
            card.Append("<p class= 'card-text'>" + gig.GigDescription + "</p>");
            card.Append("<a href =  '#' class= 'card-link'>ACCEPT</a>");

            card.Append("<a href = ~/ViewGigs  class='card-link'>BACK</a>");
            card.Append("</div>");
            card.Append("</div>");
            PlaceH.Controls.Add(new Literal { Text = card.ToString() });



        }
    }
}