<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="History.aspx.cs" Inherits="PlantSite.History" %>

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
<title>The Plant Site</title>
<link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
<link href="style.css" rel="stylesheet" type="text/css" media="screen" />

<script src="Main.js"></script>

   </head>
<body>
    <div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="Home Page.aspx">The Plant Site</a> / <span>by Naama & Rotem</span></h1>
		</div>
	</div>
	<!-- end #header -->
	<div id="menu">
		<ul>
			<li class="current_page_item"><a href="Home Page.aspx">Home</a></li>
			<li><a href="Sign Up Form.aspx">Sign Up</a></li>
			<li><a href="Sign In.aspx">Sign In</a></li>
			<li><a href="Update.aspx">Update</a></li>
			<li><a href="Live.aspx">Live</a></li>
			<li><a href="History.aspx">History</a></li>
		</ul>
	</div>
	<!-- end #menu -->
 <div class="container">
    <form id="signup" runat="server" onsubmit="return verify()">
        <h1 > History </h1> <br/>
        <h3><%=CurrDataTable %> </h3>
    </form>
	</div>
</div>
<div id="footer">
</div>
<!-- end #footer -->
</body>
</html>