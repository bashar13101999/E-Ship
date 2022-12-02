package com.example.Controller;

import Model.*;
import org.apache.zookeeper.Op;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.Enumeration;

@WebServlet(name = "MainServlet", value = "/MainServlet")
public class MainServlet extends HttpServlet
{
    RequestDispatcher RD;
    HttpSession session;
    Customer customer = new Customer();
    String name, email, password, repeatPassword, address, phoneNumber, gender[], emailVerficationCode, phoneVerficationCode;
    public int id;
    public static String emailNew;
    String email2="";
    Post post;
    boolean b = true;
    String arr[];
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        session = request.getSession();
        PrintWriter out = response.getWriter();

         arr = request.getParameterValues("sharedButton");


        if(arr[0].equals("signin"))
        {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            if(email.isEmpty() || password.isEmpty())
            {
                RD = request.getRequestDispatcher("index.jsp");
                RD.forward(request,response);
            }
            if(Operations.isHasACommands(email, password))//To prevent user insert code or commands
            {
                RD = request.getRequestDispatcher("index.jsp");
                RD.forward(request,response);
            }
            if(Operations.checkIfTheUserInDatabase(email, password))
            {
                session.setAttribute("email",email);
                email2 = email;
                customer = Operations.getCustomer(email);
                RD = request.getRequestDispatcher("Home.jsp");
                RD.forward(request,response);
            }
            else
            {
                RD = request.getRequestDispatcher("index.jsp");
                RD.forward(request, response);
            }
        }

        if(arr[0].equals("signup"))
        {
            name = request.getParameter("name");
            email = request.getParameter("email");
            password = request.getParameter("password");
            repeatPassword = request.getParameter("repeat password");
            address = request.getParameter("address");
            gender = request.getParameterValues("gender");

//            if(name.isEmpty() || email.isEmpty() || password.isEmpty() || repeatPassword.isEmpty() || address.isEmpty() || gender == null)
//            {
//
//                RD = request.getRequestDispatcher("index.jsp");
//                RD.forward(request,response);
//            }
//            if(Operations.isHasACommands(name) || Operations.isHasACommands(email) || Operations.isHasACommands(password) ||
//                    Operations.isHasACommands(repeatPassword) || Operations.isHasACommands(address))
//            {
//                RD = request.getRequestDispatcher("Home.jsp");
//                RD.forward(request,response);
//            }
//            if(!Operations.isValidEmail(email))
//            {
//                RD = request.getRequestDispatcher("index.jsp");
//                RD.forward(request,response);
//            }
//            if(!Operations.isValidPassword(password) || !password.equals(repeatPassword))
//            {
//                RD = request.getRequestDispatcher("index.jsp");
//                RD.forward(request,response);
//            }
//            if(!Operations.isValidAddress(address))
//            {
//                RD = request.getRequestDispatcher("index.jsp");
//                RD.forward(request,response);
//            }
//            if(Operations.checkIfTheUserInDatabase(email))
//            {
//                RD = request.getRequestDispatcher("index.jsp");
//                RD.forward(request,response);
//            }

            RD = request.getRequestDispatcher("emailValidation.jsp");
            RD.forward(request,response);



//            out.print("name is: "+name+"<br>"+"email is: "+email+"<br>"+"password is: "+password+"<br>"+
//                      "repeat password is: "+repeatPassword+"<br>"+"address is: "+address+"<br>"+"gender is: "+gender[0]+"<br>");
        }
        else if(arr[0].equals("emailValidation"))
        {
            emailVerficationCode = request.getParameter("emailValidation");

            RD = request.getRequestDispatcher("Phone Number.jsp");
            RD.forward(request,response);
        }
        else if(arr[0].equals("phoneNumber"))
        {
            phoneNumber = request.getParameter("phoneNumber");

            RD = request.getRequestDispatcher("Phone Validation.jsp");
            RD.forward(request,response);
        }
        else if(arr[0].equals("phoneValidation"))
        {
            phoneVerficationCode = request.getParameter("phoneValidation");

            if(true)//if verification code is true
            {
                //RequestDispatcher se = request.getRequestDispatcher();

                customer = new Customer();
                customer.setName(name);
                customer.setEmail(email);
                customer.setPassword(password);
                customer.setAddress(address);
                customer.setPhoneNumber(phoneNumber);
                customer.setGender(gender[0]);
                customer.setEmailVerificationCode(emailVerficationCode);
                customer.setPhoneVerificationCode(phoneVerficationCode);

                session.setAttribute("customer"+(id),customer);

                Operations.insertInCustomer(name,email,password,address,phoneNumber,gender[0],"",0,0);

                emailNew = email;
                RD = request.getRequestDispatcher("index.jsp");
                RD.forward(request,response);
            }
            else
            {
                RD = request.getRequestDispatcher("Phone Validation.jsp");
                RD.forward(request, response);
            }
        }

        else if(arr[0].equals("postButton"))
        {
            String category = request.getParameter("category name");
            String nameOfPiece = request.getParameter("name of piece");
            String countryFrom = request.getParameter("country from");
            String countryTo = request.getParameter("county to");
            String price = request.getParameter("price");
            String time = request.getParameter("time");
            String description = request.getParameter("description");

            if(category.isEmpty() || nameOfPiece.isEmpty() || countryFrom.isEmpty() || countryTo.isEmpty() || price.isEmpty() || time.isEmpty())
            {
                RD = request.getRequestDispatcher("Home.jsp");
                RD.forward(request, response);
            }
            else
            {
                //poster
                //date of posting
                //category
                //name of piece
                //price
                //time or date of arrive
                //country from
                //county to
                //description
                    b= false;
                    Customer c = Operations.getCustomer(customer.getName());
                    //out.print(c);
//                    Operations.insertInPost(Operations.getCustomerName(email2), String.valueOf(Operations.getDate()), category, nameOfPiece, price, countryFrom, countryTo, time, description);
//                    post = new Post("Operations.getCustomerName(email2)", String.valueOf(Operations.getDate()), category, nameOfPiece, price, countryFrom, countryTo, time, description);
//                    Post.add(post);
//                    //arr[0] = "notReload";
//                    session.setAttribute("post", post);
//
//                RD = request.getRequestDispatcher("Home.jsp");
//                RD.forward(request, response);
            }
        }
    }
}
