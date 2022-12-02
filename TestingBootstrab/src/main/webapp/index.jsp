
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>WorkWise Html Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link rel="stylesheet" type="text/css" href="Home/css/animate.css">
    <link rel="stylesheet" type="text/css" href="Home/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="Home/css/line-awesome.css">
    <link rel="stylesheet" type="text/css" href="Home/css/line-awesome-font-awesome.min.css">
    <link href="Home/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="Home/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="Home/lib/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="Home/lib/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="Home/css/style.css">
    <link rel="stylesheet" type="text/css" href="Home/css/responsive.css">
</head>


<body class="sign-in">


<div class="wrapper">

    <div class="sign-in-page">
        <div class="signin-popup">
            <div class="signin-pop">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="cmp-info">
                            <div class="cm-logo">
                                <img src="Home/images/logo1.png" alt="">
                                <p>Save your time and money..be smart</p>
                            </div><!--cm-logo end-->
                            <img src="Home/images/basharlogo.png" alt="">
                        </div><!--cmp-info end-->
                    </div>
                    <div class="col-lg-6">
                        <div class="login-sec">
                            <ul class="sign-control">
                                <li data-tab="tab-1" class="current">
                                    <a href="#" title="">Sign in</a>
                                </li>
                                <li data-tab="tab-2"><a href="#" title="">Sign up</a></li>
                            </ul>
                            <div class="sign_in_sec current" id="tab-1">

                                <h3>Sign in</h3>
                                <form action="MainServlet" method="post">

                                    <div class="row">
                                        <div class="col-lg-12 no-pdd">
                                            <div class="sn-field">
                                                <input type="text" name="email" placeholder="Username" required>
                                                <i class="la la-user"></i>
                                            </div><!--sn-field end-->
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <div class="sn-field">
                                                <input type="password" name="password" placeholder="Password" required>
                                                <i class="la la-lock"></i>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <div class="checky-sec">
                                                <div class="fgt-sec">


                                                </div><!--fgt-sec end-->

                                            </div>
                                        </div>
                                        <div class="col-lg-12 no-pdd">
                                            <button type="submit" name="sharedButton" value="signin">Sign in</button>
                                        </div>
                                    </div>
                                </form>

                            </div><!--sign_in_sec end-->
                            <div class="sign_in_sec" id="tab-2">

                                <h4>Registration</h4>
                                <br>
                                <div class="dff-tab current" id="tab-3">
                                    <form action="MainServlet" method="post">
                                        <div class="row">
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="text" name="name" placeholder="Full Name" required>
                                                    <i class="la la-user"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="email" name="email" placeholder="Email" >
                                                    <i class="la la-lock"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="password" name="password" placeholder="Password" required>
                                                    <i class="la la-lock"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="password" name="repeat password" placeholder="Repeat Password" required>
                                                    <i class="la la-lock"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="sn-field">
                                                    <input type="text" name="address" placeholder="Address" required>
                                                    <i class="la la-globe"></i>
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div>
                                                    <h5 style="position: absolute;left: 115px;">Male</h5><h5 style="position: absolute;left: 190px;">Female</h5>
                                                    <br><br>
                                                    <h4>Gender
                                                        <input type="radio" name="gender" value="male" checked="true" style="position: absolute;left: 120px; height:20px; width:20px; vertical-align: middle;"/>
                                                        <input type="radio" name="gender" value="female" style="position: absolute;left: 200px; height:20px; width:20px; vertical-align: middle;"/>
                                                    </h4>
                                                </div>
                                                <br>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <div class="checky-sec st2">
                                                    <div class="fgt-sec">
                                                        <input type="checkbox" name="cc" id="c2">
                                                        <label for="c2">
                                                            <span></span>
                                                        </label>
                                                        <small>Yes, I understand and agree to the workwise Terms & Conditions.</small>
                                                    </div><!--fgt-sec end-->
                                                </div>
                                            </div>
                                            <div class="col-lg-12 no-pdd">
                                                <button type="submit" name="sharedButton" value="signup">Get Started</button>
                                            </div>
                                        </div>
                                    </form>
                                </div><!--dff-tab end-->
                            </div>
                        </div><!--login-sec end-->
                    </div>
                </div>
            </div><!--signin-pop end-->
        </div><!--signin-popup end-->
        <div class="footy-sec">
            <div class="container">
                <ul>
                    <li><a href="help-center.html" title="">Help Center</a></li>
                    <li><a href="about.html" title="">About</a></li>
                    <li><a href="#" title="">Privacy Policy</a></li>
                    <li><a href="#" title="">Community Guidelines</a></li>
                    <li><a href="#" title="">Cookies Policy</a></li>
                    <li><a href="#" title="">Career</a></li>
                    <li><a href="forum.html" title="">Forum</a></li>
                    <li><a href="#" title="">Language</a></li>
                    <li><a href="#" title="">Copyright Policy</a></li>
                </ul>
                <p><img src="Home/images/copy-icon.png" alt="">Copyright 2019</p>
            </div>
        </div><!--footy-sec end-->
    </div><!--sign-in-page end-->


</div><!--theme-layout end-->



<script type="text/javascript" src="Home/js/jquery.min.js"></script>
<script type="text/javascript" src="Home/js/popper.js"></script>
<script type="text/javascript" src="Home/js/bootstrap.min.js"></script>
<script type="text/javascript" src="Home/lib/slick/slick.min.js"></script>
<script type="text/javascript" src="Home/js/CheckPassword.js"></script>
<script type="text/javascript" src="Home/js/script.js"></script>
</body>
</html>