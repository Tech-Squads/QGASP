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

        public bool Exists(string email) 
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                var output = connection.Query<UserModel>("dbo.spUsers_GetUserByEmail @uEmail", new { uEmail = email}).ToList();
                if (output.Count.Equals(0))
                {
                    return false;
                }
            }
            return true;
        }
        

        public bool InsertUser(string email,string password)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                if(Exists(email))
                {
                    return false;
                }
                List<UserModel> members = new List<UserModel>();
                members.Add(new UserModel { uEmail = email,uPassword = password,uType = 1,UserID = 1 , FirstLogin = "True"});
                connection.Execute("dbo.spUsers_CreateUser @uEmail, @uPassword, @uType, @ID, @FLogin", members);
            }
            return true;
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

        public bool InsertGiggerProfile(string Name,string Surname,string Country,string  Education,string  Skills,string  References,string  PastProjectName,string  PastProjectDuration,string PastProjectDetails,string Email)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                if (Exists(Email))
                {
                    return false;
                }
                List<GiggerProfileModel> members = new List<GiggerProfileModel>();
                members.Add(new GiggerProfileModel { uName = Name, uSurname = Surname,uCountry = Country, uEducation = Education , uSkills = Skills , uReferences = References, uPastProjectName = PastProjectName , uPastProjectDuration = PastProjectDuration , uPastProjectDetails = PastProjectDetails, uEmail = Email  });
                connection.Execute("dbo.spProfile_CreateGiggerProfile @name,@surname,@country,@education,@skills,@projName,@projDuration,@projDetails,@references,@email", members);
            }
            return true;
        }


        public bool InsertRequestorProfile(string Name, string Surname,string Country, string Company, string Email)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                if (Exists(Email))
                {
                    return false;
                }
                List<RequestorProfileModel> members = new List<RequestorProfileModel>();
                members.Add(new RequestorProfileModel { uName = Name, uSurname = Surname, uCountry = Country, uCompany = Company, uEmail = Email });
                connection.Execute("dbo.spProfile_CreateRequestorProfile @name,@surname,@country,@company,@email", members);
            }
            return true;
        }


        public UserModel GetUserByEmail(string email)
        {

            if (Exists(email))
            {
                    using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
                    {
                        var output = connection.Query<UserModel>("dbo.spUsers_GetUserByEmail @uEmail", new { uEmail = email }).ToList();
                        if (output.Count == 0)
                        {
                             return null;
                        }
                        return output.ElementAt(0);
                    }
            }
            return null;
        }

        public void UpdateUserType(int type,string uEmail)
        {
            using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
            {
                //var output = connection.Query<User>("dbo.Members_ChangeiSBooked @memberID,@mIsBooked", new { memberID = memID, mIsBooked = IsBooked });
                connection.Execute("dbo.spUser_UpdateType @uEmail,@uType", new { uEmail = uEmail, uType = type });
            }
        }

        public string GetUserProfile(int type,string email)
        {
            if(Exists(email))
            {
                if(type == 1)
                {
                    using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
                    {
                        var output = connection.Query<GiggerProfileModel>("dbo.spUserProfil_GetGiggerProfileByEmail @email", new { uEmail = email }).ToList();
                        if(output.Count == 0)
                        {
                            return "PFalse";
                        }
                        return output.ElementAt(0).ToString();
                    }
                }
                else
                {

                    using (IDbConnection connection = new System.Data.SqlClient.SqlConnection(Helper.CnnVal("dbQ")))
                    {
                        var output = connection.Query<RequestorProfileModel>("dbo.spUserProfil_GetRequestorProfileByEmail @uEmail", new { uEmail = email }).ToList();
                        if (output.Count == 0)
                        {
                            return "PFalse";
                        }
                        return output.ElementAt(0).ToString();
                    }
                }
            }
            return "EFalse";
        }
    
    
    
    
    
    
    
    
    
    }
}
