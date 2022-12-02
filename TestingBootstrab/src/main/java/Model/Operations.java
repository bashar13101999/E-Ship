package Model;

import org.apache.tools.ant.taskdefs.SendEmail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Operations
{
    private static String str;
    public static boolean checkIfTheUserInDatabase(String email, String password)
    {
        try
        {
            ResultSet result = DatabaseConnection.getStatement(DatabaseConnection.getConnection()).executeQuery("select * from Users");

            //ResultSet rr = DatabaseConnection.select();
            while (result.next())
            {
                if(email.equals(result.getString(3)) && password.equals(result.getString(4)))
                {
                    return true;
                }
            }
        }
        catch (SQLException e)
        {
            //
        }
        return false;
    }
    public static boolean checkIfTheUserInDatabase(String email)
    {
        try
        {
            ResultSet result = DatabaseConnection.getStatement(DatabaseConnection.getConnection()).executeQuery("select * from users");

            //ResultSet rr = DatabaseConnection.select();
            while (result.next())
            {
                if(email.equals(result.getString(3)));
                {
                    return true;
                }
            }
        }
        catch (SQLException e)
        {
            //
        }
        return false;
    }
    public static boolean isHasACommands(String email, String password)
    {
        return (email.matches(".*[<>/?*=+]+.*") || password.matches(".*[<>/?*=+]+.*"));
    }
    public static boolean isHasACommands(String str)
    {
        return str.matches(".*[<>/?*=+]+.*");
    }
    public static boolean isValidEmail(String email)
    {
        String regex = "^(.+)@(.+)$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }
    public static boolean isValidPassword(String password)
    {
        return password.matches(".*[a-z]{1,}.*") && password.matches(".*[A-Z]{1,}.*") && password.matches(".*[0-9]{1,}.*")
               && password.matches(".*[!@#$%^]{1,}.*") && password.length() >=6 && password.length()<=20;
    }
    public static boolean isValidAddress(String address)
    {
        // doing it in javascript
        return true;
    }

    //    public static void sendEmail()
//    {
//        SendEmail sm = new SendEmail();
//        //get the 6-digit code
//        String randomCode = sm.get;
//
//        craete new user using all information
//        User user = new User(name,email,code);
//
//        call the send email method
//        boolean test = sm.sendEmail(user);
//
//        check if the email send successfully
//        if(test){
//            HttpSession session  = request.getSession();
//            session.setAttribute("authcode", user);
//            response.sendRedirect("verify.jsp");
//        }else{
//            out.println("Failed to send verification email");
//        }
//    }

    public static void insertInCustomer(String name, String email, String password, String address, String phoneNumber, String gender, String brief, int followers, int following)
    {
        String query = " insert into users (name, email, password, address, phoneNumber, gender, Brief, followers, following)"
                + " values ('"+name+"','"+email+"','"+password+"','"+address+"','"+phoneNumber+"','"+gender+"','"+brief+"','"+followers+"','"+following+"')";
        PreparedStatement preparedStmt = null;
        try
        {
            preparedStmt = DatabaseConnection.getConnection().prepareStatement(query);

            // execute the preparedstatement
            preparedStmt.execute();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }
    public static void insertInPostFollowing()
    {

    }
    public static void insertInPost(String poster, String postingDate, String category, String itemName, String price, String cFrom, String cTo, String arrivingDate, String description)
    {
        String query = " insert into post (poster, postingDate, category, itemName, price, countryFrom, countryTo, arriveingDate, description)"
                + " values ('"+poster+"','"+postingDate+"','"+category+"','"+itemName+"','"+price+"','"+cFrom+"','"+cTo+"','"+arrivingDate+"','"+description+"')";
        PreparedStatement preparedStmt = null;
        try
        {
            preparedStmt = DatabaseConnection.getConnection().prepareStatement(query);

            preparedStmt.execute();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
    }


    public static String select(String str1)
    {
        try
        {
            Connection con = DatabaseConnection.getConnection();
            String sql = "SELECT * FROM AdminstatorTable";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                if(rs.equals(str1))
                {

                }
                str = String.valueOf(rs.getString(str1));
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }
        return str;
    }
    public static void encreption(String userName, String password) {

    }
    public static void decreption(String userName, String password) {

    }


    public static String getDate()
    {
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();

        return dtf.format(now);
    }
    public static int getDate1()
    {
        Calendar rightNow = Calendar.getInstance();
        int hour = rightNow.get(Calendar.HOUR_OF_DAY);
        return hour;
    }

    public static Customer getCustomer(String name)
    {
        Customer customer = new Customer();
        try
        {
            ResultSet result = DatabaseConnection.getStatement(DatabaseConnection.getConnection()).executeQuery("select * from Users");

            while (result.next())
            {
                if(name.equals(result.getString(2)) )
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
        }
        catch (SQLException e)
        {
            //
        }
        return customer;
    }



}
