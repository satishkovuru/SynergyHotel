using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{

    String selectedtext = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

   
        foreach (ListItem listItem in CheckBoxList1.Items)
        {
            if (listItem.Selected)
            {

                selectedtext =listItem.Value;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (selectedtext == "RoomAvailability")
        {
            Response.Redirect("RoomAvailability_Admin.aspx");
        }
        if (selectedtext == "CustomerInfo")
        {
            Response.Redirect("CustomerInfo_Admin.aspx");

        }
        if (selectedtext == "EmployeeInfo")
        {
            Response.Redirect("EmployeeInfo_Admin.aspx");

        }
        if (selectedtext == "AddNewRoom")
        {
            Response.Redirect("ManageRooms_AL.aspx");

        }
        if (selectedtext == "UpdateRoom")
        {
            Response.Redirect("ManageRooms_AL.aspx");

        }
        if (selectedtext == "DeleteRoom")
        {
            Response.Redirect("ManageRooms_AL.aspx");

        }
        else
        {
            Label1.Visible = true;

            Label1.Text = "Select Atleast one Process!!!";
        }
    }

   
}