﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace WebSite_Project.App_Code
{
    public class DbConnectionStr
    {
        public static string GetDbConnectionStr()
        {
            return ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        }
    }
}