using Newtonsoft.Json;
using QlityG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QlityG
{
    public partial class ViewGigs : System.Web.UI.Page
    {
        List<GigModel> gigs = new List<GigModel>();
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364");

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
                    GigTitle.InnerText = gig.GigTitle;
                    DueDate.InnerText = gig.DueDate;
                    gDescription.InnerText = gig.GigDescription;
                }
            }
          //  Response.Redirect("~/Home");


            
        }
    }
}