using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebSite_Project.App_Code;

namespace WebSite_Project.Admin.DAL
{

    public class CategoryDAL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        public CategoryDAL()
        {
            con = new SqlConnection(DbConnectionStr.GetDbConnectionStr());
        }
    }
}