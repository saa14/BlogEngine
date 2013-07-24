using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class all_Tagsearch : System.Web.UI.Page
{
    string cond;
    private void BindData()
    {
        

        /*if (txtTitle.Text.Length > 0)
            cond += " and title like '%" + txtTitle.Text + "%'";

        if (txtAuthor.Text.Length > 0)
            cond += " and fname like '%" + txtAuthor.Text + "%'";

        if (txtFromDate.Text.Length > 0)
            cond += " and postedon >='" + txtFromDate.Text + "'";

        if (txtToDate.Text.Length > 0)
            cond += " and postedon <='" + txtToDate.Text + "'";*/

        // get data from database
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        SqlDataAdapter da = new SqlDataAdapter("select u.uid, bid,title,fname,postedon from users u, blogs b where u.uid = b.uid and b.tagcat=" + cond, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "blogs");

        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Request.Cookies["cook"]!=null)
        {
            cond = Request.Cookies["cook"].Value;
        
        }
        BindData();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindData();
    }

    
}