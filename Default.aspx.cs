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
    public partial class _Default : Page
    {
        DataTool db = new DataTool();
        string userEmail;
        
        protected void Page_Load(object sender, EventArgs e)
        {
          

            userEmail = Session["uEmail"].ToString();
            if(Session["FirstLogin"] == null)
            {
                UserModel us = new UserModel(db.GetUserByEmail(userEmail));

                if (us != null)
                {
                    Session["userEmail"] = us.uEmail;
                    Session["uType"] = us.uType;
                    Session["FirstLogin"] = us.FirstLogin;
                }
                else
                {
                    
                }
            }
            

        }
    }
}