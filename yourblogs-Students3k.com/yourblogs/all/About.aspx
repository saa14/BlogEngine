<%@ Page Language="C#" MasterPageFile="~/all/MasterPage.master" %>
 <asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <head >


    <title></title>
</head>
<body>
    <form id="form1" >
   
    <div id="wrapper">
        <div id="contentliquid"><div id="contentwrap">
        <div id="content" align="center">
        <asp:Image ID="Image1" runat="server" Height="109px" ImageAlign="TextTop" 
                ImageUrl="~/Images/Colored_crystal_backgrounds.jpg" />
           <p style="color: #0066CC"> SAAGAR MINOCHA</p>
           </div>
        </div></div>
        <div id="leftcolumnwrap">
        <div id="leftcolumn" align="center">
        <asp:Image ID="Image2" runat="server" Height="109px" ImageAlign="TextTop" 
                ImageUrl="~/Images/Colored_crystal_backgrounds.jpg" Width="159px" />

            

           <p style="color: #0066CC">ANKUR ROY CHOWDHURY</p> </div>
        </div>
        <div id="rightcolumnwrap">
        <div id="rightcolumn" align="center">
        <asp:Image ID="Image3" runat="server" Height="109px" ImageAlign="TextTop" 
                ImageUrl="~/Images/Colored_crystal_backgrounds.jpg" />

            <p style="color: #0066CC">ANMOL AHUJA
            </p></div>
        </div>
    </div>

    </form>
</body>
</asp:Content>


