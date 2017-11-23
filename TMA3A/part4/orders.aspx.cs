using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class part4_orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uID"] == null)//if no session is active, redirect to About
        {
            Response.Redirect("About.aspx");
        }
      
        if(ListView1.Items.Any()) //if nothing to display, display that message
        {
            EmptyLabel.Visible = true;
            orderLabel.Visible = false;
            EmptyLabel.Text = "You have not ordered anything! Please order something first!";
            ListView1.Visible = false;
        }
        else
        {
            orderLabel.Text += Session["username"] + "!"; //display the username
          
        }
    }

    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Clear();//clear session and redirect back to index
        Response.Redirect("Index.aspx");
    }

    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}