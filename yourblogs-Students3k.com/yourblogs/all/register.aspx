<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <h2>Registration</h2>
    <table    style="position: relative; display: inline-table; clear: both; table-layout: auto; background-image: url('../Images/Colored_crystal_backgrounds.jpg');">
            <tr>
                <td >
                    First Name</td>
                <td>
                    <asp:TextBox 
                        ID="tb_fname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tb_fname" Display="Dynamic" ErrorMessage="Required" 
                        ValidationGroup="reg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    Last Name   Last Name</td>
                    <td>
                <asp:TextBox 
                        ID="tb_lname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tb_lname" Display="Dynamic" ErrorMessage="Required" 
                        ValidationGroup="reg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    Email     </td> <td >
                    <asp:TextBox 
                        ID="tb_email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="Required" 
                        ValidationGroup="reg"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="tb_email" Display="Dynamic" ErrorMessage="Invalid email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="reg"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td >
                    UserName
                    </td>
                <td >
                    <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tb_username" Display="Dynamic" ErrorMessage="Required" 
                        ValidationGroup="reg"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td >
                    Password
                    
                </td>
                <td>
                <asp:TextBox ID="tb_pwd" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="tb_pwd" Display="Dynamic" ErrorMessage="Required" 
                        ValidationGroup="reg"></asp:RequiredFieldValidator>
      </td>
            </tr>
            <tr>
                <td >
                    Re-Enter Password             </td>
       <td><asp:TextBox ID="tb_pwd2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="tb_pwd2" Display="Dynamic" ErrorMessage="Required" 
                        ValidationGroup="reg"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="tb_pwd" ControlToValidate="tb_pwd2" Display="Dynamic" 
                        ErrorMessage="Passwords Do Not Match" ValidationGroup="reg"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td >

                </td>
            </tr>
            <tr>
                <td >
                    Photo</td>
                <td>
                    <asp:FileUpload ID="fileuploader_photo" runat="server" />
                </td>
            </tr>
            <tr>
                <td >
         Location</td>
         <td>
         <asp:TextBox ID="tb_location" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>
            
            
                Occupation</td><td>

            <asp:TextBox ID="tb_occupation" runat="server"></asp:TextBox>


            </td>
            
            
            </tr>
            <tr>
                <td  colspan="2">
                    <asp:Label ID="lb_error" runat="server"></asp:Label>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ValidationGroup="reg" />
                    <br />
                    <asp:Button ID="bt_register" runat="server" Text="Register!" Width="291px" 
                        onclick="bt_register_click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
