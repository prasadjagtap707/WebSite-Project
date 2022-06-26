﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite_Project
{
    public partial class ReadQueryString : System.Web.UI.Page
    {
        string[] furniture = { "Sofa 12000 rs", "Chair 999 rs" };
        string[] eletronics = { "Sony LED 45000 rs", "Intex LCD 22000 rs" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string str = Request.QueryString["category"];
                if (str == "furniture")
                {
                    BulletedList1.DataSource = furniture;
                }
                else if (str == "electronics")
                {
                    BulletedList1.DataSource = eletronics;
                }

                BulletedList1.DataBind();
            }

        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {

        }
    }
}