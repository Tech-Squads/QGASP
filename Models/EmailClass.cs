using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QlityG.Models
{
    public class EmailClass
    {
        //send email model
        public string to { get; set; }
        public string subject { get; set; }
        public string body { get; set; }
    }
}