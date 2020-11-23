﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace QlityG.Models
{
    public class UserModel
    {

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
            this.HasGig = u.HasGig;
        }


        public string uEmail { get; set; }
        public string uPassword { get; set; }
        public int UserID { get; set; }
        public int uType { get; set; }
        public string FirstLogin { get; set; }
        public string HasGig { get; set; }
    }
}
