<%@ page import="Model.Customer" %>
<%@ page import="com.example.Controller.MainServlet" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.DatabaseConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Post" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.Operations" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Poster profile</title>
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


<body>
<%
    Customer customer = new Customer();
    Post post = null;
    ArrayList<Post> posts = new ArrayList<>();
    try
    {
        ResultSet result2 = DatabaseConnection.getStatement(DatabaseConnection.getConnection()).executeQuery("select * from post");
        while (result2.next())
        {

            if(String.valueOf(session.getAttribute("name")).equals(result2.getString(1))) {
                post = new Post();
                post.setCustomerName(result2.getString(1));
                post.setPostingDate(result2.getString(2));
                post.setCategory(result2.getString(3));
                post.setNameOfPiece(result2.getString(4));
                post.setPrice(result2.getString(5));
                post.setCountryFrom(result2.getString(6));
                post.setCountryTo(result2.getString(7));
                post.setTime(result2.getString(8));
                post.setDescription(result2.getString(9));
                posts.add(post);
            }
        }
    }
    catch (SQLException e){}

    post = (Post)session.getAttribute("post");
%>

<div class="wrapper">
    <header>
        <div class="container">
            <div class="header-data">
                <div class="search-bar">
                    <form>
                        <input type="text" name="search" placeholder="Search...">
                        <button type="submit"><i class="la la-search"></i></button>
                    </form>
                </div><!--search-bar end-->
                <nav>
                    <ul>
                        <li>
                            <a href="Home.jsp" title="">
                                <span><img src="Home/images/icon1.png" alt=""></span>
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="User Profile.jsp" title="">
                                <span><img src="Home/images/icon4.png" alt=""></span>
                                Profiles
                            </a>
                            <ul>
                                <li><a href="User Profile.jsp" title="">User profile</a></li>
                                <li><a href="Profile setting.jsp" title="">Profile setting</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="Help Center.jsp" title="">
                                <span><img src="Home/images/icon5.png" alt=""></span>
                                Help center
                            </a>
                        </li>
                        <li>
                            <a href="Message.jsp" title="">
                                <span><img src="Home/images/icon5.png" alt=""></span>
                                Message
                            </a>
                        </li>
                        <li>
                            <a href="#" title="" class="not-box-open">
                                <span><img src="Home/images/icon7.png" alt=""></span>
                                Notification
                            </a>
                            <div class="notification-box noti" id="notification">
                                <div class="nt-title">
                                    <h4>Setting</h4>
                                    <a href="#" title="">Clear all</a>
                                </div>
                                <div class="nott-list">
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="Home/images/resources/ny-img1.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="Home/images/resources/ny-img2.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="Home/images/resources/ny-img3.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="notfication-details">
                                        <div class="noty-user-img">
                                            <img src="Home/images/resources/ny-img2.png" alt="">
                                        </div>
                                        <div class="notification-info">
                                            <h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
                                            <span>2 min ago</span>
                                        </div><!--notification-info -->
                                    </div>
                                    <div class="view-all-nots">
                                        <a href="#" title="">View All Notification</a>
                                    </div>
                                </div><!--nott-list end-->
                            </div><!--notification-box end-->
                        </li>
                    </ul>
                </nav><!--nav end-->
                <div class="menu-btn">
                    <a href="#" title=""><i class="fa fa-bars"></i></a>
                </div><!--menu-btn end-->
                <div class="user-account">
                    <div class="user-info">
                        <img src="Home/images/resources/user.png" alt="">
                        <a href="#" title="">John</a>
                        <i class="la la-sort-down"></i>
                    </div>
                    <div class="user-account-settingss">
                        <h3>Online Status</h3>
                        <ul class="on-off-status">
                            <li>
                                <div class="fgt-sec">
                                    <input type="radio" name="cc" id="c5">
                                    <label for="c5">
                                        <span></span>
                                    </label>
                                    <small>Online</small>
                                </div>
                            </li>
                            <li>
                                <div class="fgt-sec">
                                    <input type="radio" name="cc" id="c6">
                                    <label for="c6">
                                        <span></span>
                                    </label>
                                    <small>Offline</small>
                                </div>
                            </li>
                        </ul>
                        <h3>Custom Status</h3>
                        <div class="search_form">
                            <form>
                                <input type="text" name="search">
                                <button type="submit">Ok</button>
                            </form>
                        </div><!--search_form end-->
                        <h3>Setting</h3>
                        <ul class="us-links">
                            <li><a href="profile-account-setting.html" title="">Account Setting</a></li>
                            <li><a href="#" title="">Privacy</a></li>
                            <li><a href="#" title="">Faqs</a></li>
                            <li><a href="#" title="">Terms & Conditions</a></li>
                        </ul>
                        <h3 class="tc"><a href="sign-in.html" title="">Logout</a></h3>
                    </div><!--user-account-settingss end-->
                </div>
            </div><!--header-data end-->
        </div>
    </header><!--header end-->


    <section class="cover-sec">
        <img src="Home/images/about.png" alt="">
    </section>


    <main>
        <div class="main-section">
            <div class="container">
                <div class="main-section-data">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="main-left-sidebar">
                                <div class="user_profile">
                                    <div class="user-pro-img">
                                        <img src="Home/images/resources/user-pro-img.png" alt="">
                                    </div><!--user-pro-img end-->
                                    <div class="user_pro_status">
                                        <ul class="flw-hr">
                                            <li><a style="cursor: pointer;" onclick="myFunction()" title="" class="flww" id="follow"><i class="la la-plus"></i> Follow</a></li>

                                        </ul>
                                        <ul class="flw-status">
                                            <li>
                                                <span >Following</span>
                                                <b >
                                                    <%out.print(customer.getFollwing());%>
                                                </b>
                                            </li>
                                            <li>
                                                <span>Followers</span>
                                                <b id="following">
                                                    <%out.print(customer.getFollwers());%>
                                                </b>
                                            </li>
                                        </ul>



                                    </div><!--user_pro_status end-->
                                    <ul class="social_links">
                                        <li><a href="#" title=""><i class="la la-globe"></i> www.example.com</a></li>
                                        <li><a href="#" title=""><i class="fa fa-facebook-square"></i> Http://www.facebook.com/john...</a></li>
                                        <li><a href="#" title=""><i class="fa fa-twitter"></i> Http://www.Twitter.com/john...</a></li>
                                        <li><a href="#" title=""><i class="fa fa-google-plus-square"></i> Http://www.googleplus.com/john...</a></li>
                                        <li><a href="#" title=""><i class="fa fa-behance-square"></i> Http://www.behance.com/john...</a></li>
                                        <li><a href="#" title=""><i class="fa fa-pinterest"></i> Http://www.pinterest.com/john...</a></li>
                                        <li><a href="#" title=""><i class="fa fa-instagram"></i> Http://www.instagram.com/john...</a></li>
                                        <li><a href="#" title=""><i class="fa fa-youtube"></i> Http://www.youtube.com/john...</a></li>
                                    </ul>
                                </div><!--user_profile end-->

                            </div><!--main-left-sidebar end-->
                        </div>
                        <div class="col-lg-6">
                            <div class="main-ws-sec">
                                <div class="user-tab-sec">
                                    <h3><%=(String)session.getAttribute("name")%></h3>
                                    <div class="star-descp">
                                        <span>Requester/Responser</span>
                                    </div><!--star-descp end-->
                                    <div class="tab-feed">
                                        <ul>
                                            <li data-tab="feed-dd" class="active">
                                                <a href="#" title="">
                                                    <img src="Home/images/ic1.png" alt="">
                                                    <span>Feed</span>
                                                </a>
                                            </li>
                                            <li data-tab="info-dd">
                                                <a href="#" title="">
                                                    <img src="Home/images/ic2.png" alt="">
                                                    <span>Info</span>
                                                </a>
                                            </li>
                                            <li data-tab="portfolio-dd">
                                                <a href="#" title="">
                                                    <img src="Home/images/ic3.png" alt="">
                                                    <span>Portfolio</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div><!-- tab-feed end-->
                                </div><!--user-tab-sec end-->

                                <div class="product-feed-tab current" id="feed-dd">
                                    <div class="posts-section">



                                        <%for(int i=posts.size()-1;i>=0;i--){%>
                                        <div class="post-bar">
                                            <div class="post_topbar">
                                                <div class="usy-dt">
                                                    <img src="Home/images/resources/us-pic.png" alt="">
                                                    <div class="usy-name">
                                                        <form action="ServletProfile" method="post"/>
                                                            <h3 id=""><%out.print(posts.get(i).getCustomerName());%></h3>
                                                        </input>
                                                        <span><img src="Home/images/clock.png" alt=""><%out.print(posts.get(i).getPostingDate());%></span>
                                                    </div>
                                                </div>
                                                <div class="ed-opts">
                                                    <a href="#" title="" class="ed-opts-open"><i class="la la-ellipsis-v"></i></a>
                                                    <ul class="ed-options">
                                                        <li><a href="#" title="">Edit Post</a></li>
                                                        <li><a href="#" title="">Unsaved</a></li>
                                                        <li><a href="#" title="">Unbid</a></li>
                                                        <li><a href="#" title="">Close</a></li>
                                                        <li><a href="#" title="">Hide</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="epi-sec">
                                                <ul class="descp">
                                                    <li><img src="Home/images/icon8.png" alt=""><span><%out.print(posts.get(i).getCountryFrom());%></span></li>
                                                    <li><img src="Home/images/icon9.png" alt=""><span><%out.print(posts.get(i).getCountryTo());%></span></li>
                                                </ul>
                                                <ul class="bk-links">
                                                    <li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
                                                    <li><a href="Message.jsp" title=""><i class="la la-envelope"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="job_descp">
                                                <h3><%out.print(posts.get(i).getCategory());%></h3>
                                                <br>
                                                <h3><%out.print("-"+posts.get(i).getNameOfPiece());%></h3>
                                                <ul class="job-dt">
                                                    <li><a href="#" title=""><%out.print("Arriving time: "+posts.get(i).getTime());%></a></li>
                                                    <li><span><%out.print("Shipping cost limits: "+posts.get(i).getPrice()+" $");%></span></li>
                                                </ul>
                                                <h3><%out.print(posts.get(i).getDescription());%></h3>
                                                <br>

                                            </div>
                                            <div class="job-status-bar">
                                                <ul class="like-com">
                                                    <li>
                                                        <a href="#"><i class="fas fa-heart"></i> Like</a>
                                                        <img src="Home/images/liked-img.png" alt="">
                                                        <span>25</span>
                                                    </li>
                                                    <li><a href="#" class="com"><i class="fas fa-comment-alt"></i> Comment 15</a></li>
                                                </ul>
                                                <a href="#"><i class="fas fa-eye"></i>Views 50</a>
                                            </div>
                                        </div><!--post-bar end-->
                                        <%}%>



                                        <div class="process-comm">
                                            <div class="spinner">
                                                <div class="bounce1"></div>
                                                <div class="bounce2"></div>
                                                <div class="bounce3"></div>
                                            </div>
                                        </div><!--process-comm end-->
                                    </div><!--posts-section end-->
                                </div><!--product-feed-tab end-->
                                <div class="product-feed-tab" id="info-dd">
                                    <div class="user-profile-ov">
                                        <h3>Overview</h3>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. Nunc eu augue nec arcu efficitur faucibus. Aliquam accumsan ac magna convallis bibendum. Quisque laoreet augue eget augue fermentum scelerisque. Vivamus dignissim mollis est dictum blandit. Nam porta auctor neque sed congue. Nullam rutrum eget ex at maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eget vestibulum lorem.</p>
                                    </div><!--user-profile-ov end-->
                                    <div class="user-profile-ov st2">
                                        <h3>Experience</h3>
                                        <h4>Web designer</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
                                        <h4>UI / UX Designer</h4>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id.</p>
                                        <h4>PHP developer</h4>
                                        <p class="no-margin">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
                                    </div><!--user-profile-ov end-->
                                    <div class="user-profile-ov">
                                        <h3>Education</h3>
                                        <h4>Master of Computer Science</h4>
                                        <span>2015 - 2018</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque tempor aliquam felis, nec condimentum ipsum commodo id. Vivamus sit amet augue nec urna efficitur tincidunt. Vivamus consectetur aliquam lectus commodo viverra. </p>
                                    </div><!--user-profile-ov end-->
                                    <div class="user-profile-ov">
                                        <h3>Location</h3>
                                        <h4>India</h4>
                                        <p>151/4 BT Chownk, Delhi </p>
                                    </div><!--user-profile-ov end-->
                                    <div class="user-profile-ov">
                                        <h3>Skills</h3>
                                        <ul>
                                            <li><a href="#" title="">HTML</a></li>
                                            <li><a href="#" title="">PHP</a></li>
                                            <li><a href="#" title="">CSS</a></li>
                                            <li><a href="#" title="">Javascript</a></li>
                                            <li><a href="#" title="">Wordpress</a></li>
                                            <li><a href="#" title="">Photoshop</a></li>
                                            <li><a href="#" title="">Illustrator</a></li>
                                            <li><a href="#" title="">Corel Draw</a></li>
                                        </ul>
                                    </div><!--user-profile-ov end-->
                                </div><!--product-feed-tab end-->
                                <div class="product-feed-tab" id="portfolio-dd">
                                    <div class="portfolio-gallery-sec">
                                        <h3>Portfolio</h3>
                                        <div class="gallery_pf">
                                            <div class="row">
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img1.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img2.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img3.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img4.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img5.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img6.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img7.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img8.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img9.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                                <div class="col-lg-4 col-md-4 col-sm-6 col-6">
                                                    <div class="gallery_pt">
                                                        <img src="Home/images/resources/pf-img10.jpg" alt="">
                                                        <a href="#" title=""><img src="Home/images/all-out.png" alt=""></a>
                                                    </div><!--gallery_pt end-->
                                                </div>
                                            </div>
                                        </div><!--gallery_pf end-->
                                    </div><!--portfolio-gallery-sec end-->
                                </div><!--product-feed-tab end-->
                            </div><!--main-ws-sec end-->
                        </div>
                        <div class="col-lg-3">
                            <div class="right-sidebar">
                                <div class="message-btn">
                                    <a href="Message.jsp" title=""><i class="fa fa-envelope"></i> Message</a>
                                </div>

                            </div><!--right-sidebar end-->
                        </div>
                    </div>
                </div><!-- main-section-data end-->
            </div>
        </div>
    </main>


    <footer>
        <div class="footy-sec mn no-margin">
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
                <p><img src="Home/images/copy-icon2.png" alt="">Copyright 2019</p>
                <img class="fl-rgt" src="Home/images/logo2.png" alt="">
            </div>
        </div>
    </footer><!--footer end-->


    <div class="overview-box" id="create-portfolio">
        <div class="overview-edit">
            <h3>Create Portfolio</h3>
            <form>
                <input type="text" name="pf-name" placeholder="Portfolio Name">
                <div class="file-submit">
                    <input type="file" name="file">
                </div>
                <div class="pf-img">
                    <img src="Home/images/resources/np.png" alt="">
                </div>
                <input type="text" name="website-url" placeholder="htp://www.example.com">
                <button type="submit" class="save">Save</button>
                <button type="submit" class="cancel">Cancel</button>
            </form>
            <a href="#" title="" class="close-box"><i class="la la-close"></i></a>
        </div><!--overview-edit end-->
    </div><!--overview-box end-->



</div><!--theme-layout end-->



<script type="text/javascript" src="Home/js/jquery.min.js"></script>
<script type="text/javascript" src="Home/js/popper.js"></script>
<script type="text/javascript" src="Home/js/bootstrap.min.js"></script>
<script type="text/javascript" src="Home/lib/slick/slick.min.js"></script>
<script type="text/javascript" src="Home/js/script.js"></script>

<script>
    var b = true;
    function myFunction() {
        <%%>
        if(b)
        {
            var num = parseInt(document.getElementById("following").innerText.toString()) ;
            num+=1;
            document.getElementById("following").innerText = num;
            b= false;
        }
        else
        {
            var num = parseInt(document.getElementById("following").innerText.toString()) ;
            num-=1;
            document.getElementById("following").innerText = num;
            b= true;
        }
    }
</script>
</body>
</html>