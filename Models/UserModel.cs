using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace QlityG.Models
{
    public class UserModel
    {
        private string email;
        private string password;

        public UserModel(string email, string password)
        {
            this.ID = 0;
            this.uType = 0;
            this.uProfileID = 0;
            this.email = email;
            this.password = password;
        }
        public UserModel()
        {
                
        }
        public UserModel(UserModel u)
        {
            ID = u.ID;
            uType = u.uType;
            uEmail = u.uEmail;
            uPassword = u.uPassword;
            uProfileID = u.uProfileID;
        }

        public int ID { get; set; }
        public string uEmail { get; set; }
        public string uPassword { get; set; }
        public int uType { get; set; }
        public int uProfileID { get; set; }
    }
}
