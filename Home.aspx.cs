using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QlityG
{
    public partial class Home : System.Web.UI.Page
    {
        int UserID;
        string uType;
        protected void Page_Load(object sender, EventArgs e)
        {
            UserID = (int)Session["UserID"];
            uType = Session["uType"].ToString();
            if(uType == "Req")
            {
                Session["UserID"] = UserID;
                Session["uType"] = "Req";
            }
            else if(uType == "Gigg")
            {
                Session["UserID"] = UserID;
                Session["uType"] = "Gigg";
            }
           

        }
    }
}