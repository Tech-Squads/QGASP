using System;
using System.Collections.Generic;
using Dapper;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using QlityG.Models;

namespace QlityG.DataAccess
{
    public class DataTool
    {
        public int GetUserByID(string email)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                var output = connection.Query<int>($"SELECT BeneficiaryID FROM Beneficiary WHERE BeneficiaryCode ='{email}'").ToList();
                connection.Close();
                return output.ElementAt(0);
            }
        }

        public void InsertUser(string email,string password)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                List<UserModel> members = new List<UserModel>();
                members.Add(new UserModel { uEmail = email,uPassword = password,uType = 1,ID = 1 });
                connection.Execute("dbo.spUsers_CreateUser @uEmail, @uPassword, @uType, @ID", members);
            }
        }

        public bool loginUser(string email,string password)
        {


            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                var output = connection.Query<UserModel>("dbo.spUsers_LoginUser @uEmail,@uPassword", new { uEmail = email, uPassword = password }).ToList();
                if (output.Count.Equals(0))
                {
                    return false;
                }
            }
            return true;
        }

    }
}
