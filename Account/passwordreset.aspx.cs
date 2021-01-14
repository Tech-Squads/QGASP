using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Configuration;

namespace QlityG.Account
{
    public partial class passwordreset : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void resetbtn(object sender, EventArgs e)
        {

            //dt = new DataTable();
            ////cmd.CommandText = "Update Phonebooktable set PhoneNum='" + txtOldPassword.Text.ToString() + "',Address='" + txtnewPassword.Text.ToString() + "' where Name='" + txtEmail.Text.ToString() + "'";
            //if (txtnewPassword.Text == txtconfirmpass.Text)
            //{
            //    cmd.CommandText = "Update Phonebooktable set PhoneNum='" + txtnewPassword.Text.ToString() + "' where  Name=@Email +'";
            //    cmd.Connection = con;
            //    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);


            //    SqlDataReader sdr = cmd.ExecuteReader();


            //    if (sdr.Read())
            //    {
            //        //email
            //        string username = sdr["Name"].ToString();
            //        //password
            //        string password = sdr["PhoneNum"].ToString();

            //        MailMessage mm = new MailMessage("joretogeorg@gmail.com", txtEmail.Text);
            //        mm.Subject = "Your Password !";
            //        mm.Body = string.Format("Hello : <h1>{0}</h1>  <br/> <h1>{1}</h1>");
            //        mm.IsBodyHtml = true;
            //        SmtpClient smtp = new SmtpClient();
            //        smtp.Host = "smtp.gmail.com";
            //        smtp.EnableSsl = true;
            //        NetworkCredential nc = new NetworkCredential();
            //        nc.UserName = "joretogeorg@gmail.com";
            //        nc.Password = "Ubi0780!";
            //        smtp.UseDefaultCredentials = true;
            //        smtp.Credentials = nc;
            //        smtp.Port = 587;
            //        smtp.Send(mm);
            //        //cmd.ExecuteNonQuery();
            //        //Label1.Text = "Your password was  updated ! " + txtEmail.Text;
            //        //Label1.ForeColor = Color.Green;

            //    }
            //    Label1.Text = "Password was  successfful  updated !!";
            //    Label1.ForeColor = System.Drawing.Color.Green;
            //    con.Close();
            //}

            SqlConnection con = new SqlConnection("Data Source=(localdb)\\mssqllocaldb;Initial Catalog=QGAPI;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select uPassword from Users where uPassword = '" + txtOldPassword.Text + "' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);


            if (dt.Rows.Count.ToString() == "1")
            {
                if (txtnewPassword.Text == txtconfirmpass.Text)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("update Users set uPassword = '" + txtconfirmpass.Text + "' where   uPassword = '" + txtOldPassword.Text + "'", con);
                    cmd.ExecuteNonQuery();




                    con.Close();
                    Label1.Text = "Successfully updated";
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Label1.Text = "New password and confirm password should match !";
                }
            }
            else
            {
                Label1.Text = "Please check your old password !";
            }

        }
    }
}