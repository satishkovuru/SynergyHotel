using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmployeeInfo_Admin : System.Web.UI.Page
{
    string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1776136;Persist Security Info=True;User ID=z1776136;Password=Bw1243$h11";

    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
     

        if (!IsPostBack)
        {
            ShowData();
        }
    }



    protected void ShowData()
    {

       using (SqlConnection conn = new SqlConnection(connString))
        {

            try
            {
                conn.Open();
                using (var cmd = new SqlCommand("SELECT [emp_id],d.[dept_id],[dept_name],[emp_fname],[emp_lname],[emp_doj],[emp_address],[salary],[emp_phone] FROM [employee] e,[department] d where e.dept_id=d.dept_id", conn))
                {
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        EmpInfo.DataSource = dt;
                        EmpInfo.DataBind();
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

    protected void EmpInfo_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
    {
        EmpInfo.EditIndex = e.NewEditIndex;
        ShowData();
    }
    protected void EmpInfo_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
    {
        Label id = EmpInfo.Rows[e.RowIndex].FindControl("emp_id") as Label;
        Label dept_id = EmpInfo.Rows[e.RowIndex].FindControl("dept_id") as Label;
        TextBox dept_name = EmpInfo.Rows[e.RowIndex].FindControl("dept_name1") as TextBox;
        TextBox salary = EmpInfo.Rows[e.RowIndex].FindControl("salary1") as TextBox;
        con = new SqlConnection(connString);
        con.Open();
        SqlCommand cmd = new SqlCommand("Update employee set salary=@salary where emp_id=@id", con);
        cmd.Parameters.AddWithValue("@salary", Convert.ToDecimal(salary.Text));
        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(id.Text));
        cmd.ExecuteNonQuery();
        con.Close();
        con.Open();
        SqlCommand cmd1 = new SqlCommand("Update department set dept_name=@name where dept_id=@id", con);
        cmd1.Parameters.AddWithValue("@name",dept_name.Text);
        cmd1.Parameters.AddWithValue("@id", Convert.ToInt32(dept_id.Text));
        cmd1.ExecuteNonQuery();
        con.Close();
        EmpInfo.EditIndex = -1;
        ShowData();
    }
    protected void EmpInfo_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
    {
        EmpInfo.EditIndex = -1;
        ShowData();
    }
}