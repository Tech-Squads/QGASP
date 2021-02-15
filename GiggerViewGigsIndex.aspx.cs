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
using System.IO;
using System.Data;

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
                        Label9.Text = u.uImageP;
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
        protected void Create_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string strpath = Path.GetExtension(FileUpload1.PostedFile.FileName);
                if (strpath != ".jpg" && strpath != ".jpeg" && strpath != "" && strpath != ".png")
                {
                    ImageError.Text = "Only Image type .jpeg, .jpg, .gif, .png allowed ! ";
                    ImageError.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    ImageError.Text = "Profile image is saved. ";
                    ImageError.ForeColor = System.Drawing.Color.Green;
                }
                string fileimg = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("~/UserImages/") + fileimg);

                u.uImageP = "~/ UserImages /" + fileimg;

                string data = JsonConvert.SerializeObject(u);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUser/" + UserID, content).Result;


                //if (resp.IsSuccessStatusCode)
                //{
                //    Session["UserID"] = UserID;
                //    //Response.Redirect("~/.aspx");
                //    ImageError.Text = "Image saved successfully/";
                //}
                //ImageError.Text = "not success";


            }


        }
    }
}