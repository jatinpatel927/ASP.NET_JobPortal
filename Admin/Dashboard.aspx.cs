using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Dashboard : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;
    DataTable dt;
    string str = ConfigurationManager.ConnectionStrings["JobPortal"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("../User/Login.aspx");
        }

        if (!IsPostBack)
        {
            Users();
            Jobs();
            AppliedJobs();
            ContactCount();
        }
    }

    private void ContactCount()
    {
        con = new SqlConnection(str);
        sda = new SqlDataAdapter("Select Count(*) from [Contact]", con);
        dt = new DataTable();
        sda.Fill(dt);
        if(dt.Rows.Count > 0)
        {
            Session["Contact"] = dt.Rows[0][0];
        }
        else
        {
            Session["Contact"] = 0;
        }
    }

    private void AppliedJobs()
    {
        con = new SqlConnection(str);
        sda = new SqlDataAdapter("Select Count(*) from AppliedJobs", con);
        dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["AppliedJobs"] = dt.Rows[0][0];
        }
        else
        {
            Session["AppliedJobs"] = 0;
        }
    }

    private void Jobs()
    {
        con = new SqlConnection(str);
        sda = new SqlDataAdapter("Select Count(*) from Jobs", con);
        dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["Jobs"] = dt.Rows[0][0];
        }
        else
        {
            Session["Jobs"] = 0;
        }
    }

    private void Users()
    {
        con = new SqlConnection(str);
        sda = new SqlDataAdapter("Select Count(*) from [User]", con);
        dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["Users"] = dt.Rows[0][0];
        }
        else
        {
            Session["Users"] = 0;
        }
    }
}