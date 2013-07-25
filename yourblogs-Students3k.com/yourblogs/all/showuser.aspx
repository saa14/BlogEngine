<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style>
    #rounded-corner
{
	font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
	font-size: 12px;
	margin: 45px;
	width: 480px;
	text-align: left;
	border-collapse: collapse;
}
#rounded-corner thead th.rounded-company
{
	background: #b9c9fe url('table-images/left.png') left -1px no-repeat;
}
#rounded-corner thead th.rounded-q4
{
	background: #b9c9fe url('table-images/right.png') right -1px no-repeat;
}
#rounded-corner th
{
	padding: 8px;
	font-weight: normal;
	font-size: 13px;
	color: #039;
	background: #b9c9fe;
}
#rounded-corner td
{
	padding: 8px;
	background: #e8edff;
	border-top: 1px solid #fff;
	color: #669;
}
#rounded-corner tfoot td.rounded-foot-left
{
	background: #e8edff url('table-images/botleft.png') left bottom no-repeat;
}
#rounded-corner tfoot td.rounded-foot-right
{
	background: #e8edff url('table-images/botright.png') right bottom no-repeat;
}
#rounded-corner tbody tr:hover td
{
	background: #d0dafd;
}</style>
</head>
<body>
<h2>User Profile</h2>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Width="100%">
            <ItemTemplate>
            <table width="100%">
            <tr>
           <td>
           <object data="../photos/<%# Eval("uid") %>.jpg" height="200" width="200" align="right">
            <img width="200" height ="200" src="../Images/nophoto.png" align="right" />
            </object>
           </td>
          <td>
            <table id="rounded-corner" cellpadding="5" border="1"> 
            <tr>
             <td class="rounded-company" style="font-weight:700">First Name </td> 
             <td class="rounded-foot-left"><%#Eval("fname") %></td> 
            </tr> 
           <tr>
             <td class="rounded-company" style="font-weight:700">Last Name </td> 
             <td class="rounded-foot-left"><%#Eval("lname") %></td> 
            </tr>  
           <tr>
             <td  class="rounded-company" style="font-weight:700"> Email Address</td> 
             <td class="rounded-foot-left"><%#Eval("email") %></td> 
            </tr>  
           
           <tr>
             <td class="rounded-company" style="font-weight:700"> Location</td> 
             <td class="rounded-foot-left"><%#Eval("location") %></td> 
            </tr>  
           
           <tr>
             <td style="font-weight:700">Occupation</td> 
             <td class="rounded-foot-left"><%#Eval("occupation") %></td> 
            </tr>  
           
           <tr>
             <td style="font-weight:700">Joined On</td> 
             <td class="rounded-foot-left"><%#Eval("dj") %></td> 
            </tr>  
           </table> 
          </td> 
            </tr> 
            </table>
            </ItemTemplate>
        </asp:FormView>
     <p />
     <a href="../login.aspx">Go Back</a>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            
        
        SelectCommand="SELECT uid,[email], [occupation], [fname], [lname], [dj], [location] FROM [users] WHERE ([uid] = @uid)">
            <SelectParameters>
                <asp:QueryStringParameter Name="uid" QueryStringField="uid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
