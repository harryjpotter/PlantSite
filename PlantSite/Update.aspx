<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="PlantSite.Update" %>

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

<script>

    function verify() {
        if (
            is_TempUpMax()
            && is_TempUpMin()
            && is_TempDownMax()
            && is_TempDownMin()
            && is_HuUpMax()
            && is_HuUpMin()
            && is_HuDownMax()
            && is_HuDownMin()
            && is_pHMax()
            && is_pHMin()
            && is_ECMax()
            && is_ECMin()
            && is_PumpMin()
            ) {
            alert("The nominal data have changed");
            return true;
        }

        else {
            alert("check the data again !");
            return false;
        }
    }

    function is_TempUpMax() {
        var TempUpMax = document.getElementById("TempUpMax").value;
        //alert("1 : " + (/^\d+$/.test(TempUpMax) || TempUpMax == ""));
        return (/^\d+$/.test(TempUpMax) || TempUpMax == "");
    }
    function is_TempUpMin() {
        var TempUpMin = document.getElementById("TempUpMin").value;
        //alert("2 : " + (/^\d+$/.test(TempUpMin) || TempUpMin == ""));
        return (/^\d+$/.test(TempUpMin) || TempUpMin == "");
    }
    function is_TempDownMax() {
        var TempDownMax = document.getElementById("TempDownMax").value;
        //alert("3 : " + (/^\d+$/.test(TempDownMax) || TempDownMax == ""));
        return (/^\d+$/.test(TempDownMax) || TempDownMax == "");
    }
    function is_TempDownMin() {
        var TempDownMin = document.getElementById("TempDownMin").value;
        //alert("4 : " + (/^\d+$/.test(TempDownMin) || TempDownMin == ""));
        return (/^\d+$/.test(TempDownMin) || TempDownMin == "");
    }
    function is_HuUpMax() {
        var HuUpMax = document.getElementById("HuUpMax").value;
        //alert("5 : " + (/^\d+$/.test(HuUpMax) || HuUpMax == ""));
        return (/^\d+$/.test(HuUpMax) || HuUpMax == "");
    }
    function is_HuUpMin() {
        var HuUpMin = document.getElementById("HuUpMin").value;
        //alert("6 : " + (/^\d+$/.test(HuUpMin) || HuUpMin == ""));
        return (/^\d+$/.test(HuUpMin) || HuUpMin == "");
    }
    function is_HuDownMax() {
        var HuDownMax = document.getElementById("HuDownMax").value;
        //alert("7 : " + (/^\d+$/.test(HuDownMax) || HuDownMax == ""));
        return (/^\d+$/.test(HuDownMax) || HuDownMax == "");
    }
    function is_HuDownMin() {
        var HuDownMin = document.getElementById("HuDownMin").value;
        //alert("8 : " + (/^\d+$/.test(HuDownMin) || HuDownMin == ""));
        return (/^\d+$/.test(HuDownMin) || HuDownMin == "");
    }
    function is_pHMax() {
        var pHMax = document.getElementById("pHMax").value;
        //alert("9 : " + (/^\d+$/.test(pHMax) || pHMax == ""));
        return (/\d{1,2}[,.]\d{1,2}/.test(pHMax) || pHMax == "");
        
    }
    function is_pHMin() {
        var pHMin = document.getElementById("pHMin").value;
        //alert("10 : " + (/^\d+$/.test(pHMin) || pHMin == ""));
        return (/\d{1,2}[,.]\d{1,2}/.test(pHMin) || pHMin == "");
    }
    function is_ECMax() {
        var ECMax = document.getElementById("ECMax").value;
        //alert("11 : " + (/^\d+$/.test(ECMaxe) || ECMaxe == ""));
        return (/\d{1,2}[,.]\d{1,2}/.test(ECMax) || ECMax == "");
    }
    function is_ECMin() {
        var ECMin = document.getElementById("ECMin").value;
        //alert("12 : " + (/^\d+$/.test(ECMin) || ECMin == ""));
        return (/\d{1,2}[,.]\d{1,2}/.test(ECMin) || ECMin == "");
    }
    function is_PumpMin() {
        var PumpMin = document.getElementById("PumpMin").value;
        //alert("13 : " + (/^\d+$/.test(PumpMin) || PumpMin == ""));
        return (/\d{1,2}[,.]\d{1,2}/.test(PumpMin) || PumpMin == "");
    }
</script>   
</head>
<body>
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
 <div class="container">
    <form id="Update" runat="server" onsubmit="return verify()">
        <h1 > Changing Nominal Data </h1> <br/>
         TempUpMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=TempUpMax %>" type="text" name="TempUpMax" id="TempUpMax" /> <br/> <br/>
             </div>
        TempUpMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=TempUpMin %>" type="text" name="TempUpMin" id="TempUpMin" /> <br/> <br/>
             </div>
        TempDownMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=TempDownMax %>" type="text" name="TempDownMax" id="TempDownMax" /> <br/> <br/>
             </div>
        TempDownMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=TempDownMin %>" type="text" name="TempDownMin" id="TempDownMin" /> <br/> <br/>
             </div>
        HuUpMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=HuUpMax %>" type="text" name="HuUpMax" id="HuUpMax" /> <br/> <br/>
             </div>
        HuUpMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=HuUpMin %>" type="text" name="HuUpMin" id="HuUpMin" /> <br/> <br/>
             </div>
        HuDownMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=HuDownMax %>" type="text" name="HuDownMax" id="HuDownMax" /> <br/> <br/>
             </div>
        HuDownMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=HuDownMin %>" type="text" name="HuDownMin" id="HuDownMin" /> <br/> <br/>
             </div>
        pHMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=pHMax %>" type="text" name="pHMax" id="pHMax" /> <br/> <br/>
             </div>
        pHMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=pHMin %>" type="text" name="pHMin" id="pHMin" /> <br/> <br/>
             </div>
        ECMax:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=ECMax %>" type="text" name="ECMax" id="ECMax" /> <br/> <br/>
             </div>
        ECMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=ECMin %>" type="text" name="ECMin" id="ECMin" /> <br/> <br/>
             </div>
        PumpMin:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="<%=PumpMin %>" type="text" name="PumpMin" id="PumpMin" /> <br/> <br/>
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