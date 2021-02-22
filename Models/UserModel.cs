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
        public string uSurnames { get; set; }
        public string uNames { get; set; }
        public string uImagePs { get; set; }

        //for Profile
        public string uCountrys { get; set; }
        public string uCompanys { get; set; }
        public string uEducations { get; set; }
        public string uSkill { get; set; }
        public string uReference { get; set; }
        public string uPastProjectNames { get; set; }
        public string uPastProjectDurations { get; set; }
        public string uPastProjectDetail { get; set; }

        //for gig
        public int uGigIDs { get; set; }
        public string uGigTitles { get; set; }
        public string uDueDates { get; set; }
        public string uGigDescriptions { get; set; }
        public string uRequiredSkills { get; set; }
        public string uContactDetail { get; set; }
        public int uRequestorIDs { get; set; }
        public string uStatusGigs { get; set; }



        public UserModel(UserModel u)
        {
            this.uEmail = u.uEmail;
            this.uPassword = u.uPassword;
            this.UserID = u.UserID;
            this.FirstLogin = u.FirstLogin;
            this.uType = u.uType;
            this.HasGig = u.HasGig;
            this.uSurnames = u.uSurnames;
            this.uNames = u.uNames;
            this.uCountrys = u.uCountrys;
            this.uCompanys = u.uCompanys;
            this.uEducations = u.uEducations;
            this.uSkill = u.uSkill;
            this.uReference = u.uReference;
            this.uPastProjectNames = u.uPastProjectNames;
            this.uPastProjectDurations = u.uPastProjectDurations;
            this.uPastProjectDetail = u.uPastProjectDetail;

            this.uGigIDs = u.uGigIDs;
            this.uGigTitles = u.uGigTitles;
            this.uRequestorIDs = u.uRequestorIDs;
            this.uGigDescriptions = u.uGigDescriptions;
            this.uContactDetail = u.uContactDetail;
            this.uRequiredSkills = u.uRequiredSkills;
            this.uImagePs = u.uImagePs;
            this.uStatusGigs = u.uStatusGigs;
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
