using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace WebSite_Project.App_Code
{
    public class UsersDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        public UsersDAL()
        {
            con = new SqlConnection();
        }
        public int SaveNewUser(Users user)
        {
            int result;
            try
            {
                string str = "insert into Users values(@firstname,@lastname,@email,@password)";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@firstname", user.FirstName);
                // code goes here to add all parameters one by one
                con.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                return 0;
            }
            finally
            {
                con.Close();
            }
            return result;

        }

        public int Authenticate(Users user)
        {
            return 1;
        }
    }
}