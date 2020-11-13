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

        public UserModel()
        {
                
        }
        public UserModel(UserModel u)
        {
            this.UserID = u.UserID;
            this.uEmail = u.uEmail;
            this.uPassword = u.uPassword;
            this.FirstLogin = u.FirstLogin;
            this.uType = u.uType;

        }

        public UserModel(string email, string password)
        {
            this.email = email;
            this.password = password;
        }

        public string uEmail { get; set; }
        public string uPassword { get; set; }
        public int UserID { get; set; }
        public int uType { get; set; }
        public string FirstLogin { get; set; }
    }
}
