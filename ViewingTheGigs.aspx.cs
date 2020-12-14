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
    public partial class ViewingTheGigs : System.Web.UI.Page
    {
        readonly StringBuilder card = new StringBuilder();
        List<GigModel> gigs = new List<GigModel>();
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364");

        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetAllGigs").Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                gigs = JsonConvert.DeserializeObject<List<GigModel>>(data);

                foreach (GigModel gig in gigs)
                {

                    
              

                    card.Append("<table border='1;border - spacing: 1em .5em;padding: 0 2em 1em 0;'>");
                   
                    card.Append("<tr>");
                    card.Append("<th> Title Of Gig </th>");
                    card.Append("<th> Gig Description</th>");                
                    card.Append("<th> Due Date</th>");
                    card.Append("</tr>");

                    card.Append("<tr>");
                    card.Append("<td> "+ gig.GigTitle + " </td>");
                    card.Append("<td> " + gig.GigDescription + " </td>");
                    card.Append("<td> " + gig.DueDate + " </td>");
                    card.Append("</tr>");

                    

                  
                    

                    card.Append("</table>");
                   Label1.Controls.Add(new Literal { Text = card.ToString() });

                    //card.Append("<div class='card' style='width: 18rem;text-align:center;' >");
                    //card.Append("<h4 class= 'card-link'><b>Gig Title<b/> <hr /></h4>");
                    //card.Append("<h5 class='card - title'> " + gig.GigTitle + "</h5>");
                    //card.Append("<div class='card - body'>");
                    //card.Append("<h6 class='card-subtitle mb-2 text-muted'>" + gig.DueDate + "</h6>");
                    //card.Append("<p class= 'card-text'>" + gig.GigDescription + "</p>");
                    //card.Append("<a href =  '#' class= 'card-link'>ACCEPT GIG <hr /></a>");
                    //card.Append("<a href = ~/GigInfo ?GigId=" + gig.GigID + "  class='card-link'>VIEW GIGs</a>");
                    //card.Append("</div>");
                    //card.Append("</div>");

                    //titletext.Text = gig.GigTitle;
                    //gigdesription.Text = gig.GigDescription;
                    //datedue.Text = gig.DueDate;
                    //Label1.Controls.Add(new Literal { Text = card.ToString() });

                    //PlaceH.Controls.Add(new Literal { Text = card.ToString() });
                }



            }

            //  Response.Redirect("~/Home");



        }
    }
}