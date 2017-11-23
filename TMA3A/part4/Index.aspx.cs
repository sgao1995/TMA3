using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class part4_Index : System.Web.UI.Page
{
    int totalprice = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void CPUbtn_Click(object sender, EventArgs e)
    {

        RadioButtonListCPU.Visible = !RadioButtonListCPU.Visible;
    }

    protected void MotherboardBtn_Click(object sender, EventArgs e)
    {
        RadioButtonListMOBO.Visible = !RadioButtonListMOBO.Visible;
    }

    protected void MemoryBtn_Click(object sender, EventArgs e)
    {
        CheckBoxListMem.Visible = !CheckBoxListMem.Visible;
    }

    protected void StorageBtn_Click(object sender, EventArgs e)
    {
        CheckBoxListStor.Visible = !CheckBoxListStor.Visible;
    }

    protected void VideoCardBtn_Click(object sender, EventArgs e)
    {
        RadioButtonListVC.Visible = !RadioButtonListVC.Visible;
    }

    protected void CaseBtn_Click(object sender, EventArgs e)
    {
        RadioButtonListCase.Visible = !RadioButtonListCase.Visible;
    }

    protected void OSBtn_Click(object sender, EventArgs e)
    {
        RadioButtonListOS.Visible = !RadioButtonListOS.Visible;
    }

    protected void PowerSupplyBtn_Click(object sender, EventArgs e)
    {
        RadioButtonListPSU.Visible = !RadioButtonListPSU.Visible;
    }

    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)//if there is a session already (someone is logged in), then submit order and take them to the order page automatically
        {
            StoreClassesDataContext sdb = new StoreClassesDataContext();//database context
            var users = from user in sdb.UserInfos
                        where user.Username == (string)Session["username"]
                        select user.UserID;
            foreach (var userID in users)
            {
                insertOrder(userID);
            }
            Response.Redirect("orders.aspx");
        }
        if (Page.IsValid)
        {
            mainContent.Visible = false;
            RegisterDiv.Visible = true;
            LoginDiv.Visible = true;
 
        }

    }

    protected void RegisterSubmitBtn_Click(object sender, EventArgs e)
    {
        StoreClassesDataContext sdb = new StoreClassesDataContext();//database context

        //check if username or email is already in database, if it is then do not allow user to register

        var users = from user in sdb.UserInfos
                    where user.Username == RegisUsername.Text || user.Email == Regisemail.Text
                    select user.UserID;

        //check if there exists a user that matches the inputted info
        if (Enumerable.Count(users) > 0)
        {
            RegisterError.Text = "There already exists an user with the same username or email, please input another one";
            RegisterError.Visible = true;
        }
        else
        {
            //otherwise put in database
            
            //used http://www.c-sharpcorner.com/uploadfile/3d39b4/simple-select-insert-update-and-delete-using-linq-to-sql/ to learn how to insert into db
            UserInfo userinf = new UserInfo();//map obj to database
            userinf.Username = RegisUsername.Text;
            userinf.Password = RegisPassword.Text;
            userinf.Email = Regisemail.Text;
            userinf.Address = RegisAddress.Text;
            userinf.fname = fname.Text;
            userinf.lname = lname.Text;
            sdb.UserInfos.InsertOnSubmit(userinf); // add new userinfo to database
                                                   //submit changes to insert into db
            sdb.SubmitChanges();
            var users2 = from user in sdb.UserInfos
                        where user.Username == RegisUsername.Text
                        select user.UserID;
            //insert order into database
            foreach (var userID in users2)
            {
                insertOrder(userID);
                Session["uID"] = (int)userID;//put user's ID in session as well
            }
            //redirect to orders and store username into session
            Session["username"] = RegisUsername.Text;
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
        if (Enumerable.Count(users)>0)
        {
            //insert order into database
            foreach (var userID in users)
            {
                insertOrder(userID);
                Session["uID"] = (int)userID; //store user's ID in session too
            }
            //if so then redirect to login and store username into the session
            Session["username"] = LoginUsername.Text;
            
            Response.Redirect("orders.aspx");
        }
        else //otherwise tell user that they have not entered correct info
        {
            LoginErrorLabel.Text = "Wrong Username or Password, please try again!";
            LoginErrorLabel.Visible = true;
        }
     


    }
    protected void insertOrder(int UserID)//insert order of the user into the database
    {
        StoreClassesDataContext sdb = new StoreClassesDataContext();//database context
        OrderInfo orderinf = new OrderInfo();//map obj to database
        orderinf.CPU = RadioButtonListCPU.SelectedItem.Text; 
        //used this to parse string to int: https://msdn.microsoft.com/en-us/library/bb397679(v=vs.110).aspx
        totalprice += Int32.Parse(RadioButtonListCPU.SelectedItem.Value);
        orderinf.Mobo= RadioButtonListMOBO.SelectedItem.Text;
        totalprice += Int32.Parse(RadioButtonListMOBO.SelectedItem.Value);

        
        foreach (ListItem item in CheckBoxListMem.Items)
        {
            if (item.Selected)
            {
                if(orderinf.Memory == "")//if it's empty right now, just store first item without a ,
                {
                    orderinf.Memory = item.Text;
                }else
                {
                    orderinf.Memory += ", "+item.Text;
                }
              
                totalprice += Int32.Parse(item.Value);

            }
        }
        
        foreach (ListItem item in CheckBoxListStor.Items)
        {
            if (item.Selected)
            {
                if (orderinf.Storage == "")
                {
                    orderinf.Storage = item.Text;
                }
                else
                {
                    orderinf.Storage += ", " + item.Text;
                }
                totalprice += Int32.Parse(item.Value);
            }
        }
        orderinf.VideoC= RadioButtonListVC.SelectedItem.Text;
        totalprice += Int32.Parse(RadioButtonListVC.SelectedItem.Value);

        orderinf.Case = RadioButtonListCase.SelectedItem.Text;
        totalprice += Int32.Parse(RadioButtonListCase.SelectedItem.Value);

        orderinf.OS= RadioButtonListOS.SelectedItem.Text;
        totalprice += Int32.Parse(RadioButtonListOS.SelectedItem.Value);

        orderinf.PSU= RadioButtonListPSU.SelectedItem.Text;
        totalprice += Int32.Parse(RadioButtonListPSU.SelectedItem.Value);
        orderinf.tPrice = totalprice;
        orderinf.UserID = UserID;
        sdb.OrderInfos.InsertOnSubmit(orderinf); // add new orderinfo to database
                                               //submit changes to insert into db
        sdb.SubmitChanges();
    }
}