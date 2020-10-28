using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using QlityG.DataAccess;
using QlityG.Models;

namespace QlityG.Account
{
    public partial class Register : Page
    {
        DataTool db = new DataTool();
        string email, password;
        
        protected void CreateUser_Click(object sender, EventArgs e)
        {

            if(txtPassword.Text == txtConfirmPassword.Text)
            {
                email = txtEmail.Text.Trim();
                password = txtPassword.Text.Trim();
                // user = new UserModel(email,password);
                db.InsertUser(email,password);
                Session["userEmail"] = email;
                Response.Redirect("/Default");
            }
       
            else 
            {
                ErrorMessage.Text = "Please ensure passwords match";
            }
        }
    }
}