using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ManageRooms_AL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void StartUpLoad()

    {

        //get the file name of the posted image

        string imgName = ImageUpload.FileName.ToString();

        //sets the image path

        string imgPath = "Images/" + imgName;

        //then save it to the Folder

        ImageUpload.SaveAs(Server.MapPath(imgPath));



        int imgSize = ImageUpload.PostedFile.ContentLength;

        if (ImageUpload.PostedFile != null && ImageUpload.PostedFile.FileName != "")

        {

            if (ImageUpload.PostedFile.ContentLength > 25120) // 5120 KB means 5MB

            {

                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big')", true);

            }

            else

            {

                string connString = "Data Source=omisbi3.niunt.niu.edu;Initial Catalog=z1776136;Persist Security Info=True;User ID=z1776136;Password=Bw1243$h11";

                SqlConnection conn = new SqlConnection(connString);
                using (conn)
                    try
                    {
                        conn.Open();
                        int rid = 790;
                        int emp_id = Convert.ToInt32(Session["emp_id"]);
                        using (var cmd2 = new SqlCommand("Insert into rooms ([room_id],[roomType],[price],[availability],[emp_id],[image],[roomDescription]) values(@id,@type,@price,@availability,@emp_id,@image,@desc)", conn))
                        {

                            cmd2.Parameters.AddWithValue("@id", rid + 1);
                            cmd2.Parameters.AddWithValue("@type", type.SelectedValue);
                            cmd2.Parameters.AddWithValue("@price", Decimal.Parse(Price.Text));
                            cmd2.Parameters.AddWithValue("@availability", "Yes");
                            cmd2.Parameters.AddWithValue("@emp_id", emp_id);
                            cmd2.Parameters.AddWithValue("@image", "~/"+imgPath);
                            cmd2.Parameters.AddWithValue("@desc", Description.Text);
                            cmd2.ExecuteNonQuery();
                            id1.Text = "Room Added Successfully";

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
    protected void Button1_Click(object sender, EventArgs e)

    {

        StartUpLoad();

    }

    
}