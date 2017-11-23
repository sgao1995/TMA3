using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class part3_Index : System.Web.UI.Page
{
    
    protected void Page_Init(object sender, EventArgs e)
    {
        ViewState["count"] = imgCount.Text; //use viewstate to store count
        displayImg();//display the image, title, and description
    }

    protected void nextBtn_Click(object sender, EventArgs e)
    {
        int count = Convert.ToInt32(ViewState["count"]); //get the count as an int
        //query database using LINQ 
        DataClassesDataContext db = new DataClassesDataContext();
        var img = from i in db.SlideImgs
                  select i.ImgSrc;
        //check if count has exceeded the num of images in our database,  if it has then reset the count back to 1, else increment it by 1
        if (count >= Enumerable.Count(img))
        {
            ViewState["count"] = 1;
        }else
        {
            ViewState["count"] = count+1;
        }
        //display the img
        displayImg();

    }

    protected void prevBtn_Click(object sender, EventArgs e)
    {
        int count = Convert.ToInt32(ViewState["count"]);

        DataClassesDataContext db = new DataClassesDataContext();
        //check if count has exceeded the num of images in our database,  if it has then set count to the last one, else decrement it by 1
        var img = from i in db.SlideImgs
                  select i.ImgSrc;
        if (count <= 1)
        {
            ViewState["count"] = Enumerable.Count(img);
        }
        else
        {
            ViewState["count"] = count - 1 ;
        }        
        //display the img
        displayImg();
    }
    protected void displayImg()
    {
        int count = Convert.ToInt32(ViewState["count"]);
        DataClassesDataContext db = new DataClassesDataContext();
        //get first img's source from database where id = count
        var imageSrc = from i in db.SlideImgs
                       where i.ImgId == count
                       select i.ImgSrc;
        foreach (var imgsrc in imageSrc)
        {
            SlideImg.Text = "<img src='" + imgsrc + "'></img>";
        }
        //get the image's title from database where id = count
        var imageTitle = from i in db.SlideImgs
                         where i.ImgId == count
                         select i.ImgTitle;
        foreach (var imgtitle in imageTitle)
        {
            SlideTitle.Text = imgtitle;
        }
        //get the image's description from database where id = count
        var imageDesc = from i in db.SlideImgs
                        where i.ImgId == count
                        select i.ImgDesc;
        foreach (var imgDesc in imageDesc)
        {
            SlideDescr.Text = imgDesc;
        }
    }
}