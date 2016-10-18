using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookingConfirmationPage : System.Web.UI.Page
{
    string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1776136;Persist Security Info=True;User ID=z1776136;Password=Bw1243$h11";

    SqlConnection con;
    Double PoolPrice;
    protected void Page_Load(object sender, EventArgs e)
    {
        pickup.Visible = false;
        pickup1.Visible = false;
        Button2.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
       // PriceCalculationOfRoom.Visible = false;
        tab.Visible = false;


        if (!IsPostBack)
        {
            ShowData();
        }
    }
    protected void ShowData()
    {
        String cus = Session["CustomerId"].ToString();




        using (SqlConnection conn = new SqlConnection(connString))
        {

            try
            {
                conn.Open();
                using (var cmd = new SqlCommand("SELECT [booking_id],[image],[numOfAdults],[numOfKids],[startDate],[endDate] FROM [booking] b,[rooms] r where b.room_id=r.room_id and cus_id=@cusID", conn))
                {

                    cmd.Parameters.AddWithValue("@cusID", cus);
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
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

        }

    protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        Label id = GridView1.Rows[e.RowIndex].FindControl("booking_id") as Label;
        TextBox noOfAdults1 = GridView1.Rows[e.RowIndex].FindControl("noOfAdults1") as TextBox;
        TextBox noOfKids = GridView1.Rows[e.RowIndex].FindControl("numOfKids1") as TextBox;
        TextBox startDate = GridView1.Rows[e.RowIndex].FindControl("startDate1") as TextBox;
        TextBox endDate = GridView1.Rows[e.RowIndex].FindControl("endDate1") as TextBox;
        con = new SqlConnection(connString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Update Booking set numOfAdults=@Adults,numOfKids=@Kids,startDate=@start,endDate=@end where booking_id=@id", con);
        cmd.Parameters.AddWithValue("@Adults", Convert.ToInt32(noOfAdults1.Text));
        cmd.Parameters.AddWithValue("@Kids", Convert.ToInt32(noOfKids.Text));
        cmd.Parameters.AddWithValue("@start", Convert.ToDateTime(startDate.Text));
        cmd.Parameters.AddWithValue("@end", Convert.ToDateTime(endDate.Text));
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(id.Text));

        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        ShowData();
    }
    protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        ShowData();
    }

    protected void AvailCab_Services(object sender, EventArgs e)
    {

        pickup.Visible = true;
        pickup1.Visible = true;
        Button2.Visible = true;

    }

    protected void PriceCalculation(object sender, EventArgs e)
    {
        PriceCalculationOfRoom.Visible = true;
        tab.Visible = true;

        Double Price = Double.Parse(Session["total"].ToString());
        Label2.Text = Price.ToString();
        Double Tax = Price * 0.15;
        Label2.Text = Price.ToString();
        Label4.Text = "0";
        Label8.Text = Tax.ToString();
        Double total = Price + Tax;
        Label11.Text = (total.ToString());
        Session["AmountPaid"] = total;
    }

    protected void PriceCalculation1(object sender, EventArgs e)
    {
        //PriceCalculationOfRoom.Visible = true;
        tab.Visible = true;

        Double Price = Double.Parse(Session["total"].ToString());
        Label2.Text = Price.ToString();
        Double Tax = Price * 0.15;
        Label2.Text = Price.ToString();
        Double cabPickUpPrice = 45.99;
        Label4.Text = cabPickUpPrice.ToString();
        Label8.Text = Tax.ToString();
        Double total = Price + Tax + cabPickUpPrice;
        Label11.Text = (total.ToString());
        Session["AmountPaid"] = total;

    }

    protected void Pool_Services(object sender, EventArgs e)
    {
       //PriceCalculationOfRoom.Visible = true;
        tab.Visible = true;

        Label5.Visible = true;
        Label6.Visible = true;
        Double Price = Double.Parse(Session["total"].ToString());
        Label2.Text = Price.ToString();
        Double Tax = Price * 0.15;
        Label2.Text = Price.ToString();
        Double cabPickUpPrice = 45.99;
        Double extra = 35.55;
        Label4.Text = cabPickUpPrice.ToString();
        Label6.Text = extra.ToString();
        Label8.Text = Tax.ToString();
        Double total = Price + Tax + cabPickUpPrice;
        Label11.Text = (total.ToString());
        Session["AmountPaid"] = total;

    }

    protected void Payment(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }

  
}

