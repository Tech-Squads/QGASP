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
    public partial class profilecreate : System.Web.UI.Page
    {
        
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri("https://localhost:44364/api/User");

         
        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;
            if(Session["UserID"].Equals(null))
            {
                Response.Redirect("~/Account/Login");
            }

            int userID = (int)Session["UserID"];
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/"+userID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                 u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));
            }
            else
            {
                ErrorM.Visible = true;
            }
        

    }

        protected void RequestorType_Click(object sender, EventArgs e)
        {
            u.FirstLogin = "false";
            u.uType = 2;

            string data = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser" , content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Response.Redirect("~/RequestorProfile");
            }
            Response.Redirect("~/Account/Login");



        }

        protected void GiggerProfile_Click(object sender, EventArgs e)
        {

            u.FirstLogin = "false";
            u.uType = 1;


            Session["userID"] = u.UserID;
            
            Response.Redirect("~/GiggerProfile");
        }
    }
}