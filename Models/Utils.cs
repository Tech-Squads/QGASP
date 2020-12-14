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
        internal static readonly string USendRL = "http://localhost:8080" ;
        internal static readonly string TestUSendRL = "https://localhost:44364";

        public static string HashThis(string passW)
        {
            SHA256CryptoServiceProvider sha2 = new SHA256CryptoServiceProvider();

            byte[] pssw_bytes = Encoding.ASCII.GetBytes(passW);
            byte[] encr_bytes = sha2.ComputeHash(pssw_bytes);

            return Convert.ToBase64String(encr_bytes);

        }
        

    }
}