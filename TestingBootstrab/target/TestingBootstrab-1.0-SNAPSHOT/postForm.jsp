<%@ page import="Model.Customer" %>
<%@ page import="com.example.Controller.MainServlet" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="Model.DatabaseConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="Model.Post" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<%
    Customer customer = new Customer();
    Post post = null;
    ArrayList<Post> posts = new ArrayList<>();
    try
    {
        ResultSet result1 = DatabaseConnection.getStatement(DatabaseConnection.getConnection()).executeQuery("select * from post");
        while (result1.next())
        {
            post = new Post();
            post.setCustomerName(result1.getString(1));
            post.setPostingDate(result1.getString(2));
            post.setCategory(result1.getString(3));
            post.setNameOfPiece(result1.getString(4));
            post.setPrice(result1.getString(5));
            post.setCountryFrom(result1.getString(6));
            post.setCountryTo(result1.getString(7));
            post.setTime(result1.getString(8));
            post.setDescription(result1.getString(9));
            posts.add(post);
        }
    }
    catch (SQLException e){}

    post = (Post)session.getAttribute("post");
%>

<div class="post-bar">
    <div class="post_topbar">
        <div class="usy-dt">
            <img src="Home/images/resources/us-pic.png" alt="">
            <div class="usy-name">
                <h3><%out.print(posts.get(i).getNameOfPiece());%></h3>
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
</body>
</html>
