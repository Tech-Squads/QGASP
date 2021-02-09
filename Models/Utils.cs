using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security;
using System.Security.Cryptography;
using System.Text;

namespace QlityG.Models
{
    public class Utils
    {

        static string vpsURL= "http://localhost:8080";
        static string localURL = "https://localhost:44364";


        //internal static readonly string USendRL = "http://localhost:8080" ;
        //internal static readonly string TestUSendRL = "https://localhost:44364";
        internal static readonly string TestUSendRL = localURL;
        internal static readonly string USendRL = vpsURL;


        public static string HashThis(string passW)
        {
            SHA256CryptoServiceProvider sha2 = new SHA256CryptoServiceProvider();

            byte[] pssw_bytes = Encoding.ASCII.GetBytes(passW);
            byte[] encr_bytes = sha2.ComputeHash(pssw_bytes);

            return Convert.ToBase64String(encr_bytes);

        }
        

    }
}