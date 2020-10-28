using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace QlityG.Models
{
    public class UserModel
    {
        public int ID { get; set; }
        public string uEmail { get; set; }
        public string uPassword { get; set; }
        public int uType { get; set; }
        public int uProfileID { get; set; }
    }
}
