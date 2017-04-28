<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="PlantSite.Home_Page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Bootstrap - something for smartphones-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>The Flying Tomato</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

</head>
<body>
    <form id="form1" runat="server">
   <div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="Home Page.aspx">The Flying Tomato</a> / <span>by Naama & Rotem</span></h1>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="Home Page.aspx">Home</a></li>
			<li><a href="Sign Up Form.aspx">Sign Up</a></li>
			<li><a href="Sign In.aspx">Sign In</a></li>
			<li><a href="Update.aspx">Update</a></li>
            <li><a href="History.aspx">History</a></li>
			<li><a href="Sign Out.aspx"><%=str %></a></li>
		</ul>
	</div>
	<!-- end #menu -->
	<div id="page">
		<div class="post">
			<h2 class="title">About the project</h2>
			<p><img src="images/pic1.jpg" width="820" height="250" alt="" /></p>
			<p>We major in Engineering Science and that's why we did this project- "The Flying Tomato". The Flying Tomato is a tracking and monitoring device designed for growing aerophonic plants in laboratory conditions. The device is divided to 2 parts: the upper part and the bottom part. You can track and control many parameters including, inter alia,  tempreture, pH of the water, humidity and etc.</p>
		</div>
	</div>
	<div id="about">
		<h2 class="title">About us</h2>
		<p><em><img src="images/pic2.jpg" alt="" width="250" height="172" class="alignleft" /></em>
        We are Naama and Rotem, we are 18 years old, we study in Handessaim high school in Herzelia. We are very good friends and we wanted to do this project together. We chose this specific project because it combines our passions for programming and biology. With the help and guidance of our mentor we decided to focus on a tracking device for plants.</p>
	</div>
</div>
<div id="footer">
</div>
<!-- end #footer -->
        </form>
</body>
</html>
