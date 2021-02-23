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
using System.Data.SqlClient;

namespace QlityG
{
    public partial class ViewGigsIndex : System.Web.UI.Page
    {
        readonly StringBuilder card = new StringBuilder();
        readonly StringBuilder cards = new StringBuilder();

        List<GigModel> gigses = new List<GigModel>();
        List<UserModel> gigs = new List<UserModel>();
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.USendRL);


        UserModel u;
        UserModel user;

        string skills;
      

        int UserID;
        protected void Page_Load(object sender, EventArgs e)
        {



            //string[] filesindirecotory = Directory.GetFiles(Server.MapPath("~/UserImages"));
            //List<String> images = new List<string>(filesindirecotory.Count());
            //foreach (string item in filesindirecotory)
            //{
            //    images.Add(String.Format("~/UserImages/{1}", System.IO.Path.GetFileName(item)));
            //}
            //Repeater1.DataSource = images;
            //Repeater1.DataBind();




            client.BaseAddress = baseAddress;

            //FirstName.Enabled = false;

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/Gettingallgigs").Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                gigs = JsonConvert.DeserializeObject<List<UserModel>>(data);

                foreach (UserModel gig in gigs)
                {
                    card.Append("<div style='text-align:left;' >");
                    card.Append("<h3 style='font-size:18px;'>" + "<hr/>" + "</h3>");
                    card.Append("<h3 style='font-size:16px;'>" + "<b>" + gig.uGigTitles + "" + "</b>" + "</h3>");

                    card.Append("<div style='text-align:right;margin:auto;' >");
                    card.Append("<h4 style='font-size:16px;color:gray;'>" + "Date Posted  :" + gig.uDueDates + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h4>");
                    card.Append("</div>");

                    card.Append("<h3 style='font-size:16px;'>" + gig.uGigDescriptions + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");
                    card.Append("<h3 style='font-size:16px;background-color:lightgray;border-radius:5px;text-align:center;word-spacing: 2em;'>" + gig.uRequiredSkills + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");

                    card.Append("<div style='text-align:right;margin:auto;' >");
                    //card.Append("<h3 style='font-size:18px;backcolor:red;'>" + "<a href = '/Homepage/Homepage' class= 'card-link'>Respond</a>" + "</h3>");
                    card.Append("</div>");

                    card.Append("<h3 style='font-size:18px;'>" + "<hr/>" + "</h3>");
                    card.Append("<h3 style='font-size:18px;'>" + "<br/>" + "</h3>");
                    viewgig.Controls.Add(new Literal { Text = card.ToString() });


                }
            }
            //for new gigs display
            //HttpResponseMessage respon = client.GetAsync(client.BaseAddress + "/Getnewgigrunning").Result;
            //if (respon.IsSuccessStatusCode)
            //    {
            //        string data = respon.Content.ReadAsStringAsync().Result;
            //        gigs = JsonConvert.DeserializeObject<List<UserModel>>(data);

            //        foreach (UserModel gig in gigs)
            //        {
            //            card.Append("<div style='text-align:left;' >");
            //            card.Append("<h3 style='font-size:16px;'>" + "<b>" + gig.uGigTitle + "" + "</b>" + "</h3>");

            //            card.Append("<div style='text-align:right;margin:auto;' >");
            //            card.Append("<h4 style='font-size:16px;'>" + "Date Posted  :" + gig.uDueDate + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h4>");
            //            card.Append("</div>");

            //            card.Append("<h3 style='font-size:16px;'>" + gig.uGigDescription + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");
            //            card.Append("<h3 style='font-size:16px;background-color:lightgray;border-radius:5px;text-align:center;word-spacing: 2em;'>" + gig.uRequiredSkills + "<a href = '/Homepage/Homepage' class= 'card-link'></a>" + "</h3>");

            //            card.Append("<div style='text-align:right;margin:auto;' >");
            //            //card.Append("<h3 style='font-size:18px;backcolor:red;'>" + "<a href = '/Homepage/Homepage' class= 'card-link'>Respond</a>" + "</h3>");
            //            card.Append("</div>");

            //            card.Append("<h3 style='font-size:18px;'>" + "<hr/>" + "</h3>");
            //            card.Append("<h3 style='font-size:18px;'>" + "<br/>" + "</h3>");
            //            LblNewGigs.Controls.Add(new Literal { Text = card.ToString() });


            //        }
            //    }











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
                        lblcompany.Text = u.uCompanys;
                        lblname.Text = u.uNames;
                        lblsurname.Text = u.uSurnames;
                        Label2.Text = u.uNames;
                        Label3.Text = u.uSurnames;
                        //Image1.ImageUrl = u.uImagePs;
                        Label9.Text = u.uImagePs;

                        //DataList1.DataSource = u.uImageP;
                        //DataList1.DataBind();


                        //byte[] imagedata = (byte[])objectPro["uImageP"];

                        //Image2.ImageUrl = u.uImageP;
                        //LblImage.Text = u.uImageP;
                    }



                    //HttpResponseMessage ress = client.GetAsync(client.BaseAddress + "/GetUserGig/" + u.UserID).Result;
                    //if (ress.IsSuccessStatusCode)
                    //{
                    //    string objectgig = ress.Content.ReadAsStringAsync().Result;

                    //    g = new GigModel(JsonConvert.DeserializeObject<GigModel>(objectgig));

                    //    lblgigtitle.Text = g.GigTitle;
                    //    lblgigdescription.Text = g.GigDescription;
                    //    lblrequiredskills.Text = g.RequiredSkills;
                    //    lblduedate.Text = g.DueDate;
                    //}
                }

            }



            lblEmail.Text = u.uEmail;
            //LblImage.Text = u.uImageP;



            if (respo.IsSuccessStatusCode)
            {
                string data = respo.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                if (u.FirstLogin == "False")
                {


                }

            }

         
        }
        protected void searching_Click(object sender, EventArgs e)
        {

           
            if (txtskills.Text != "")
            {
                skills = txtskills.Text;

                string data = JsonConvert.SerializeObject(user);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/Getnumbercontains/" + skills).Result;


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
                        viewgigskills.Controls.Add(new Literal { Text = card.ToString() });


                    }
                }

            }
            else

            {
                //errorm.Text = "Please fill the text*";
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

                u.uImagePs = "~/ UserImages /" + fileimg;

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