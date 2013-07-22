<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

/*protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {// Get the UserId of the just-added user
        MembershipUser newUser = Membership.GetUser(CreateUserWizard1.UserName);

        Guid newUserId = (Guid)newUser.ProviderUserKey;

        //Get Profile Data Entered by user in CUW control
        String FirstName = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("FirstName")).Text;

        String LastName = ((TextBox)CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("LastName")).Text;
        // Insert a new record into User_Profile

        // Get your Connection String from the web.config. MembershipConnectionString is the name I have in my web.config

        string connectionString = ConfigurationManager.ConnectionStrings["MembershipConnectionString"].ConnectionString;
        string insertSql = "INSERT INTO User_Profile(UserId,FirstName, LastName) VALUES(@UserId, @FirstName, @LastName)";

        using (System.Data.SqlClient.SqlConnection myConnection = new System.Data.SqlClient.SqlConnection(connectionString))
        {

            myConnection.Open();

            SqlCommand myCommand = new SqlCommand(insertSql, myConnection);

            myCommand.Parameters.AddWithValue("@UserId", newUserId);
            myCommand.Parameters.AddWithValue("@FirstName", FirstName);

            myCommand.Parameters.AddWithValue("@LastName", LastName);
            myCommand.ExecuteNonQuery();

            myConnection.Close();

        }

}*/
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
