using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Newtonsoft.Json;
using Owin;
using QlityG.DataAccess;
using QlityG.Models;

namespace QlityG.Account
{


    public partial class passwordreset : System.Web.UI.Page
    {

        string uPassword;

        string newpassword,confirmpass;

        HttpClient client = new HttpClient();

        Uri baseAddress = new Uri(Utils.TestUSendRL);

        UserModel u;
       
        int UserID;

        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;

            int userID = Convert.ToInt32(Session["UserID"]);
           

        }

        protected void resetbtn(object sender, EventArgs e)
        {


          
            uPassword = Utils.HashThis(txtOldPassword.Text.Trim().ToUpper());


            u = new UserModel();
            u.uPassword = uPassword;


            string dat = JsonConvert.SerializeObject(u);
            StringContent content = new StringContent(dat, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + string.Format("/UserLogonPass?Upassword={0}", uPassword)).Result;


            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                if (data == "null")
                {
                    ErrorMessage.Text = "Your old password is incorrect .";
                   
                    ErrorMessage.Visible = true;
                }
                else
                {

                    UserModel LoggedUser = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));


                    if (txtnewPassword.Text == txtconfirmpass.Text)
                    {
                        newpassword = Utils.HashThis(txtnewPassword.Text.Trim().ToUpper());
                        confirmpass = Utils.HashThis(txtconfirmpass.Text.Trim().ToUpper());


                        string datas = JsonConvert.SerializeObject(u);
                        StringContent contents = new StringContent(datas, Encoding.UTF8, "application/json");

                       //HttpResponseMessage respo = client.PostAsync(client.BaseAddress + "/AddUser", contents).Result;
                        HttpResponseMessage respo = client.PutAsync(client.BaseAddress + "/UpdateUser/" + u.UserID,  contents).Result;

                        if (respo.IsSuccessStatusCode)
                        {

                            ErrorMessage.Text = " The password is been updated ! .";

                        }
                        else
                        {
                            ErrorMessage.Text = "Incorrect";
                           
                        }

                    }
                }

            }
            else
            {
                ErrorMessage.Text = "An Error Occured Please try again.";
                ErrorMessage.Visible = true;
            }
        }
    }
}