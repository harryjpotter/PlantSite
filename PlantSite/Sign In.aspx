<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign In.aspx.cs" Inherits="PlantSite.Sign_In" %>

<!DOCTYPE html>

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

</head>
<body>
    <div id="wrapper">
	<div id="header">
		<div id="logo">
			<h1><a href="#">The Plant Site</a> / <span>by Naama & Rotem</span></h1>
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
 <div class="container">
    <form id="signin" runat="server">
        <h1 > Sign In </h1> <br/>
            Enter Username
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter your username" type="text" name="username" id="username" /> <br/> <br/>
             Enter Password
            </div>
            <div class="form-group">
            <input class="form-control" placeholder="Enter your password" type="text" name="password" id="password"/>
            <br/>
            </div>
        <%=message%>
        <br /> <input type="submit" class="btn btn-primary" id="submit" value="sign in" /> <br />
    </form>
	</div>
</div>
<div id="footer">
</div>
<!-- end #footer -->