using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RoomBooking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string constr = " Data Source=omisbi3.niunt.niu.edu;Initial Catalog=Z1776136;Initial Catalog=Z1776136;User ID=Z1776136;Password=Bw1243$h11";

        using (SqlConnection connec = new SqlConnection(constr))
        {
            try
            {
                connec.Open();
                using (var cmd = new SqlCommand(" SELECT ID FROM Customers where username=@username ", connec))
                {
                    cmd.Parameters.AddWithValue("@username", Session["username"].ToString());


                    String user = cmd.ExecuteScalar().ToString();
                    Session["userID"] = user;
                    //Label1.Text = user;
                    // Session["userID"] = userID;
                    connec.Close();

                }
          }
            catch (Exception E)
            {
                String s = E.Message;

            }
            finally
            {
                if (connec != null)
                {
                    connec.Close();
                }
            }
        }

    }

    protected void SelectCheckBox_OnCheckedChanged(object sender, EventArgs e)
    {
        List<String> RoomID = new List<string>();
        List<String> RoomType = new List<string>();
        List<String> Price = new List<string>();

        //List<String> Qty = new List<string>();
        String Days = Session["TotalDays"].ToString();



        foreach (GridViewRow row in GridView1.Rows)
        {
            // Access the CheckBox
            CheckBox cb = (CheckBox)row.FindControl("SelectCheckBox");

            if (cb != null && cb.Checked)
            {

                string roomid1 = GridView1.Rows[row.RowIndex].Cells[0].Text.ToString();
                RoomID.Add(roomid1);
                string roomtype1 = GridView1.Rows[row.RowIndex].Cells[1].Text.ToString();
                RoomType.Add(roomtype1);
                string pricepernight = GridView1.Rows[row.RowIndex].Cells[2].Text.ToString();
                Price.Add(pricepernight);
          


            }
        }
        Session["RoomID"] = RoomID;
        Session["RoomType"] = RoomType;
        Session["PriceperNight"] = Price;

        List<Double> intList = new List<Double>();
        int q;
        List<Double> intList2 = new List<Double>();
        List<int> intList3 = new List<int>();

        for (int i = 0; i < Price.Count; i++)
        {
            String str = Price[i].Replace("$", string.Empty);
            intList.Add(Double.Parse(str));
            q=int.Parse(Days);
            intList3.Add(int.Parse(RoomID[i]));
            Double n = intList.Sum();
            Double z = n * q;
            intList2.Add(z);
            Session["NoOfDays"] = q;


        }
        Session["RoomID1"] = intList3;

        List<int> pid = new List<int>();
        if (Session["RoomID1"] != null)
            pid = (List<int>)Session["RoomID1"];
        String aa = String.Join(",", pid);
        Session["roomid"] = aa;
        Double total = intList2.Sum();
     
        Session["total"] = total;



    }




    protected void AddtoCart(object sender, EventArgs e)
    {

        List<int> IDs = (List<int>)Session["RoomID1"];
        List<string> Name = (List<string>)Session["RoomType"];
        List<string> Price = (List<string>)Session["PriceperNight"];


        for (int i = 0; i < Name.Count; i++)
        {
               string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1776136;Persist Security Info=True;User ID=z1776136;Password=Bw1243$h11";

                SqlConnection conn = new SqlConnection(connString);
                using (conn)
                    try
                    {
                        conn.Open();

                        using (var cmd2 = new SqlCommand("Insert into booking (numOfAdults,numOfKids,startDate,endDate,cus_id,emp_id,room_id,bookingDate,NoOfDays) values(@NumOfAdults,@NumOfKids,@StartDate,@EndDate,@CusId,@EmpId,@RoomId,@BookingDate,@days)", conn))
                        {
                            DateTime date = DateTime.Now;
                        string days = Session["NoOfDays"].ToString();

                            String NoOfAdults = Session["NoOfAdults"].ToString();
                            String NoOfKids = Session["NoOfKids"].ToString();
                            String StartDate = Session["CheckIn"].ToString();
                            String EndDate = Session["CheckOut"].ToString();

                            DateTime start = Convert.ToDateTime(StartDate);
                            DateTime end = Convert.ToDateTime(EndDate);

                            String cus = Session["CustomerId"].ToString();


                            cmd2.Parameters.AddWithValue("@NumOfAdults", NoOfAdults);
                            cmd2.Parameters.AddWithValue("@NumOfKids", NoOfKids);
                            cmd2.Parameters.AddWithValue("@StartDate", start);
                            cmd2.Parameters.AddWithValue("@EndDate", end);
                            cmd2.Parameters.AddWithValue("@CusId", cus);
                            cmd2.Parameters.AddWithValue("@EmpId", 1);
                            cmd2.Parameters.AddWithValue("@RoomId", IDs[i]);
                            cmd2.Parameters.AddWithValue("@BookingDate", date);
                            cmd2.Parameters.AddWithValue("@days", days);

                        cmd2.ExecuteNonQuery();


                            using (var cmd5 = new SqlCommand("Update rooms set availability=@No where room_id=@ID ", conn))
                            {
                                String No = "No";
                                cmd5.Parameters.AddWithValue("@No", No);

                                cmd5.Parameters.AddWithValue("@ID", IDs[i]);

                                cmd5.ExecuteNonQuery();


                            }
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

        Response.Redirect("BookingConfirmationPage.aspx");

    }


}
