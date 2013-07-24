<%@ Page Language="C#"%>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
   

	protected void RadTagCloud1_ItemClicked(object sender,EventArgs e)
    {
        HttpCookie tag = new HttpCookie("cook");
        tag["tag"] = RadTagCloud1.DataTextField;
        tag.Value = RadTagCloud1.DataTextField;
        tag.Expires = DateTime.Now.AddMinutes(2);
        Response.Cookies.Add(tag);
        Response.Redirect("all/Tagsearch.aspx");
        
	}
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(Database.ConnectionString);
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select uid, fname from users where email = @email and pwd = @pwd", con);
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 50).Value = txtEmail.Text;
            cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 50).Value = txtPwd.Text;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read()) // valid user
            {
                Session.Add("uid", dr["uid"]);
                Session.Add("fname", dr["fname"]);
                FormsAuthentication.RedirectFromLoginPage(txtEmail.Text, false);
            }
            else
                lblMsg.Text = "Invalid Login!";  
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>

</head>
<body >
    <form id="form1" runat="server">
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <telerik:RadScriptManager ID="ScriptManager1" runat="server" 
        EnableTheming="True">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" 
                Name="Telerik.Web.UI.Common.Core.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" 
                Name="Telerik.Web.UI.Common.jQuery.js">
            </asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" 
                Name="Telerik.Web.UI.Common.jQueryInclude.js">
            </asp:ScriptReference>
        </Scripts>
    </telerik:RadScriptManager>
    <div CssClass="wrapper" >
    <h1>
    BLOG-E</h1>
        <table width="100%" height="600px">
        <tr></tr>
            <tr>
                <td width="70%" valign="top" style="position: relative; width: auto; height: auto">
                    <h2>
                        What is this?<br />
                    </h2>
                    This is the place to post your blogs. Blogging is as simple as taking two steps:<br />
                    <br />
                    <ul>
                        <li>Register as a user for free</li>
                        <li>Start posting your blogs.</li>
                    </ul>
                    <h2>
                        Recently Posted Blogs</h2>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="bid,uid"
                        DataSourceID="SqlDataSource1" Width="80%" CssClass="mGrid" GridLines="None"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" AllowPaging="True">
                        <Columns>
                            <asp:BoundField DataField="bid" HeaderText="bid" ReadOnly="True" SortExpression="bid"
                                Visible="False" />
                            <asp:BoundField DataField="uid" HeaderText="uid" ReadOnly="True" SortExpression="uid"
                                Visible="False" />
                            <asp:HyperLinkField DataNavigateUrlFields="bid" DataNavigateUrlFormatString="all/showblog.aspx?bid={0}"
                                DataTextField="title" HeaderText="Title" />
                            <asp:HyperLinkField DataNavigateUrlFields="uid" DataNavigateUrlFormatString="all/showuser.aspx?uid={0}"
                                DataTextField="fname" HeaderText="Author" />
                            <asp:BoundField DataField="postedon" HeaderText="postedon" ReadOnly="True" SortExpression="postedon" />
                        </Columns>
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        SelectCommand="select  top 5 bid, u.uid,title, fname, postedon = convert( varchar(10), postedon, 3) from blogs b, users u&#13;&#10;where  b.uid = u.uid order by bid desc">
                    </asp:SqlDataSource>
                    
                    <br />
                    <a href="all/searchblogs.aspx">Search Blogs</a>
                </td>
                <td valign="middle" 
                    style="background-position: center; padding: 10px; border-style: groove; background-color: wheat; position: relative; float: right; clear: right; background-image: url('Images/Colored_crystal_backgrounds.jpg'); background-repeat: repeat; width: 200px;">
                    <h3>
                        Login</h3>
                    Email Address <br />
                    <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is required!" ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator><br />
                     Password <br />
                    <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required!" ControlToValidate="txtPwd" Display="Dynamic"></asp:RequiredFieldValidator><br />
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label><br />
                    <br />
                    <a href="all/forgotpassword.aspx">Forgot Password?</a> 
                    <br />
                    <a href="all/register.aspx">Register!</a> 
                    
                </td>
            </tr>
        </table>
    
    </div>
    <div><h4>
    Tag Cloud</h4>
        <telerik:RadTagCloud ID="RadTagCloud1" runat="server" Height="122px" 
            onclientitemclicked="RadTagCloud1_ItemClicked" EnableTheming="False" 
            WordsToExclude="a,about,after,all,also,an,and,are,as,at,be,been,but,by,can,could,did,do,does,each,for,from,get,had,has,have,he,her,him,his,how,i,if,in,into,is,it,its,just,me,more,most,my,not,of,on,or,our,said,see,shall,she,should,so,some,than,that,the,their,there,they,this,those,to,up,used,was,we,were,what,when,which,while,who,why,will,with,would,you,your">
            <Items>
                <telerik:RadTagCloudItem NavigateUrl="all/Tagsearch.aspx" Text="Tech" />
                <telerik:RadTagCloudItem Text="Entertainment" />
                <telerik:RadTagCloudItem Text="C#" />
                <telerik:RadTagCloudItem />
            </Items>
        </telerik:RadTagCloud>
    </div>
       <div CssClass="push"></div>
        </div>
        <div class="footer">
            <p align="center" 
                style="color: #00FFFF; font-family: 'Adobe Caslon Pro Bold'; font-size: 20px">Copyright (c) 2013 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/all/About.aspx">About us</asp:HyperLink></p>
        </div>
    </form>
</body>
</html>
