using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Data;


namespace QlityG.Account
{
    public partial class resetemailform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendmail_Click(object sender, EventArgs e)
        {
            
                try
                {
                MailMessage mm = new MailMessage("joretogeorg@gmail.com", txtEmail.Text);
                mm.Subject = "Your Password !";
                mm.Body = string.Format("Hello ");
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "joretogeorg@gmail.com";
                nc.Password = "Ubi0780!";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
            }
                catch (Exception ex)
                {
                    MessageBox.Text=(ex.ToString());
                }
            }
        }
    }
