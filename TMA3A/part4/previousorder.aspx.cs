using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class part4_previousorder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("orders.aspx");
        }
    }

    protected void LoginSubmitBtn_Click(object sender, EventArgs e)
    {
        StoreClassesDataContext sdb = new StoreClassesDataContext();//database context
        var users = from user in sdb.UserInfos
                    where user.Username == LoginUsername.Text && user.Password == LoginPassword.Text
                    select user.UserID;


        //check if there exists a user that matches the inputted info
        if (Enumerable.Count(users) > 0)
        {
           
            //if so then redirect to login and store username into the session
            Session["username"] = LoginUsername.Text;
            foreach (var userID in users)
            {
                Session["uID"] = (int)userID; //put userID into the session
            }
            Response.Redirect("orders.aspx");
        }
        else //otherwise tell user that they have not entered correct info
        {
            LoginErrorLabel.Text = "Wrong Username or Password, please try again!";
            LoginErrorLabel.Visible = true;
        }
    }
}