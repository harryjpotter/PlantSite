<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up Form.aspx.cs" Inherits="PlantSite.Sign_Up_Form" %>

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
	<!-- end #menu -->
 <div class="container">
    <form id="Update" runat="server">
        <h1 > Changing Nominal Data </h1> <br/>
         TempUpMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new TempUpMax" type="text" name="TempUpMax" id="TempUpMax" /> <br/> <br/>
             </div>
        TempUpMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new TempUpMin" type="text" name="TempUpMin" id="TempUpMin" /> <br/> <br/>
             </div>
        TempDownMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new TempDownMax" type="text" name="TempDownMax" id="TempDownMax" /> <br/> <br/>
             </div>
        TempDownMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new TempDownMin" type="text" name="TempDownMin" id="TempDownMin" /> <br/> <br/>
             </div>
        HuUpMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new HuUpMax" type="text" name="HuUpMax" id="HuUpMax" /> <br/> <br/>
             </div>
        HuUpMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new HuUpMin" type="text" name="HuUpMin" id="HuUpMin" /> <br/> <br/>
             </div>
        HuDownMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new HuDownMax" type="text" name="HuDownMax" id="HuDownMax" /> <br/> <br/>
             </div>
        HuDownMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new HuDownMin" type="text" name="HuDownMin" id="HuDownMin" /> <br/> <br/>
             </div>
        pHMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new pHMax" type="text" name="pHMax" id="pHMax" /> <br/> <br/>
             </div>
        pHMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new pHMin" type="text" name="pHMin" id="pHMin" /> <br/> <br/>
             </div>
        ECMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter new ECMax" type="text" name="ECMax" id="ECMax" /> <br/> <br/>
             </div>
        ECMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter New ECMin" type="text" name="ECMin" id="ECMin" /> <br/> <br/>
             </div>
        PumpMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter New PumpMin" type="text" name="PumpMin" id="PumpMin" /> <br/> <br/>
             </div>
        <input type="submit" class="btn btn-primary" id="submit" value="Change Nominal Data" /> <br/>
    </form>
	</div>
</div>
<div id="footer">
</div>
<!-- end #footer -->
</body>
</html>