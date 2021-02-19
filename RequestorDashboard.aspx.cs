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
    public partial class RequestorDashboard1 : System.Web.UI.Page
    {
        //UserModel u;
       
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.USendRL);
        int UserID;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserID = Convert.ToInt32(Session["UserID"]);
            if (UserID.Equals(null))
            {
                Response.Redirect("~/Account/Logins");
            }
            else
            {
                
            }

        }
    }
}