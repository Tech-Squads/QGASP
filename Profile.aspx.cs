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
    public partial class Profile : System.Web.UI.Page
    {
        int userID;
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);
        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;
            userID = (int)Session["userID"];

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + userID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                if(u.uType.Equals("2"))
                {
                    Session["userID"] = u.UserID;
                    Session["uType"] = u.uType;

                    Response.Redirect("~/RequestorProfile");
                }

                Session["userID"] = u.UserID;
                Session["uType"] = u.uType;

                Response.Redirect("~/GiggerProfile");
            }
            Response.Redirect("/Home");
        }
    }
}