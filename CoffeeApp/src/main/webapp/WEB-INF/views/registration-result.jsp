<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ninja Confirmation</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="vendor/simple-line-icons/css/simple-line-icons.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
    <link rel="shortcut icon" type="image/jpg" href="img/favicon1.jpg"/>

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="device-mockups/device-mockups.min.css">

    <!-- Custom styles for this template -->
    <link href="css/new-age.min.css" rel="stylesheet">
</head>
<body>
<!-- Form action determines the next URL path -->
<form action= "#">

<%-- 	<h1>Confirmation</h1>
	<p>
	Thank you for your input, ${ user.firstname }! More details to come soon...
	</p>
<p>
<br/>
<button>Add Another Oil Head</button>
</p> --%>

 <section class="cta">
      <div class="cta-content">
        <div class="container">
          <h2>Thanks, ${ user.firstName }!<br>More details to come.</h2>
          <a href="/index" class="btn btn-outline btn-xl js-scroll-trigger">Home Page</a>
        </div>
      </div>
      <div class="overlay"></div>
    </section>




   <!--  <section class="contact bg-primary" id="contact">
      <div class="container">
        <h2>Made with
          <i class="fa fa-heart"></i>
          in Detroit!</h2>
        <ul class="list-inline list-social">
          <li class="list-inline-item social-twitter">
            <a href="https://twitter.com/TheOnion">
              <i class="fa fa-twitter"></i>
            </a>
          </li>
          <li class="list-inline-item social-facebook">
            <a href="https://www.facebook.com/beyonce/">
              <i class="fa fa-facebook"></i>
            </a>
          </li> -->
       
          
          
<!--           <li class="list-inline-item social-google-plus">
            <a href="#">
              <i class="fa fa-google-plus"></i>
            </a>
          </li> -->
        </ul>
      </div>
    </section>

    <footer>
      <div class="container">
        <p>&copy; Coffee Ninja 2018. All Rights Reserved.</p>
        <ul class="list-inline">
          <li class="list-inline-item">
            <a href="https://www.imdb.com/title/tt0120660/">Privacy</a>
          </li>
          <li class="list-inline-item">
            <a href="https://www.powerthesaurus.org/on_good_terms">Terms</a>
          </li>
          <li class="list-inline-item">
            <a href="https://help.behance.net/hc/en-us">FAQ</a>
          </li>
        </ul>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/new-age.min.js"></script>

  </body>

</html>