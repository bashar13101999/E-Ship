<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 5/7/2022
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="Home/css/css1.css" rel="stylesheet"/>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!--author:starttemplate-->
<!--reference site : starttemplate.com-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords"
          content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
    <meta name="author" content="leamug">
    <!--<title>Unique Login Form | Bootstrap Templates</title>-->
    <!-- Bootstrap core Library -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
    <!-- Font Awesome-->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<!-- Page Content -->
<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-4 text-center">
            <div class="form-login"></br>
                <h4>Phone number validation</h4>
                </br>
                <form action="MainServlet" method="post"/>
                <input type="text" name="phoneValidation"id="phoneValidation" class="form-control input-sm chat-input" placeholder="your code"/>
                </br></br>
                <div>
                    <h5><a href="" style="color: lightblue">resend code</a></h5>
                </div>
                <div class="wrapper">

                        <span class="group-btn">
                            <button class="btn btn-danger btn-md" type="submit" name="sharedButton" value="phoneValidation">verify<i class="fa fa-sign-in"></i></button>
                        </span>
                </div>
            </div>
        </div>
    </div>
    </br></br></br>
    <!--footer-->
    <div class="footer text-white text-center">
        <p>© 2020 All rights reserved</p>
    </div>
    <!--//footer-->
</div>
</body>
</html>

