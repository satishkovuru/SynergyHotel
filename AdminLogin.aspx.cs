using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1776136;Persist Security Info=True;User ID=z1776136;Password=Bw1243$h11";



        using (SqlConnection conn = new SqlConnection(connString))
        {

            try
            {
                conn.Open();
                using (var cmd = new SqlCommand(" SELECT emp_id FROM employee where admin_login=@username and admin_password=@password", conn))
                {
                    cmd.Parameters.AddWithValue("@username", UserName.Text);
                    cmd.Parameters.AddWithValue("@password", Password.Text);
                    string user = UserName.Text;

                    int emp = (int)cmd.ExecuteScalar();
                    Session["emp_id"] = emp;
                    conn.Close();
                    if (emp >= 1)
                    {

                        // Server.Transfer("SecondPage.aspx");
                        Response.Redirect("AdminHome.aspx?user=" + user);

                    }
                    else
                    {
                       // FailureText.Text = "Invalid username or password.";
                       // ErrorMessage.Visible = true;
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
}
