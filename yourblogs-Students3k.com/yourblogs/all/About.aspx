<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="all_About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div >
        <div >
        <p align="center">Header</p>
    </div>
    
    <div style="position: absolute;
left:10px;
top:50px;
width:400px;
background:#fff;
border:1px dotted #FFFFFF; background-image: url('../Images/bg01.png');" align="center"
>
        <asp:Image ID="Image1" runat="server" />
        <p>Primary Sidebar</p>
    </div>
    
    <div  style="background:#fff;
    width:400px;
    top:50px;
border:1px dotted #FFFFFF;
 margin-left: 565px;
margin-right:410px; background-image: url('../Images/bg01.png');" align="center">
        <asp:Image ID="Image2" runat="server" />
        <p>Main content</p>
    </div>
    
    <div style="position: absolute;
right:10px;
top:50px;
width:400px;
background:#fff;
border:1px dotted #FFFFFF; background-image: url('../Images/bg01.png');" 
            align="center">
        <asp:Image ID="Image3" runat="server" />
        <p>Secondary Sidebar</p>
    </div>
    
    <div>
        <p align="center">Footer</p>
    </div>
</div>
    </form>
</body>
</html>
