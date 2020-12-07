using Newtonsoft.Json;
using QlityG.DataAccess;
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
    public partial class ViewGigs : System.Web.UI.Page
    {
        readonly StringBuilder card = new StringBuilder();
        List<GigModel> gigs = new List<GigModel>();
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(DeployString.API);

        protected void Page_Load(object sender, EventArgs e)
        {

            client.BaseAddress = baseAddress;

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetAllGigs" ).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                gigs =  JsonConvert.DeserializeObject<List<GigModel>>(data);

                foreach (GigModel gig in gigs)
                {
                    card.Append("<div class='card' style='width: 18rem;' >");
                    card.Append("<h5 class='card - title'>"+ gig.GigTitle + "</h5>");
                    card.Append("<div class='card - body'>");
                    card.Append("<h6 class='card-subtitle mb-2 text-muted'>"+ gig.DueDate + "</h6>");
                    card.Append("<p class= 'card-text'>"+gig.GigDescription+"</p>");
                    card.Append("<a href =  '#' class= 'card-link'>ACCEPT GIG</a>");
                    card.Append("<br/>");
                    card.Append("<a href = ~/GigInfo ?GigId="+ gig.GigID +"  class='card-link'>VIEW GIG</a>");
                    card.Append("</div>");
                    card.Append("</div>");
                    PlaceH.Controls.Add(new Literal { Text = card.ToString() });
                }

                

            }

          //  Response.Redirect("~/Home");


            
        }
    }
}