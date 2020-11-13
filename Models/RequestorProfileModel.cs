using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlityG.Models
{
    public class RequestorProfileModel
    {
        public int ProfileID { get; set; }
        public string uName { get; set; }
        public string uSurname { get; set; }
        public string uCompany { get; set; }
        public string uCountry { get; set; }
        public string uEmail { get; set; }
        public int UserID { get; set; }


        public RequestorProfileModel()
        {
                
        }

        public override string ToString()
        {
            return uName + uSurname + uCountry + uCompany + uEmail;
        }
    }
}