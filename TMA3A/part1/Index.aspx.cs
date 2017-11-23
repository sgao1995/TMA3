using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int totalprice = 0;
    protected void Page_Init(object sender, EventArgs e)
    {
    

        ResultLabel.Visible = false;
        resultDiv.Visible = false;
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
        if (Page.IsValid)
        {
            mainContent.Visible = false;
            ResultLabel.Visible = true;
            resultDiv.Visible = true;
           // ResultLabel.Text = "Thank you for ordering! Here are the parts you ordered: ";
            ResultLabel.Text += "<b>CPU Ordered: </b>" + RadioButtonListCPU.SelectedItem.Text;
            //used this to parse string to int: https://msdn.microsoft.com/en-us/library/bb397679(v=vs.110).aspx
            totalprice += Int32.Parse(RadioButtonListCPU.SelectedItem.Value);
            ResultLabel.Text += "<br/><br/><b>MotherBoard Ordered: </b>" + RadioButtonListMOBO.SelectedItem.Text;
            totalprice += Int32.Parse(RadioButtonListMOBO.SelectedItem.Value);

            ResultLabel.Text += "<br/><br/><b>Memory Ordered: </b>";
            foreach (ListItem item in CheckBoxListMem.Items)
            {
                if (item.Selected)
                {
                    ResultLabel.Text += "<br/><br/>"+ item.Text;
                    totalprice += Int32.Parse(item.Value);

                }
            }
            ResultLabel.Text += "<br/><br/><b>Storage Ordered: </b>";
            foreach (ListItem item in CheckBoxListStor.Items)
            {
                if (item.Selected)
                {
                    ResultLabel.Text += "<br/><br/>"+item.Text;
                    totalprice += Int32.Parse(item.Value);
                }
            }
            ResultLabel.Text += "<br/><br/><b>Video Card Ordered: </b>" + RadioButtonListVC.SelectedItem.Text;
            totalprice += Int32.Parse(RadioButtonListVC.SelectedItem.Value);

            ResultLabel.Text += "<br/><br/><b>Computer Case Ordered: </b>" + RadioButtonListCase.SelectedItem.Text;
            totalprice += Int32.Parse(RadioButtonListCase.SelectedItem.Value);

            ResultLabel.Text += "<br/><br/><b>Operating System Ordered: </b>" + RadioButtonListOS.SelectedItem.Text;
            totalprice += Int32.Parse(RadioButtonListOS.SelectedItem.Value);

            ResultLabel.Text += "<br/><br/><b>Power Supply Unit Ordered: </b>" + RadioButtonListPSU.SelectedItem.Text;
            totalprice += Int32.Parse(RadioButtonListPSU.SelectedItem.Value);
            ResultLabel.Text += "<br/><br/><b>Total Price: </b>$" + totalprice;
        }
       
    }
}