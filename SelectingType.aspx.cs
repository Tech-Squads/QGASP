﻿using Newtonsoft.Json;
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
    public partial class SelectingType : System.Web.UI.Page
    {
        UserModel u;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);

        protected void Page_Load(object sender, EventArgs e)
        {

            client.BaseAddress = baseAddress;
            if (Session["UserID"].Equals(null))
            {
                Response.Redirect("~/Account/Login");
            }

            int userID = (int)Session["UserID"];
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + userID).Result;

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


        protected void selectrequestor_Click(object sender, EventArgs e)
        {
            u.FirstLogin = "ACTIVE";
            u.uType = 2;

            string data = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID, content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Session["uType"] = "Req";
                Response.Redirect("~/RequestorDashboard");
                
            }
            Response.Redirect("~/SelectingType.aspx");

        }

        protected void selectgigger_Click(object sender, EventArgs e)
        {
            u.FirstLogin = "ACTIVE";
            u.uType = 1;

            string data = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID, content).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["userID"] = u.UserID;
                Session["uType"] = u.uType;             
                Response.Redirect("~/GiggerDashboard");

            }
            Response.Redirect("~/SelectingType.aspx");

        }
    }
}