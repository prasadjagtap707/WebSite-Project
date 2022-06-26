﻿using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebSite_Project
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["productlist"];
                for (int i = 0; i < cookie.Values.Count; i++)
                {
                    CheckBoxList1.Items.Add(cookie.Values[i]);
                }
            }

        }

        protected void btnDeleteProducts_Click(object sender, EventArgs e)
        {
            ArrayList list = new ArrayList();
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (!item.Selected)
                {
                    list.Add(item.Text);
                }
            }
            CheckBoxList1.Items.Clear();
            CheckBoxList1.DataSource = list;
            CheckBoxList1.DataBind();
        }
    }
}