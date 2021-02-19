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
    public partial class TestSendMail : System.Web.UI.Page
    {
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.TestUSendRL);
        EmailClass user;
        string to,body,subject;

        protected void btnemail_Click(object sender, EventArgs e)
        {

        }

       
        protected void Page_Load(object sender, EventArgs e)
        {
            client.BaseAddress = baseAddress;

            if (txtTo.Text != "")
            {
                to = txtTo.Text;
                subject = txtSubject.Text;
                body = txtBody.Text;

            string data = JsonConvert.SerializeObject(user);
                            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
                            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/Emailsend", content).Result;

                
                if (resp.IsSuccessStatusCode)
                {


                    errorm.Text = "Email successfully sent*";

                }
                else

                {
                    errorm.Text = "Email Not sent*";
                }

            }
            else

            {
                errorm.Text = "fields are required*";
            }
        }
    
    }
}