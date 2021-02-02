using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Newtonsoft;
using QlityG.DataAccess;
using QlityG.Models;
using Newtonsoft.Json;
using System.Text;
using System.Net;
using System.IO;
using System.Web.Script.Serialization;
using ASPSnippets.GoogleAPI;

namespace QlityG.Account
{
    public partial class Googleform : System.Web.UI.Page
    {
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);

        UserModel user;
        string googleEmail;


        string clientid = "51695088027-fgq4ej9ctndugj70h1pdbln0rhthess5.apps.googleusercontent.com";
        string clientsecret = "OjY8rLlKgre3QmlDjmyeNifl";

        string redirection_url = "https://localhost:8080/Account/Googleform.aspx";
        string url = "https://accounts.google.com/o/oauth2/token";


        public class Tokenclass
        {
            public string access_token
            {
                get;
                set;
            }
            public string token_type
            {
                get;
                set;
            }
            public int expires_in
            {
                get;
                set;

            }
            public string refresh_token
            {
                get;
                set;
            }
        }
        public class Userclass
        {
          
            public string email
            {
                get;
                set;
            }
        }

           
            protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Request.QueryString["code"] != null)
                {
                    GetToken(Request.QueryString["code"].ToString());
                }
            }



        }



        protected void btnContinue_Click(object sender, EventArgs e)
        {

            client.BaseAddress = baseAddress;


            if (lblEmail.Text !=null)
            {
                googleEmail = lblEmail.Text.Trim().ToUpper();
               

                user = new UserModel();
                user.FirstLogin = "True";
                user.uEmail = googleEmail;
                user.HasGig = "False";            
                user.uType = 0;

                string data = JsonConvert.SerializeObject(user);
                StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/UserLogongoogle", content).Result;
                if (resp.IsSuccessStatusCode)
                {

                    Response.Redirect("~/Account/Logins");

                }
                else

                {
                    errormesage.Text = "An Error Occuried Please try again!.";
                }

            }

          

        }
        public void GetToken(string code)
        {
            string poststring = "grant_type=authorization_code&code=" + code + "&client_id=" + clientid + "&client_secret=" + clientsecret + "&redirect_uri=" + redirection_url + "";
            var request = (HttpWebRequest)WebRequest.Create(url);
            request.ContentType = "application/x-www-form-urlencoded";
            request.Method = "POST";
            UTF8Encoding utfenc = new UTF8Encoding();
            byte[] bytes = utfenc.GetBytes(poststring);
            Stream outputstream = null;
            try
            {
                request.ContentLength = bytes.Length;
                outputstream = request.GetRequestStream();
                outputstream.Write(bytes, 0, bytes.Length);
            }
            catch { }
            var response = (HttpWebResponse)request.GetResponse();
            var streamReader = new StreamReader(response.GetResponseStream());
            string responseFromServer = streamReader.ReadToEnd();
            JavaScriptSerializer js = new JavaScriptSerializer();
            Tokenclass obj = js.Deserialize<Tokenclass>(responseFromServer);
            GetuserProfile(obj.access_token);
        }
        public void GetuserProfile(string accesstoken)
        {
            string url = "https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token=" + accesstoken + "";
            WebRequest request = WebRequest.Create(url);
            request.Credentials = CredentialCache.DefaultCredentials;
            WebResponse response = request.GetResponse();
            Stream dataStream = response.GetResponseStream();
            StreamReader reader = new StreamReader(dataStream);
            string responseFromServer = reader.ReadToEnd();
            reader.Close();
            response.Close();
            JavaScriptSerializer js = new JavaScriptSerializer();
            Userclass userinfo = js.Deserialize<Userclass>(responseFromServer);
          
            lblEmail.Text = userinfo.email;


        }
    }
}
