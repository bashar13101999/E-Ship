package com.example.Controller;

import Model.Customer;
import Model.DatabaseConnection;
import Model.Post;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "ServletProfile", value = "/ServletProfile")
public class ServletProfile extends HttpServlet
{
    HttpSession session;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        session = request.getSession();
        String a = request.getParameter("link");
        PrintWriter out = response.getWriter();

        List<String> elephantList = fun(a);
        fun1(elephantList,session);
        //out.print(elephantList.size());

        RequestDispatcher RD = request.getRequestDispatcher("Poster profile.jsp");
        RD.forward(request,response);
    }

    public List fun(String name)
    {
        List<String> elephantList = Arrays.asList(name.split(","));
        return elephantList;
    }
    public void fun1(List elephantList, HttpSession session)
    {
        session.setAttribute("id",elephantList.get(0));
        session.setAttribute("name",elephantList.get(1));
        session.setAttribute("email",elephantList.get(2));
        session.setAttribute("password",elephantList.get(3));
        session.setAttribute("address",elephantList.get(4));
        session.setAttribute("phoneNumber",elephantList.get(5));
        session.setAttribute("gender",elephantList.get(6));
        session.setAttribute("brief",elephantList.get(7));
        session.setAttribute("follwers",elephantList.get(8));
        session.setAttribute("follwing",elephantList.get(9));
        session.setAttribute("rate",elephantList.get(10));
    }
}
