using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CheckAvailability2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            Label1.Visible = false;
            Calendar2.Visible = false;
            Calendar1.Visible = false;

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       

        Calendar1.Visible = true;

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        Calendar1.Visible = false;
        Calendar2.Visible = true;

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {


        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();

        Calendar1.Visible = false;

    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {


        TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();

        Calendar2.Visible = false;
        TimeSpan ts;
        DateTime a, b;
        a = Calendar1.SelectedDate;
        b = Calendar2.SelectedDate;
        ts = b - a;
        string str1 = ts.ToString();
        int l1 = str1.Length;
        if (l1 == 10)
        {
            str1 = str1.Remove(1);
        }
        else
        {
            str1 = str1.Remove(2);
        }
        int ts2 = Int16.Parse(str1);
        if (ts2 < 0)
        {
            Days.Text = " ";
            TextBox2.Text = " ";
            Calendar2.Visible = true;
        }
        if (ts2 == 0)
        {
            Days.Text = "1";
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;

        }
        if (ts2 >= 1)
        {
            ts2 = ts2 + 1;
            Days.Text = ts2.ToString();
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;

        }


    }
    protected void Button3_Click(object sender, EventArgs e)
    {

        string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1776136;Persist Security Info=True;User ID=z1776136;Password=Bw1243$h11";



        using (SqlConnection conn = new SqlConnection(connString))
        {

            try
            {
                conn.Open();
                using (var cmd = new SqlCommand(" SELECT room_id FROM rooms where availability = 'Yes' and roomType =@roomType", conn))
                {
                    cmd.Parameters.AddWithValue("@roomType", DropDownList1.SelectedValue);

                    Session["NoOfAdults"] = NoOfAdults.SelectedValue.ToString();
                    Session["NoOfKids"] = NoOfKids.SelectedValue.ToString();
                    Session["CheckIn"] = TextBox1.Text;
                    Session["CheckOut"] = TextBox2.Text;
                    Session["TotalDays"] = Days.Text;

                    Session["roomType"] = DropDownList1.SelectedValue.ToString();
                    int room = (int)cmd.ExecuteScalar();
                    conn.Close();
                    if (room >= 1)
                    {
                        conn.Open();


                        using (var cmd1 = new SqlCommand("SELECT cus_id FROM customers where login_id=@UserName", conn))
                        {
                            if (!String.IsNullOrEmpty(Request.QueryString["user"]))
                            {
                                cmd1.Parameters.AddWithValue("@UserName", Request.QueryString["user"]);
                            }
                            else
                            {
                                Label1.Visible = true;
                                Label1.Text = "User Not Logged in";
                                conn.Close();
                            }
                            int cus = (int)cmd1.ExecuteScalar();
                            Session["CustomerId"] = cus.ToString();
                            int roomid;

                            using (var cmd3 = new SqlCommand("SELECT room_id FROM rooms where roomType=@roomType", conn))
                            {
                                cmd3.Parameters.AddWithValue("@roomType", DropDownList1.SelectedValue);
                                roomid = (int)cmd3.ExecuteScalar();
                                Session["RoomID"] = roomid.ToString();

                                if (roomid == 0)
                                {
                                    Label1.Text = "No rooms available for this Category Type";
                                    conn.Close();
                                }
                            }


                        }

                    }

                    conn.Close();
                }
            }
            catch (Exception E)
            {
                String s = E.Message;

            }
            finally
            {
                if (conn != null)
                {
                    conn.Close();
                }

            }
        }
        Session["RoomType"] = DropDownList1.SelectedValue;
        Response.Redirect("RoomBooking.aspx");
    }


}