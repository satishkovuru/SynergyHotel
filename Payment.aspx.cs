using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Payment : System.Web.UI.Page
{
    Double price;
    protected void Page_Load(object sender, EventArgs e)
    {
      //  CREDITCARDS.Visible = false;
        price = Convert.ToDouble(Session["AmountPaid"]);
        amount.Text = price.ToString();

    }

    protected void PayPalBtn_Click(object sender, ImageClickEventArgs e)
    {

        string business = "skumar99-buyer@gmail.com";
        string itemName = "RoomBooking";
        double itemAmount = price;
        string currencyCode = "USD";

        StringBuilder ppHref = new StringBuilder();

        ppHref.Append("https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick");
        ppHref.Append("&business=" + business);
        ppHref.Append("&item_name=" + itemName);
        ppHref.Append("&amount=" + itemAmount.ToString("#.00"));
        ppHref.Append("&currency_code=" + currencyCode);

        Response.Redirect(ppHref.ToString(), true);
    }

    protected void pay(object sender, EventArgs e)
    {

        String cus = Session["CustomerId"].ToString();
        int bid;
        string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1776136;Persist Security Info=True;User ID=z1776136;Password=Bw1243$h11";

        SqlConnection conn = new SqlConnection(connString);
        using (conn)
            try
            {
                conn.Open();
                using (var cmd1 = new SqlCommand("select booking_id from booking where cus_id=@cus)", conn))
                {
                    cmd1.Parameters.AddWithValue("@cus", Int32.Parse(cus));
                    bid =(int) cmd1.ExecuteScalar();
                }
                using (var cmd = new SqlCommand("Insert into Z_payments ([PayType],[PayAmt],[custID],[bookingID],[CardNumber],[CardName]) values(@ptype,@pamount,@cusid,@bid,@card,@name)", conn))
                {
                    cmd.Parameters.AddWithValue("@ptypes", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@pamount", Convert.ToDecimal(price));
                    cmd.Parameters.AddWithValue("@cid", cus);
                    cmd.Parameters.AddWithValue("@bid", bid);
                    cmd.Parameters.AddWithValue("@card", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@name", TextBox3.Text);

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
        Response.Redirect("PaymentConfirmation.aspx");
    }

    protected void payment1_SelectedIndexChanged(object sender, EventArgs e)
    {
        CREDITCARDS.Visible = true;

    }
}
