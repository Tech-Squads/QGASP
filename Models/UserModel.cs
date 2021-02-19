using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace QlityG.Models
{
    public class UserModel
    {
        public int UserID { get; set; }
        public string uEmail { get; set; }
        public string uPassword { get; set; }
        public int uType { get; set; }
        public string FirstLogin { get; set; }
        public string HasGig { get; set; }
        public string uSurname { get; set; }
        public string uName { get; set; }
        public string uImageP { get; set; }

        //for Profile
        public string uCountry { get; set; }
        public string uCompany { get; set; }
        public string uEducation { get; set; }
        public string uSkills { get; set; }
        public string uReferences { get; set; }
        public string uPastProjectName { get; set; }
        public string uPastProjectDuration { get; set; }
        public string uPastProjectDetails { get; set; }

        //for gig
        public int uGigID { get; set; }
        public string uGigTitle { get; set; }
        public string uDueDate { get; set; }
        public string uGigDescription { get; set; }
        public string uRequiredSkills { get; set; }
        public string uContactDetails { get; set; }
        public int uRequestorID { get; set; }
        public string uStatusGig { get; set; }



        public UserModel(UserModel u)
        {
            this.uEmail = u.uEmail;
            this.uPassword = u.uPassword;
            this.UserID = u.UserID;
            this.FirstLogin = u.FirstLogin;
            this.uType = u.uType;
            this.HasGig = u.HasGig;
            this.uSurname = u.uSurname;
            this.uName = u.uName;
            this.uCountry = u.uCountry;
            this.uCompany = u.uCompany;
            this.uEducation = u.uEducation;
            this.uSkills = u.uSkills;
            this.uReferences = u.uReferences;
            this.uPastProjectName = u.uPastProjectName;
            this.uPastProjectDuration = u.uPastProjectDuration;
            this.uPastProjectDetails = u.uPastProjectDetails;

            this.uGigID = u.uGigID;
            this.uGigTitle = u.uGigTitle;
            this.uRequestorID = u.uRequestorID;
            this.uGigDescription = u.uGigDescription;
            this.uContactDetails = u.uContactDetails;
            this.uRequiredSkills = u.uRequiredSkills;
            this.uImageP = u.uImageP;
            this.uStatusGig = u.uStatusGig;
        }

        
        public UserModel()
        {

        }
        public UserModel(string Email,string Password)
        {
            this.uEmail = Email;
            this.uPassword = Password;
        }

    }
}
