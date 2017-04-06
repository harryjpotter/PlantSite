<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign In.aspx.cs" Inherits="PlantSite.Sign_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Bootstrap - something for smartphones-->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
</head>
<body>
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
        <a href="Home Page.aspx"> back </a>
    </form>
</div> <br />
</body>
</html>
