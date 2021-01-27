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
    public partial class GiggerDash : System.Web.UI.Page
    {
        UserModel u;
        UProfile pro, profile;
        HttpClient client = new HttpClient();
        Uri baseAddress = new Uri(Utils.USendRL);
        int UserID;


        protected void Create_Click(object sender, EventArgs e)
        {
            pro = new UProfile();
            pro.userID = UserID;
            pro.uPastProjectName = txtPastProjectName.Text;
            pro.uPastProjectDuration = txtPastProjectDuration.Text;
            pro.uPastProjectDetails = txtPastProjectDetails.Text;
            pro.uEducation = txtEducation.Text;
            pro.uReferences = txtReferences.Text;
            pro.uCountry = DropDownListCountry.Text;
            pro.uName = FirstName.Text;
            pro.uSurname = LastName.Text;


            string data = JsonConvert.SerializeObject(pro);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PostAsync(client.BaseAddress + "/AddProfile", content).Result;

            u.FirstLogin = "False";


            string uData = JsonConvert.SerializeObject(u);
            StringContent uContent = new StringContent(uData, Encoding.UTF8, "application/json");
            HttpResponseMessage respnse = client.PutAsync(client.BaseAddress + "/UpdateUser/" + UserID, uContent).Result;


            if (resp.IsSuccessStatusCode)
            {
                Session["UserID"] = UserID;
                Response.Redirect("~/GiggerDashboard");
            }
            Response.Redirect("~/GiggerDash");
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            profile.userID = UserID;
            profile.uPastProjectName = txtPastProjectName.Text;
            profile.uPastProjectDuration = txtPastProjectDuration.Text;
            profile.uPastProjectDetails = txtPastProjectDetails.Text;
            profile.uEducation = txtEducation.Text;
            profile.uReferences = txtReferences.Text;
            profile.uCountry = DropDownListCountry.Text;
            profile.uSurname = LastName.Text;

            string data = JsonConvert.SerializeObject(profile);
            StringContent content = new StringContent(data, Encoding.UTF8, "application/json");
            HttpResponseMessage resp = client.PutAsync(client.BaseAddress + "/UpdateUProfile/" + UserID, content).Result;

            if (resp.IsSuccessStatusCode)
            {
                Session["UserID"] = UserID;
                Response.Redirect("~/GiggerDashboard");
            }
            Response.Redirect("~/GiggerDash");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var items = new List<string>
            {
                " ", "Afghanistan", "Albania", "Algeria", "American Samoa", "Angola", "Anguilla", "Antartica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Ashmore and Cartier Island", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegovina", "Botswana", "Brazil", "British Virgin Islands", "Brunei", "Bulgaria", "Burkina Faso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Clipperton Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo, Democratic Republic of the", "Congo, Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia", "Cuba", "Cyprus", "Czeck Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Europa Island", "Falkland Islands (Islas Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern and Antarctic Lands", "Gabon", "Gambia, The", "Gaza Strip", "Georgia", "Germany", "Ghana", "Gibraltar", "Glorioso Islands", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard Island and McDonald Islands", "Holy See (Vatican City)", "Honduras", "Hong Kong", "Howland Island", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "Ireland, Northern", "Israel", "Italy", "Jamaica", "Jan Mayen", "Japan", "Jarvis Island", "Jersey", "Johnston Atoll", "Jordan", "Juan de Nova Island", "Kazakhstan", "Kenya", "Kiribati", "Korea, North", "Korea, South", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia, Former Yugoslav Republic of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Man, Isle of", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Midway Islands", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcaim Islands", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romainia", "Russia", "Rwanda", "Saint Helena", "Saint Kitts and Nevis", "Saint Lucia", "Saint Pierre and Miquelon", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Scotland", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and South Sandwich Islands", "Spain", "Spratly Islands", "Sri Lanka", "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "Tobago", "Toga", "Tokelau", "Tonga", "Trinidad", "Tunisia", "Turkey", "Turkmenistan", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "Uruguay", "USA", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Virgin Islands", "Wales", "Wallis and Futuna", "West Bank", "Western Sahara", "Yemen", "Yugoslavia", "Zambia", "Zimbabwe"

            };
            items.Sort();
            DropDownListCountry.DataSource = items;
            DropDownListCountry.DataBind();
            Update.Enabled = false;
            Edit.Enabled = false;
            client.BaseAddress = baseAddress;

            UserID = Convert.ToInt32(Session["UserID"]);

            if (UserID.Equals(null))
            {
                Response.Redirect("~/Account/Logins");
            }

            HttpResponseMessage resp = client.GetAsync(client.BaseAddress + "/GetUserByID/" + UserID).Result;

            if (resp.IsSuccessStatusCode)
            {
                string data = resp.Content.ReadAsStringAsync().Result;
                u = new UserModel(JsonConvert.DeserializeObject<UserModel>(data));

                if (u.FirstLogin == "False")
                {
                    Edit.Enabled = true;
                    Update.Visible = false;
                    HttpResponseMessage res = client.GetAsync(client.BaseAddress + "/GetUserProfile/" + UserID).Result;
                    if (res.IsSuccessStatusCode)
                    {
                        string objectPro = res.Content.ReadAsStringAsync().Result;
                        profile = new UProfile(JsonConvert.DeserializeObject<UProfile>(objectPro));
                        DropDownListCountry.Text = profile.uCountry;
                        txtEducation.Text = profile.uEducation;
                        FirstName.Text = profile.uName;
                        LastName.Text = profile.uSurname;
                        txtReferences.Text = profile.uReferences;
                        txtPastProjectName.Text = profile.uPastProjectName;
                        txtPastProjectDuration.Text = profile.uPastProjectDuration;
                        txtPastProjectDetails.Text = profile.uPastProjectDetails;
                        txtcompany.Text = profile.uCompany;
                    }
                    else
                    {
                        //Enable the edit profile button so they can change their existing profile or force them to update/create it
                    }

                }
                //Edit.Visible = false;
                Update.Enabled = true;
            }
            else
            {
                ErrorM.Visible = true;
            }

        }

    }

}
