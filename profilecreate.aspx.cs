using QlityG.DataAccess;
using QlityG.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QlityG
{
    public partial class profilecreate : System.Web.UI.Page
    {
        string uEmail;
        UserModel u;
        DataTool db = new DataTool();
        protected void Page_Load(object sender, EventArgs e)
        {
            u = new UserModel((UserModel)Session["user"]);
            uEmail = Session["uEmail"].ToString(); 
        
            //if(Session["FirstLogin"].ToString() != "false")
            //{
            //    Response.Redirect("/profilecreate");
            //}
            //if(u.uType == 1)
            //{
            //    Session["userEmail"] = u.uEmail;
            //    Response.Redirect("/GiggerProfile");
            //}
            //else if (u.uType == 0)
            //{
            //    Session["userEmail"] = u.uEmail;
            //    Response.Redirect("/RequestorProfile");
            //}
                
        }

        protected void RequestorType_Click(object sender, EventArgs e)
        {
            db.UpdateUserType(0,uEmail);
            Session["userEmail"] = u.uEmail;
            Response.Redirect("/RequestorProfile");
        }

        protected void GiggerProfile_Click(object sender, EventArgs e)
        {
            db.UpdateUserType(1, uEmail);
            Session["userEmail"] = u.uEmail;
            Response.Redirect("/GiggerProfile");
        }
    }
}