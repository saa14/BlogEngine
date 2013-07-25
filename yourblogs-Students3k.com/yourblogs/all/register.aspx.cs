using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {       

    }
     protected void bt_register_click(object sender, EventArgs e)
    {
        bool hasPhoto = false;
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        if( !(IsValid ))
        {
            return;
        }
        try
        {
            string command = "insert into users (email,pwd,fname,lname,location,occupation,username,photo) values( ";
            command += "'" + tb_email.Text + "', ";
            command += "'" + tb_pwd.Text + "', ";
            command += "'" + tb_fname.Text + "', ";
            command += "'" + tb_lname.Text + "', ";
            command += "'" + tb_location.Text + "', ";
            command += "'" + tb_occupation.Text + "', ";
            command += "'" + tb_username.Text + "', ";
          /*  try
            {
                if (fileuploader_photo.HasFile)
                {
                    String filename = Request.MapPath("../photos/" + Session["uid"].ToString() + ".jpg");
                    fileuploader_photo.SaveAs(filename);
                    hasPhoto = true;
                }
                //else
                   // throw new Exception("NO PHOTO");
            }
            catch (Exception ex1)
            {
                throw ex1;
            }
            */
            if (hasPhoto)
                command += "'y' ); ";
            else
                command += "'n' ); ";
            
            con.Open();
            cmd = new SqlCommand(command, con);
            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Redirect("../login.aspx");
            }
            else
                throw new Exception("aaaaaaaaaaaaaaaaaaaaaa");

        }
        catch (SqlException ex2)
        {
            lb_error.Text = "Please enter another username, this one's already taken";
        }
        catch (Exception ex3)
        {
            //throw ex3;
            lb_error.Text = ex3.ToString();
        }
        finally
        {
            con.Close();
        } 

    }

}