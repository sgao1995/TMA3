using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class part2_Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
  
        //request cookie
        HttpCookie Cookie = Request.Cookies["PgCookie"];
            if (Cookie == null)//if no PgCookie then create it and add value of 1 for the pgcount and IP to "ip".
            {
                Cookie = new HttpCookie("PgCookie");
                Cookie.Values.Add("Pgcount", "1");
                Cookie.Values.Add("ip", Request.UserHostAddress);
                Cookie.Expires = DateTime.Now.AddDays(100); //add expiration date to make cookie persistent
            }
            else//if cookie exists, update cookie with new page view count
            {
                int Pgcount = int.Parse(Request.Cookies["PgCookie"]["Pgcount"]);
                string IPAddress = Request.Cookies["PgCookie"]["ip"];
                Cookie.Values["Pgcount"] = (Pgcount + 1).ToString();
                Cookie.Values["ip"] = Request.UserHostAddress;
                Cookie.Expires = DateTime.Now.AddDays(100);
            }
            Response.Cookies.Add(Cookie);//add cookie to client computer
            TimesVisitedLabel.Text = "Page view count by Client: " + Cookie.Values["Pgcount"];
            IPAddressLabel.Text = "IP Address of Client: " + Cookie.Values["ip"];
        
    }
}