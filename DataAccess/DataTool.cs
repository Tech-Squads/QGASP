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

        public void InsertUser(UserModel obj)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {

                List<UserModel> members = new List<UserModel>();
                members.Add(new UserModel { uEmail = obj.uEmail, uPassword = obj.uPassword , uType = obj.uType, ID = obj.ID });
                connection.Execute("dbo.spUsers_CreateUser @email, @password, @type, @ID", members);
            }
        }

    }
}
