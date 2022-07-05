﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSite_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string[] categories = { "Furniture", "Electronics", "Camera", "Home Needs" };
        string[] furniture = { "Sofa 12000 rs", "Chair 999 rs", "Two Chair 1999" };
        string[] eletronics = { "Sony LED 45000 rs", "Intex LCD 22000 rs", "LG Washing Machine 45000" };

        protected void Page_Load(object sender, EventArgs e)
        {
            // the code
            if (!Page.IsPostBack)
            {
                ddlCategories.DataSource = categories;
                CheckBoxList1.DataSource = furniture;
            }
            Page.DataBind();


        }
        

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            int counter = 0;
            string data = "Selected products ";
            HttpCookie cookie = new HttpCookie("productlist");
            string str = "prod";
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                {
                    counter++;
                    ViewState["pcount"] = counter;
                    data += item.Text + "  ";
                    str = str + counter.ToString();
                    cookie.Values.Add(str, item.Text);
                }
            }

            // set the cookie
            Response.Cookies.Add(cookie);
            Response.Redirect("~/ViewCart.aspx");
            //lblMsg.Text = data;
            //lblProductCount.Text = "Total number of products " + ViewState["pcount"];
        }

        protected void ddlCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            string category = ddlCategories.SelectedItem.ToString();

            if (category == "Furniture")
            {
                CheckBoxList1.DataSource = furniture;
            }
            else if (category == "Electronics")
            {
                CheckBoxList1.DataSource = eletronics;
            }
            CheckBoxList1.DataBind();
        }
    }
}