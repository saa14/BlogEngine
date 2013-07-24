<%@ Page Language="C#"%>


<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
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
<link href="~/App_Themes/all/StyleSheet.css" rel="stylesheet" type="text/css" />
    		<meta charset="utf-8" />
		<title>Hellllll NO</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="description" content="The premium forum for expressing and contesting opinions." />
		<meta name="author" content="heh" />
		<meta name="viewport" content="width=device-width,initial-scale=1" />
        <link href='http://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="stylesheet" href="fancy/css/reset.css" />
		<link rel="stylesheet" href="fancy/css/demo.css" />
		<!--<link rel="stylesheet" type="text/css" href="fancy/css/prettyPhoto.css" />-->
<script type="text/javascript" src="fancy/js/jquery-1.10.2.js"></script>
<script type="text/javascript" src="fancy/js/jquery.isotope.min.js"></script>

<style>
nav.primary {
	width:auto;
	margin:30px auto;
	display:table;
}

nav.primary ul li  {
	float:left;
	list-style:none;
}

nav.primary ul li a {
	height:39px;
	display:block;
	font-size:15px;
	color:#000;
	padding:0 10px;
	text-decoration:none;
	line-height:39px;
}

nav.primary li a.selected {
    border-bottom: 3px solid #ED3131;
}

.main {
	padding:0;
	margin:0;
	display:block;
}

.entry {
	position:relative;
	float:left;
	margin:10px;
	cursor:pointer;
	width:225px;
	height:225px;
	padding:0;
}

.portfolio { margin:0; }

.magnifier {
	background:rgba(237,49,49,.7) url(fancy/images/magnifier.png) no-repeat center;
	position:absolute;
	top:10px;
	left:10px;
	bottom:10px;
	right:10px;
	opacity:0;
	-webkit-transition:all .3s ease-in-out;
	-moz-transition:all .3s ease-in-out;
	-ms-transition:all .3s ease-in-out;
	-o-transition:all .3s ease-in-out;
	transition:all .3s ease-in-out;
}
.video-hover {
	background:rgba(237,49,49,.7) url(fancy/images/video.png) no-repeat center;
	position:absolute;
	top:10px;
	left:10px;
	bottom:10px;
	right:10px;
	opacity:0;
	-webkit-transition:all .3s ease-in-out;
	-moz-transition:all .3s ease-in-out;
	-ms-transition:all .3s ease-in-out;
	-o-transition:all .3s ease-in-out;
	transition:all .3s ease-in-out;
}

.entry:hover .video-hover,
.entry:hover .magnifier { opacity:1; }

img {
	max-width:100%;
}

.isotope-item {
  z-index: 2;
}

.isotope-hidden.isotope-item {
  pointer-events: none;
  z-index: 1;
}

.isotope,
.isotope .isotope-item {
-webkit-transition-duration: 0.8s;
   -moz-transition-duration: 0.8s;
        transition-duration: 0.8s;
}

.isotope {
-webkit-transition-property: height, width;
   -moz-transition-property: height, width;
        transition-property: height, width;
}

.isotope .isotope-item {
-webkit-transition-property: -webkit-transform, opacity;
   -moz-transition-property:    -moz-transform, opacity;
        transition-property:         transform, opacity;
}

</style>

