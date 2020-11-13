using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace QlityG.Models
{
    public class GiggerProfileModel
    {
        public int ProfileID { get; set; }
        public string uName { get; set; }
        public string uSurname { get; set; }
        public string uCountry { get; set; }
        public string uEducation { get;  set; }
        public string uSkills { get; set; }
        public string uReferences { get; set; }
        public string uPastProjectName { get; set; }
        public string uPastProjectDuration { get; set; }
        public string uPastProjectDetails { get; set; }
        public int UserID { get; set; }


        public GiggerProfileModel()
        {
                
        }

        public override string ToString()
        {
            return uName + uSurname + uCountry + uEducation + uSkills + uReferences + uPastProjectName + uPastProjectDetails + uPastProjectDuration ;
        }

        public override bool Equals(object obj)
        {
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode();
        }
    }
}
