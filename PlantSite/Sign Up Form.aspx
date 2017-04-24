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
        <h1 > Sign Up </h1> <br/>
            Full Name:
            <br/> <br/>
            <div class="form-group">
            <input class="form-control" placeholder="Enter full name" type="text" name="FullName" id="Fullname" /> <br/> <br/> Username
            </div>
            <div class="form-group">
            <input class="form-control" placeholder="Enter username" type="text" name="Username" id="Username"/> <br/>
            <div style="color: red;"> <%=errorMessage%> </div> <br />
            Password
            <br/>
            </div>
            <div class="form-group">
            <input class="form-control" placeholder="Enter password" type="password" name="Password" id="Password"/> <br/> <br/> Confirm Password
            <br/>
            </div>
            <div class="form-group">
            <input class="form-control" placeholder="Confirn password" type="password" name="ConfirmPassword" id="ConfirmPassword"/> <br/> <br/> Email
            <br/>
            </div>
            <div class="form-group">
            <input class="form-control" placeholder="Enter email" type="email" name="Email" id="Email"/> <br/> <br/> Phone
            <br/>
            <input class="form-control" placeholder="Enter phone" type="text" name="phone" id="phone"/>
            </div>
            <br/>
            <textarea cols="111" rows="14" readonly>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Suscipit, eaque tempora, soluta officia culpa fugiat nisi dolor qui iusto aliquam voluptas quod totam libero voluptatibus, quidem ratione unde corporis, nihil laborum veniam vitae quis a quia ducimus tenetur. Quaerat natus omnis corrupti quibusdam assumenda in facere ea excepturi dicta laborum quod quae incidunt, beatae culpa cupiditate, dolores ipsum molestiae nostrum odio eligendi quis quos iste. Rerum esse, voluptates possimus praesentium quisquam. Laborum quo numquam ullam eos tenetur eius debitis illum? Nemo est at explicabo. Hic ad eligendi qui consequatur sapiente repellendus reprehenderit saepe maxime neque pariatur fugiat autem laudantium nam aspernatur labore, tempora accusantium quibusdam accusamus tempore! Possimus, hic in vero minima illum accusantium enim nobis nostrum voluptas id natus doloribus assumenda cupiditate culpa incidunt! Ipsum, repudiandae, ipsa. Magni possimus itaque repudiandae velit repellendus. Minima optio, impedit doloremque vero porro. Cupiditate ipsum, magnam officia sequi accusamus blanditiis perspiciatis unde provident! Velit tempora, repellendus, aut quibusdam, quis libero soluta delectus quasi provident obcaecati maiores eveniet illum enim dolores ad, ducimus expedita reprehenderit molestias? Ea expedita est sunt aliquid, inventore maiores nostrum impedit dolor sit, vitae, in officiis asperiores. Voluptates asperiores quos perferendis neque sequi delectus iste voluptatibus magnam cupiditate alias hic quasi vero, officiis, autem dignissimos cum rerum saepe eos deserunt, mollitia nihil aliquid quo facere debitis! Incidunt atque ipsum architecto, distinctio doloribus consequatur nulla rem commodi eos esse amet eligendi numquam enim tempora facilis suscipit cumque, culpa ratione. Cupiditate facilis consequuntur architecto, hic expedita sed vero minima suscipit error consectetur quis minus excepturi at eum aspernatur, tenetur eligendi! Obcaecati labore similique repudiandae dolores, dolorem, optio aliquam laudantium distinctio tempora delectus totam velit ex, fugiat cumque culpa accusamus doloribus rerum ipsum esse explicabo maxime? Velit non dolorum illum possimus excepturi modi quis dicta hic pariatur omnis consequatur odio ut, explicabo laudantium voluptatibus fugit magnam, recusandae architecto veritatis exercitationem, ratione! Vero commodi non aspernatur at molestias consequatur vitae necessitatibus facilis modi. Cumque recusandae, provident dolorem, libero delectus facilis tempora quidem alias consequuntur debitis voluptates similique velit dolores perferendis atque inventore, voluptas sapiente quos! Reprehenderit amet unde doloribus assumenda est atque dolorum obcaecati, nemo accusantium totam sapiente laborum quasi dolorem optio quae necessitatibus qui in accusamus a, modi, cum. Alias eaque dolore dolorum repellendus, soluta, pariatur illo quidem expedita tempore, molestiae totam quam temporibus, aperiam quae repudiandae! Officia impedit, nostrum corporis tenetur quibusdam accusamus sunt, earum quisquam id est adipisci dignissimos delectus explicabo magnam maiores nam consequatur ad quod, repellat aspernatur! Nam animi, accusamus maxime incidunt officiis aliquid suscipit voluptatem harum voluptatum eligendi facere accusantium enim repellat magnam modi soluta deserunt saepe molestiae iure commodi illum, inventore beatae magni. Explicabo quos eveniet nulla ea, incidunt, cumque! Tenetur voluptatem modi fugiat. Deserunt similique iusto aut sunt, eos placeat et, sequi maiores asperiores, eum expedita veniam recusandae ad dicta doloremque, odit illo blanditiis qui voluptatibus modi. Saepe dolore iusto nam eius facilis, nulla pariatur. Deleniti nemo excepturi a qui, maiores pariatur quo natus velit ut dolores repellat quae tenetur sunt id, ipsam mollitia laboriosam facilis possimus, fugit consequuntur. Fugit, necessitatibus maxime blanditiis eum nulla, similique. Aliquam aspernatur fugit dolorum porro ducimus consequatur placeat repellat at ea nobis qui facilis reiciendis mollitia quo sint non magnam et commodi unde nisi, incidunt repudiandae omnis distinctio. Impedit dignissimos fugiat eaque cupiditate veniam dolorum hic debitis nostrum magnam facilis qui quaerat laboriosam minus omnis, adipisci corrupti, ipsam quam ab excepturi. Aspernatur exercitationem velit, illo sapiente quo laudantium facilis quisquam. Harum ut ea repellat fugiat recusandae accusamus! Accusantium, nam in odio at, minus architecto ex dolore ullam, sint quaerat pariatur itaque asperiores laborum eaque illo excepturi dolorem! Accusantium culpa repellat molestias alias, minima, excepturi? Incidunt, eius consequuntur vitae voluptatum, tempora corporis accusantium mollitia dignissimos alias, id ad atque harum consequatur quod excepturi recusandae officiis debitis non dicta error itaque soluta molestias reiciendis eveniet. Voluptates laborum non itaque ipsum, magni nihil sunt eos labore molestias voluptate pariatur accusantium, consectetur repudiandae doloremque. Possimus id commodi consequuntur fugiat placeat deserunt unde, ea, odio, soluta laborum animi necessitatibus consequatur recusandae illum eligendi? Iusto amet harum nesciunt vero vel sed ipsum, at omnis porro asperiores quidem ad deleniti illum optio assumenda itaque laboriosam sint quod deserunt rerum sit, et eum eveniet autem atque. Qui voluptatibus quasi aspernatur illum earum facilis ratione veniam, iste accusamus quibusdam, quam sit excepturi eos doloribus ut voluptas enim odit, voluptates laudantium nobis illo commodi optio placeat quisquam natus. Voluptatibus, assumenda. Fugiat, nam, incidunt. Asperiores dolorum, vero libero consectetur, sequi delectus molestiae voluptatem fugiat veniam nisi, enim. Impedit perspiciatis distinctio labore quis recusandae nobis quo sed laudantium placeat maxime explicabo dicta ipsam rerum, numquam nostrum accusantium culpa repellendus id neque temporibus dolor et fugit nemo nisi aliquam. Velit excepturi dolore debitis voluptatibus harum nesciunt, eius, impedit. Temporibus delectus vel non, neque, accusantium optio cupiditate est quasi quaerat asperiores mollitia voluptatem soluta a, aliquam. Vero optio magni nisi deleniti voluptatem, quia iusto placeat commodi laudantium natus earum veritatis vel, omnis ea sit fuga, temporibus aut maiores distinctio id hic. Delectus maxime error quas qui tenetur a ea consectetur, voluptatum laborum, omnis odio quis quia optio praesentium consequuntur. Quibusdam ab ex consequatur fugiat deserunt amet veniam consectetur, ullam assumenda, officia esse vero voluptatum maxime porro magni adipisci atque nesciunt non harum in quidem beatae reiciendis totam corrupti. Dignissimos magnam reiciendis explicabo quod id quibusdam assumenda recusandae et nemo aperiam quis, error accusantium numquam consequatur. Adipisci incidunt amet enim qui perspiciatis eligendi animi, architecto velit aliquam delectus. Iure, ducimus, qui! Minima, iste, ullam. Labore et, est quam eos optio deserunt eveniet minima sequi quibusdam aperiam quod. Aliquid corporis reiciendis facere ut mollitia architecto magnam expedita sunt, ullam natus eius quia, totam obcaecati dolorem beatae repudiandae? Quod, minus eligendi, deleniti at earum provident consequatur, excepturi inventore amet sapiente iure explicabo dicta nobis atque vitae voluptate. Perspiciatis iusto similique ab sapiente quisquam reiciendis earum iste, suscipit consectetur error dolorem maiores dicta, quam. Alias quas, doloremque quaerat accusantium suscipit iusto dicta officiis aperiam sit aut eos non sapiente quos, magni voluptate, adipisci laborum! Recusandae saepe voluptates maxime.</textarea> <br/>
      <input type="checkbox" name="Agree" id="Agree"/> I Agree To The Terms Of Use <br/> <br/>
        <input type="submit" class="btn btn-primary" id="submit" value="sign up" /> <br/>
    </form>
	</div>
</div>
<div id="footer">
</div>
<!-- end #footer -->
</body>
</html>