</head>
<body >
    <form id="form1" runat="server">

    		<div class="ddn-top clearfix">
			<span class="left">
					<strong>Hellllllll NO</strong>
				</a>
			</span>
		</div><!--/ WDT top bar -->
        
        
	<div id="wrapper">
 
		<h1><span>HELLLLLLLL NO</span></h1>
        
            <div class="container">
            <!-- DEMO -->
                 <nav class="primary clearfix">
                    <ul>
                        <li><a href="#" class="selected" data-filter=".menu">Main Menu</a></li>
                        <li><a href="#" data-filter=".registration">Registration</a></li>
                        <li><a href="#" data-filter=".debates">Hot Debates</a></li>
                    </ul>
                </nav>


		<section class="main">
			<div class="portfolio">
				<article class="menu primary">
					<a href="#" data-filter=".debates" >
					    <img src="fancy/images/menu/menu_hotDebates.png" alt="" width=300 height=300>
					    					<span class="magnifier"></span>
					</a>
				</article>
				<article class="menu primary">
					<a href="#" data-filter=".registration">
					    <img src="fancy/images/menu/menu_registration.jpg" alt="" width=300 height=300>
					    					<span class="magnifier"></span>
					</a>
				</article>


				<article class="entry web debates" style="color:sienna;">
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
                    <a class="link" href="all/register.aspx">Register!</a> 
				</article>

				<article class="entry print debates">
                    <a data-rel="prettyPhoto" href="fancy/images/portfolio/work3.jpg">
					<img src="fancy/images/portfolio/work3.jpg" alt="">
					<span class="magnifier"></span>
                    </a>
				</article>

				<article class="entry ill debates">
                    <a data-rel="prettyPhoto" href="fancy/images/portfolio/work4.jpg">
					<img src="fancy/images/portfolio/work4.jpg" alt="">
					<span class="magnifier"></span>
                    </a>
				</article>

				<article class="entry video logo registration">
					<a data-rel="prettyPhoto" href="http://vimeo.com/34266952">
                    <img src="fancy/images/portfolio/work5.jpg" alt="">
					<span class="video-hover"></span>
                    </a>
				</article>

				<article class="entry web print registration">
                    <a data-rel="prettyPhoto" href="fancy/images/portfolio/work6.jpg">
					<img src="fancy/images/portfolio/work6.jpg" alt="">
					<span class="magnifier"></span>
                    </a>
				</article>

				<article class="entry video logo print">
					<a data-rel="prettyPhoto" href="http://vimeo.com/34266952">
                    <img src="fancy/images/portfolio/work7.jpg" alt="">
					<span class="video-hover"></span>
                    </a>
				</article>

				<article class="entry ill logo video">
                    <a data-rel="prettyPhoto" href="fancy/images/portfolio/work2.jpg">
					<img src="fancy/images/portfolio/work8.jpg" alt="">
					<span class="magnifier"></span>
                    </a>
				</article> 
                   
				<article class="entry video logo">
                    <a data-rel="prettyPhoto" href="fancy/images/portfolio/work9.jpg">
					<img src="fancy/images/portfolio/work9.jpg" alt="">
					<span class="magnifier"></span>
                    </a>
				</article>

				<article class="entry web print">
                    <a data-rel="prettyPhoto" href="fancy/images/portfolio/work10.jpg">
					<img src="fancy/images/portfolio/work10.jpg" alt="">
					<span class="magnifier"></span>
                    </a>
				</article>

				<article class="entry video logo print">
					<a data-rel="prettyPhoto" href="http://vimeo.com/34266952">
                    <img src="fancy/images/portfolio/work11.jpg" alt="">
					<span class="video-hover"></span>
                    </a>
				</article>

				<article class="entry ill logo video">
                    <a data-rel="prettyPhoto" href="fancy/images/portfolio/work12.jpg">
					<img src="fancy/images/portfolio/work12.jpg" alt="">
					<span class="magnifier"></span>
                    </a>
				</article>  


			</div>

		</section>
            <!-- END DEMO -->
                <div class="clearfix"></div>
            </div>

	</div>
        
        </form>

<script>
	var $container = $('.portfolio');
	$container.isotope({
		filter: '.menu',
		animationOptions: {
			duration: 750,
			easing: 'linear',
			queue: false,
		}
	});

	$('nav.primary ul a').click(function(){
		var selector = $(this).attr('data-filter');
		$container.isotope({
			filter: selector,
			animationOptions: {
				duration: 750,
				easing: 'linear',
				queue: false,
			}
		});
	  return false;
	});
	$('article.primary a').click(function(){
		var selector = $(this).attr('data-filter');
		$container.isotope({
			filter: selector,
			animationOptions: {
				duration: 750,
				easing: 'linear',
				queue: false,
			}
		});
		var $this = $(this);
		  // don't proceed if already selected
		  if ( $this.hasClass('selected') ) {
		      return false;
		  }
	   $('nav.primary ul').find('.selected').removeClass('selected');
	   $('nav.primary ul').find( '.'+ $(this).attr('data-filter') ).addClass('selected'); 

	  return false;
	});

	var $optionSets = $('nav.primary ul'),
	       $optionLinks = $optionSets.find('a');
	 
	       $optionLinks.click(function(){
	          var $this = $(this);
		  // don't proceed if already selected
		  if ( $this.hasClass('selected') ) {
		      return false;
		  }
	   var $optionSet = $this.parents('nav.primary ul');
	   $optionSet.find('.selected').removeClass('selected');
	   $this.addClass('selected'); 
	});
</script>

</body>
</html>
