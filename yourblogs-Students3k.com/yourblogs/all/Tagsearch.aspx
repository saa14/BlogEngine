﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tagsearch.aspx.cs" Inherits="all_Tagsearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Blog Category:<%# Eval("tagcat") %></h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%" Cellpadding="5" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="bid" DataNavigateUrlFormatString="showblog.aspx?bid={0}"
                    DataTextField="title" HeaderText="Title" />
                <asp:HyperLinkField DataNavigateUrlFields="uid" DataNavigateUrlFormatString="showuser.aspx?uid={0}"
                    DataTextField="fname" HeaderText="Author" />
                <asp:BoundField DataField="postedon" HeaderText="Posted On" />
            </Columns>
            <HeaderStyle BackColor="#404040" ForeColor="White" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
