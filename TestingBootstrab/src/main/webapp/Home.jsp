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
    <link rel="stylesheet" type="text/css" href="Home/css/jquery.mCustomScrollbar.min.css">
    <link rel="stylesheet" type="text/css" href="Home/lib/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="Home/lib/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="Home/css/style.css">
    <link rel="stylesheet" type="text/css" href="Home/css/responsive.css">

    <link rel="stylesheet" type="text/css" href="Home/css/postbutton1.css">
</head>

<body>
<%
    Customer customer = new Customer();
    Post post = null;
    ArrayList<Post> posts = new ArrayList<>();
    try
    {
        String email = (String)session.getAttribute("email");
        ResultSet result = DatabaseConnection.getStatement(DatabaseConnection.getConnection()).executeQuery("select * from users");
        while (result.next())
        {
            String e = result.getString(3);
            if(email.equals(result.getString(3)))
            {
                customer.setName(result.getString(2));
                customer.setEmail(result.getString(3));
                customer.setPassword(result.getString(4));
                customer.setAddress(result.getString(5));
                customer.setPhoneNumber(result.getString(6));
                customer.setGender(result.getString(7));
                customer.setBrief(result.getString(8));
                customer.setFollwers(result.getInt(9));
                customer.setFollwing(result.getInt(10));
                break;
            }
        }

        ResultSet result2 = DatabaseConnection.getStatement(DatabaseConnection.getConnection()).executeQuery("select * from post");
        while (result2.next())
        {
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
    catch (SQLException e){}

    //post = (Post)session.getAttribute("post");
%>

<div class="wrapper">
    <header>
        <div class="container">
            <div class="header-data">
                <div class="logo">
                    <a href="index.jsp" title=""><img src="Home/images/logo.png" alt=""></a>
                </div><!--logo end-->
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
                                <li><a href="User Profile.jsp" title="">User Profile</a></li>
                                <li><a href="Profile setting.jsp" title="">my-profile-feed</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="Help Center.jsp" title="">
                                <span><img src="Home/images/icon2.png" alt=""></span>
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
                        <img src="Home/images/userlogo6.png" alt="">

                        <a href="#" title=""><%out.print(customer.getName());%></a>
                        <i class="la la-sort-down"></i>
                    </div>
                    <div class="user-account-settingss" id="users">



                        <h3 class="tc"><a href="index.jsp" title="">Logout</a></h3>
                    </div><!--user-account-settingss end-->
                </div>
            </div><!--header-data end-->
        </div>
    </header><!--header end-->

    <main>
        <div class="main-section">
            <div class="container">
                <div class="main-section-data">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 pd-left-none no-pd">
                            <div class="main-left-sidebar no-margin">
                                <div class="user-data full-width">
                                    <div class="user-profile">
                                        <div class="username-dt">
                                            <div class="usr-pic">
                                                <img src="Home/images/resources/user-pro-img.png" alt="">
                                            </div>
                                        </div><!--username-dt end-->
                                        <div class="user-specs">
                                            <h3><%out.print(customer.getName());%></h3>
                                            <h3><%out.print(customer.getBrief());%></h3>
                                        </div>
                                    </div><!--user-profile end-->
                                    <ul class="user-fw-status">
                                        <li>
                                            <h4>Following</h4>
                                            <span><%out.print(customer.getFollwing());%></span>
                                        </li>
                                        <li>
                                            <h4>Followers</h4>
                                            <span><%out.print(customer.getFollwers());%></span>
                                        </li>
                                        <li>
                                            <a href="User Profile.jsp" title="">View Profile</a>
                                        </li>
                                    </ul>
                                </div><!--user-data end-->

                                <div class="tags-sec full-width">
                                    <ul>
                                        <li><a href="Help Center.jsp" title="">Help Center</a></li>
                                        <li><a href="#" title="">About</a></li>
                                        <li><a href="#" title="">Privacy Policy</a></li>
                                        <li><a href="#" title="">Community Guidelines</a></li>
                                        <li><a href="#" title="">Cookies Policy</a></li>
                                        <li><a href="#" title="">Career</a></li>
                                        <li><a href="#" title="">Language</a></li>
                                        <li><a href="#" title="">Copyright Policy</a></li>
                                    </ul>
                                    <div class="cp-sec">
                                        <img src="Home/images/logo2.png" alt="">
                                        <p><img src="Home/images/cp.png" alt="">Copyright 2019</p>
                                    </div>
                                </div><!--tags-sec end-->
                            </div><!--main-left-sidebar end-->
                        </div>
                        <div class="col-lg-6 col-md-8 no-pd">
                            <div class="main-ws-sec">
                                <div class="post-topbar">
                                    <div class="post-st">
                                        <ul>
                                            <li>


                                            <button class="post-jb active">
                                                <div class="svg-wrapper-1">
                                                    <div class="svg-wrapper">
                                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="24" height="24">
                                                            <path fill="none" d="M0 0h24v24H0z"></path>
                                                            <path fill="currentColor" d="M1.946 9.315c-.522-.174-.527-.455.01-.634l19.087-6.362c.529-.176.832.12.684.638l-5.454 19.086c-.15.529-.455.547-.679.045L12 14l6-8-8 6-8.054-2.685z"></path>
                                                        </svg>
                                                    </div>
                                                </div>
                                                <span>Post</span>
                                            </button>


                                            </li>
                                        </ul>
                                    </div><!--post-st end-->
                                </div><!--post-topbar end-->
                                <div class="posts-section">


                                <%for(int i=posts.size()-1;i>=0;i--){%>
                                    <div class="post-bar">
                                        <div class="post_topbar">
                                            <div class="usy-dt">
                                                <img src="Home/images/resources/us-pic.png" alt="">
                                                <div class="usy-name">
                                                    <form action="ServletProfile" method="post"/>
                                                        <button style="background-color: transparent;outline: none;" type="submit" name="link" value="<%=Operations.getCustomer(posts.get(i).getCustomerName())%>">
                                                            <h3 id=""><%out.print(posts.get(i).getCustomerName());%></h3>
                                                        </button>
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

                                    <div class="top-profiles">
                                        <div class="pf-hd">
                                            <h3>Top Profiles</h3>
                                            <i class="la la-ellipsis-v"></i>
                                        </div>
                                        <div class="profiles-slider">
                                            <div class="user-profy">
                                                <img src="Home/images/resources/user1.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="#" title="" class="followw">Follow</a></li>
                                                    <li><a href="#" title="" class="envlp"><img src="Home/images/envelop.png" alt=""></a></li>
                                                    <li><a href="#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="Home/images/resources/user2.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="#" title="" class="followw">Follow</a></li>
                                                    <li><a href="#" title="" class="envlp"><img src="Home/images/envelop.png" alt=""></a></li>
                                                    <li><a href="#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="Home/images/resources/user3.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="#" title="" class="followw">Follow</a></li>
                                                    <li><a href="#" title="" class="envlp"><img src="Home/images/envelop.png" alt=""></a></li>
                                                    <li><a href="#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="Home/images/resources/user1.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="#" title="" class="followw">Follow</a></li>
                                                    <li><a href="#" title="" class="envlp"><img src="Home/images/envelop.png" alt=""></a></li>
                                                    <li><a href="#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="Home/images/resources/user2.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="#" title="" class="followw">Follow</a></li>
                                                    <li><a href="#" title="" class="envlp"><img src="Home/images/envelop.png" alt=""></a></li>
                                                    <li><a href="#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                            <div class="user-profy">
                                                <img src="Home/images/resources/user3.png" alt="">
                                                <h3>John Doe</h3>
                                                <span>Graphic Designer</span>
                                                <ul>
                                                    <li><a href="#" title="" class="followw">Follow</a></li>
                                                    <li><a href="#" title="" class="envlp"><img src="Home/images/envelop.png" alt=""></a></li>
                                                    <li><a href="#" title="" class="hire">hire</a></li>
                                                </ul>
                                                <a href="#" title="">View Profile</a>
                                            </div><!--user-profy end-->
                                        </div><!--profiles-slider end-->
                                    </div><!--top-profiles end-->
                                    <div class="post-bar">
                                        <div class="post_topbar">
                                            <div class="usy-dt">
                                                <img src="Home/images/resources/us-pic.png" alt="">
                                                <div class="usy-name">
                                                    <h3>John Doe</h3>
                                                    <span><img src="Home/images/clock.png" alt="">3 min ago</span>
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
                                                <li><img src="Home/images/icon8.png" alt=""><span>Epic Coder</span></li>
                                                <li><img src="Home/images/icon9.png" alt=""><span>India</span></li>
                                            </ul>
                                            <ul class="bk-links">
                                                <li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
                                                <li><a href="#" title=""><i class="la la-envelope"></i></a></li>
                                                <li><a href="#" title="" class="bid_now">Bid Now</a></li>
                                            </ul>
                                        </div>
                                        <div class="job_descp">
                                            <h3>Senior Wordpress Developer</h3>
                                            <ul class="job-dt">
                                                <li><a href="#" title="">Full Time</a></li>
                                                <li><span>$30 / hr</span></li>
                                            </ul>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus hendrerit metus, ut ullamcorper quam finibus at. Etiam id magna sit amet... <a href="#" title="">view more</a></p>
                                            <ul class="skill-tags">
                                                <li><a href="#" title="">HTML</a></li>
                                                <li><a href="#" title="">PHP</a></li>
                                                <li><a href="#" title="">CSS</a></li>
                                                <li><a href="#" title="">Javascript</a></li>
                                                <li><a href="#" title="">Wordpress</a></li>
                                            </ul>
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
                                    <div class="posty">
                                        <div class="post-bar no-margin">
                                            <div class="post_topbar">
                                                <div class="usy-dt">
                                                    <img src="Home/images/resources/us-pc2.png" alt="">
                                                    <div class="usy-name">
                                                        <h3>John Doe</h3>
                                                        <span><img src="Home/images/clock.png" alt="">3 min ago</span>
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
                                                    <li><img src="Home/images/icon8.png" alt=""><span>Epic Coder</span></li>
                                                    <li><img src="Home/images/icon9.png" alt=""><span>India</span></li>
                                                </ul>
                                                <ul class="bk-links">
                                                    <li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
                                                    <li><a href="#" title=""><i class="la la-envelope"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="job_descp">
                                                <h3>Senior Wordpress Developer</h3>
                                                <ul class="job-dt">
                                                    <li><a href="#" title="">Full Time</a></li>
                                                    <li><span>$30 / hr</span></li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus hendrerit metus, ut ullamcorper quam finibus at. Etiam id magna sit amet... <a href="#" title="">view more</a></p>
                                                <ul class="skill-tags">
                                                    <li><a href="#" title="">HTML</a></li>
                                                    <li><a href="#" title="">PHP</a></li>
                                                    <li><a href="#" title="">CSS</a></li>
                                                    <li><a href="#" title="">Javascript</a></li>
                                                    <li><a href="#" title="">Wordpress</a></li>
                                                </ul>
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
                                        <div class="comment-section">
                                            <a href="#" class="plus-ic">
                                                <i class="la la-plus"></i>
                                            </a>
                                            <div class="comment-sec">
                                                <ul>
                                                    <li>
                                                        <div class="comment-list">
                                                            <div class="bg-img">
                                                                <img src="Home/images/resources/bg-img1.png" alt="">
                                                            </div>
                                                            <div class="comment">
                                                                <h3>John Doe</h3>
                                                                <span><img src="Home/images/clock.png" alt=""> 3 min ago</span>
                                                                <p>Lorem ipsum dolor sit amet, </p>
                                                                <a href="#" title="" class="active"><i class="fa fa-reply-all"></i>Reply</a>
                                                            </div>
                                                        </div><!--comment-list end-->
                                                        <ul>
                                                            <li>
                                                                <div class="comment-list">
                                                                    <div class="bg-img">
                                                                        <img src="Home/images/resources/bg-img2.png" alt="">
                                                                    </div>
                                                                    <div class="comment">
                                                                        <h3>John Doe</h3>
                                                                        <span><img src="Home/images/clock.png" alt=""> 3 min ago</span>
                                                                        <p>Hi John </p>
                                                                        <a href="#" title=""><i class="fa fa-reply-all"></i>Reply</a>
                                                                    </div>
                                                                </div><!--comment-list end-->
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <div class="comment-list">
                                                            <div class="bg-img">
                                                                <img src="Home/images/resources/bg-img3.png" alt="">
                                                            </div>
                                                            <div class="comment">
                                                                <h3>John Doe</h3>
                                                                <span><img src="Home/images/clock.png" alt=""> 3 min ago</span>
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam luctus hendrerit metus, ut ullamcorper quam finibus at.</p>
                                                                <a href="#" title=""><i class="fa fa-reply-all"></i>Reply</a>
                                                            </div>
                                                        </div><!--comment-list end-->
                                                    </li>
                                                </ul>
                                            </div><!--comment-sec end-->
                                            <div class="post-comment">
                                                <div class="cm_img">
                                                    <img src="Home/images/resources/bg-img4.png" alt="">
                                                </div>
                                                <div class="comment_box">
                                                    <form>
                                                        <input type="text" placeholder="Post a comment">
                                                        <button type="submit">Send</button>
                                                    </form>
                                                </div>
                                            </div><!--post-comment end-->
                                        </div><!--comment-section end-->
                                    </div><!--posty end-->
                                    <div class="process-comm">
                                        <div class="spinner">
                                            <div class="bounce1"></div>
                                            <div class="bounce2"></div>
                                            <div class="bounce3"></div>
                                        </div>
                                    </div><!--process-comm end-->
                                </div><!--posts-section end-->



                            </div><!--main-ws-sec end-->
                        </div>
                        <div class="col-lg-3 pd-right-none no-pd">
                            <div class="right-sidebar">
                                <div class="widget widget-about">
                                    <img src="Home/images/logo1.png" alt="">
                                    <span>Speed and inexpensive</span>

                                </div><!--widget-about end-->

                            </div><!--right-sidebar end-->
                        </div>
                    </div>
                </div><!-- main-section-data end-->
            </div>
        </div>
    </main>

    <div class="post-popup job_post">
        <div class="post-project">
            <h3>Post a job</h3>
            <div class="post-project-fields">
                <form action="MainServlet" method="post">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="inp-field">
                                <select name="category name">
                                    <option>Category</option>
                                    <option>Electronic</option>
                                    <option>Accessories</option>
                                    <option>Clothes</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <input type="text" name="name of piece" placeholder="name of piece/free space">
                        </div>


                        <div class="col-lg-6">
                            <div class="inp-field">
                                <select style="width: 200px" name="country from">
                                    <option>County from</option>
                                    <option>Jordan</option>
                                    <option>Canada</option>
                                    <option>Sweden</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="inp-field">
                                <select style="width: 200px" name="county to">
                                    <option>County to</option>
                                    <option>Jordan</option>
                                    <option>Canada</option>
                                    <option>Sweden</option>
                                </select>
                            </div>
                        </div>


                        <div class="col-lg-6">
                            <div class="price-br">
                                <input type="text" name="price" placeholder="price">
                                <i class="la la-dollar"></i>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="inp-field">
                                <input type="text" name="time" placeholder="time">
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <textarea name="description" placeholder="Description (optional)"></textarea>
                        </div>
                        <div class="col-lg-12">
                            <ul>
                                <li><button class="active" type="submit" name="sharedButton" value="postButton">Post</button></li>
                                <li><a href="#" title="">Cancel</a></li>
                            </ul>
                        </div>
                    </div>
                </form>
            </div><!--post-project-fields end-->

            <a href="#" title=""><i class="la la-times-circle-o"></i></a>
        </div><!--post-project end-->
    </div><!--post-project-popup end-->



    <div class="chatbox-list">
        <div class="chatbox">

            <div class="conversation-box">
                <div class="con-title mg-3">
                    <div class="chat-user-info">
                        <img src="Home/images/resources/us-img1.png" alt="">
                        <h3>John Doe <span class="status-info"></span></h3>
                    </div>
                    <div class="st-icons">
                        <a href="#" title=""><i class="la la-cog"></i></a>
                        <a href="#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
                        <a href="#" title="" class="close-chat"><i class="la la-close"></i></a>
                    </div>
                </div>
                <div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                    <div class="date-nd">
                        <span>Sunday, August 24</span>
                    </div>
                    <div class="chat-msg st2">
                        <p>Cras ultricies ligula.</p>
                        <span>5 minutes ago</span>
                    </div>
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                </div><!--chat-list end-->
                <div class="typing-msg">
                    <form>
                        <textarea placeholder="Type a message here"></textarea>
                        <button type="submit"><i class="fa fa-send"></i></button>
                    </form>
                    <ul class="ft-options">
                        <li><a href="#" title=""><i class="la la-smile-o"></i></a></li>
                        <li><a href="#" title=""><i class="la la-camera"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-paperclip"></i></a></li>
                    </ul>
                </div><!--typing-msg end-->
            </div><!--chat-history end-->
        </div>
        <div class="chatbox">

            <div class="conversation-box">
                <div class="con-title mg-3">
                    <div class="chat-user-info">
                        <img src="Home/images/resources/us-img1.png" alt="">
                        <h3>John Doe <span class="status-info"></span></h3>
                    </div>
                    <div class="st-icons">
                        <a href="#" title=""><i class="la la-cog"></i></a>
                        <a href="#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
                        <a href="#" title="" class="close-chat"><i class="la la-close"></i></a>
                    </div>
                </div>
                <div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                    <div class="date-nd">
                        <span>Sunday, August 24</span>
                    </div>
                    <div class="chat-msg st2">
                        <p>Cras ultricies ligula.</p>
                        <span>5 minutes ago</span>
                    </div>
                    <div class="chat-msg">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor eget felis porttitor.</p>
                        <span>Sat, Aug 23, 1:10 PM</span>
                    </div>
                </div><!--chat-list end-->
                <div class="typing-msg">
                    <form>
                        <textarea placeholder="Type a message here"></textarea>
                        <button type="submit"><i class="fa fa-send"></i></button>
                    </form>
                    <ul class="ft-options">
                        <li><a href="#" title=""><i class="la la-smile-o"></i></a></li>
                        <li><a href="#" title=""><i class="la la-camera"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-paperclip"></i></a></li>
                    </ul>
                </div><!--typing-msg end-->
            </div><!--chat-history end-->
        </div>
        <div class="chatbox">

            <div class="conversation-box">
                <div class="con-title">
                    <h3>Messages</h3>
                    <a href="#" title="" class="close-chat"><i class="la la-minus-square"></i></a>
                </div>
                <div class="chat-list">
                    <div class="conv-list active">
                        <div class="usrr-pic">
                            <img src="Home/images/resources/usy1.png" alt="">
                            <span class="active-status activee"></span>
                        </div>
                        <div class="usy-info">
                            <h3>John Doe</h3>
                            <span>Lorem ipsum dolor <img src="Home/images/smley.png" alt=""></span>
                        </div>
                        <div class="ct-time">
                            <span>1:55 PM</span>
                        </div>
                        <span class="msg-numbers">2</span>
                    </div>
                    <div class="conv-list">
                        <div class="usrr-pic">
                            <img src="Home/images/resources/usy2.png" alt="">
                        </div>
                        <div class="usy-info">
                            <h3>John Doe</h3>
                            <span>Lorem ipsum dolor <img src="Home/images/smley.png" alt=""></span>
                        </div>
                        <div class="ct-time">
                            <span>11:39 PM</span>
                        </div>
                    </div>
                    <div class="conv-list">
                        <div class="usrr-pic">
                            <img src="Home/images/resources/usy3.png" alt="">
                        </div>
                        <div class="usy-info">
                            <h3>John Doe</h3>
                            <span>Lorem ipsum dolor <img src="Home/images/smley.png" alt=""></span>
                        </div>
                        <div class="ct-time">
                            <span>0.28 AM</span>
                        </div>
                    </div>
                </div><!--chat-list end-->
            </div><!--conversation-box end-->
        </div>
    </div><!--chatbox-list end-->

</div><!--theme-layout end-->



<script type="text/javascript" src="Home/js/jquery.min.js"></script>
<script type="text/javascript" src="Home/js/popper.js"></script>
<script type="text/javascript" src="Home/js/bootstrap.min.js"></script>
<script type="text/javascript" src="Home/js/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="Home/lib/slick/slick.min.js"></script>
<script type="text/javascript" src="Home/js/scrollbar.js"></script>
<script type="text/javascript" src="Home/js/script.js"></script>

</body>
</html>